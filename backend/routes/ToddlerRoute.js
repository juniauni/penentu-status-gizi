import express from "express";
import { 
    getToddlers,
    getToddlerById,
    createToddler,
    updateToddler,
    deleteToddler
 } from "../controllers/Toddlers.js";
 import { verifyUser, adminOnly } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/toddlers',verifyUser, adminOnly, getToddlers);
router.get('/toddlers/:id',verifyUser, adminOnly, getToddlerById);
router.post('/toddlers',verifyUser, adminOnly, createToddler);
router.patch('/toddlers/:id',verifyUser, adminOnly, updateToddler);
router.delete('/toddlers/:id',verifyUser, adminOnly, deleteToddler);

export default router;
// //verifyUser, adminOnly, 