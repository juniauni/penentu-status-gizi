import User from "../models/UserModel.js";
import argon2 from "argon2";

// Fungsi getUsers: Mengambil daftar pengguna
export const getUsers = async (req, res) => {
    try {
        // Mengambil daftar pengguna dengan atribut yang diinginkan
        const response = await User.findAll({
            attributes: ['uuid', 'name', 'email', 'role']
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};

// Fungsi getUserById: Mengambil informasi pengguna berdasarkan ID
export const getUserById = async (req, res) => {
    try {
        // Mencari pengguna berdasarkan UUID yang diberikan
        const response = await User.findOne({
            attributes: ['uuid', 'name', 'email', 'role'],
            where: {
                uuid: req.params.id
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({ msg: error.message });
    }
};

// Fungsi createUser: Membuat pengguna baru
export const createUser = async (req, res) => {
    const { name, email, password, confPassword, role } = req.body;
    if (password !== confPassword) {
        return res.status(400).json({ msg: "Kata sandi dan konfirmasi kata sandi tidak cocok" });
    }
    const hashPassword = await argon2.hash(password);
    try {
        // Membuat pengguna baru dengan informasi yang diberikan
        await User.create({
            name: name,
            email: email,
            password: hashPassword,
            role: role
        });
        res.status(201).json({ msg: "Pendaftaran berhasil!" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
};

// Fungsi updateUser: Memperbarui informasi pengguna
export const updateUser = async (req, res) => {
    const user = await User.findOne({
        where: {
            uuid: req.params.id
        }
    });
    if (!user) {
        return res.status(404).json({ msg: "Data pengguna tidak ditemukan!" });
    }
    const { name, email, password, confPassword, role } = req.body;
    let hashPassword;
    if (password === "" || password === "null") {
        hashPassword = user.password;
    } else {
        hashPassword = await argon2.hash(password);
    }
    if (password !== confPassword) {
        return res.status(400).json({ msg: "Kata sandi dan konfirmasi kata sandi tidak cocok" });
    }
    try {
        // Memperbarui informasi pengguna berdasarkan ID yang diberikan
        await User.update({
            name: name,
            email: email,
            password: hashPassword,
            role: role
        }, {
            where: {
                id: user.id
            }
        });
        res.status(200).json({ msg: "Data pengguna diperbarui!" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
};

// Fungsi deleteUser: Menghapus pengguna
export const deleteUser = async (req, res) => {
    const user = await User.findOne({
        where: {
            uuid: req.params.id
        }
    });
    if (!user) {
        return res.status(404).json({ msg: "Data pengguna tidak ditemukan!" });
    }
    try {
        // Menghapus pengguna berdasarkan ID yang diberikan
        await User.destroy({
            where: {
                id: user.id
            }
        });
        res.status(200).json({ msg: "Data pengguna terhapus!" });
    } catch (error) {
        res.status(400).json({ msg: error.message });
    }
};
