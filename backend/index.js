import express from "express";
import db from "./config/Database.js";
import dotenv from "dotenv";
import cookieParser from "cookie-parser";
import cors from 'cors';
// import Users from "./models/UserModel.js";
import router from "./routes/Index.js";
dotenv.config();
const app = express();

try {
    await db.authenticate();
    console.log("database connected.. ");
    //   await Users.sync();
} catch (error) {
    console.error(error);
}

app.use(cors({ credentials: true, origin: 'http://localhost:3000' }));
app.use(cookieParser());
app.use(express.json());
app.use(router);

app.listen(5000, () => console.log("Server running on Port 5000"));