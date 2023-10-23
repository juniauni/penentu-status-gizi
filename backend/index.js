import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/Database.js";
import SequelizeStore from "connect-session-sequelize";
import UserRoute from "./routes/UserRoute.js";
import ToddlerRoute from "./routes/ToddlerRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
import TestRoute from "./routes/TestRoute.js";
dotenv.config();

const app = express();

const sessionStore = SequelizeStore(session.Store);

const store = new sessionStore({
    db: db
});

// (async()=>{
//     await db.sync();
// })();

// mendefinisikan session
app.use(session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
        // use http became false, use https became true
        secure: 'auto'
    }
}));

app.use(cors({
    // front end dapat mengirimkan request beserta cookie menyertakan credentialnya
    credentials: true,
    // domain yang dapat mengakses api, domain yang digunakan adalah domain front end, port 3000 itu default port untuk react
    origin: 'http://localhost:3000'
}));

// agar dapat menerima data dalam format json
app.use(express.json());
app.use(UserRoute);
app.use(ToddlerRoute);
app.use(AuthRoute);
app.use(TestRoute);

// store.sync();

app.listen(process.env.APP_PORT, ()=> {
    console.log('Server up and running...');
});