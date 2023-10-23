import User from "../models/UserModel.js";

// Fungsi verifyUser: Memverifikasi pengguna yang sedang login
export const verifyUser = async (req, res, next) => {
    try {
        // Memeriksa apakah ada sesi pengguna yang aktif
        if (!req.session.userId) {
            return res.status(401).json({ msg: "Mohon bergabung ke akun Anda!" });
        }

        // Mencari pengguna berdasarkan UUID dalam sesi
        const user = await User.findOne({
            where: {
                uuid: req.session.userId
            }
        });

        // Jika pengguna tidak ditemukan, mengirimkan respon dengan pesan kesalahan
        if (!user) {
            return res.status(404).json({ msg: "Pengguna tidak ditemukan!" });
        }

        // Menyimpan ID dan peran pengguna dalam req object
        req.userId = user.id;
        req.role = user.role;

        // Melanjutkan eksekusi ke middleware berikutnya
        next();
    } catch (error) {
        // Menangkap dan mengirimkan respon jika terjadi kesalahan server
        res.status(500).json({ msg: "Terjadi kesalahan server." });
    }
};

// Fungsi adminOnly: Memeriksa apakah pengguna adalah admin
export const adminOnly = async (req, res, next) => {
    try {
        // Mencari pengguna berdasarkan UUID dalam sesi
        const user = await User.findOne({
            where: {
                uuid: req.session.userId
            }
        });

        // Jika pengguna tidak ditemukan, mengirimkan respon dengan pesan kesalahan
        if (!user) {
            return res.status(404).json({ msg: "Pengguna tidak ditemukan!" });
        }

        // Memeriksa apakah pengguna memiliki peran admin
        if (user.role !== "admin") {
            return res.status(403).json({ msg: "Akses tertolak!" });
        }

        // Melanjutkan eksekusi ke middleware berikutnya
        next();
    } catch (error) {
        // Menangkap dan mengirimkan respon jika terjadi kesalahan server
        res.status(500).json({ msg: "Terjadi kesalahan server." });
    }
};
