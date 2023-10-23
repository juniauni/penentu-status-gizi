import { Sequelize } from "sequelize";

// Inisialisasi objek Sequelize untuk koneksi database
const db = new Sequelize( 'nutrition_db', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;
