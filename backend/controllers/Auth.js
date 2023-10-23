import User from "../models/UserModel.js";
import argon2 from "argon2";

// Fungsi Login: Mengautentikasi pengguna saat login
export const Login = async (req, res) => {
    try {
        // Mencari pengguna berdasarkan email yang diberikan
        const user = await User.findOne({
            where: {
                email: req.body.email
            }
        });

        // Jika pengguna tidak ditemukan, mengirimkan respon dengan pesan kesalahan
        if (!user) {
            return res.status(404).json({ msg: "Pengguna tidak ditemukan!" });
        }

        // Memverifikasi kata sandi pengguna dengan menggunakan argon2
        const match = await argon2.verify(user.password, req.body.password);

        // Jika kata sandi tidak cocok, mengirimkan respon dengan pesan kesalahan
        if (!match) {
            return res.status(400).json({ msg: "Kata sandi salah!" });
        }

        // Menyimpan UUID, nama, email, dan peran pengguna dalam variabel
        const { uuid, name, email, role } = user;

        // Menyimpan UUID pengguna dalam sesi
        req.session.userId = uuid;

        // Mengirimkan respon dengan UUID, nama, email, dan peran pengguna
        res.status(200).json({ uuid, name, email, role });
    } catch (error) {
        // Menangkap dan mengirimkan respon jika terjadi kesalahan server
        res.status(500).json({ msg: "Terjadi kesalahan server." });
    }
};

// Fungsi Me: Mengambil data pengguna yang sedang login
export const Me = async (req, res) => {
    try {
        // Memeriksa apakah ada sesi pengguna yang aktif
        if (!req.session.userId) {
            return res.status(401).json({ msg: "Mohon masuk ke akun Anda!" });
        }

        // Mencari pengguna berdasarkan UUID dalam sesi
        const user = await User.findOne({
            attributes: ['uuid', 'name', 'email', 'role'],
            where: {
                uuid: req.session.userId
            }
        });

        // Jika pengguna tidak ditemukan, mengirimkan respon dengan pesan kesalahan
        if (!user) {
            return res.status(404).json({ msg: "Pengguna tidak ditemukan!" });
        }

        // Mengirimkan respon dengan informasi pengguna
        res.status(200).json(user);
    } catch (error) {
        // Menangkap dan mengirimkan respon jika terjadi kesalahan server
        res.status(500).json({ msg: "Terjadi kesalahan server." });
    }
};

// Fungsi logOut: Menghapus sesi pengguna saat logout
export const logOut = (req, res) => {
    // Menghapus sesi pengguna
    req.session.destroy((err) => {
        if (err) {
            // Jika terjadi kesalahan dalam menghapus sesi
            return res.status(400).json({ msg: "Tidak dapat keluar!" });
        }
        
        // Mengirimkan respon bahwa pengguna telah keluar
        res.status(200).json({ msg: "Anda telah keluar!" });
    });
};
