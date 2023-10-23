import express from "express";
import { 
    getTests,
    getTestById,
    createTest,
    updateTest,
    deleteTest
 } from "../controllers/Tests.js";
 import { verifyUser } from "../middleware/AuthUser.js";

const router = express.Router();

router.get('/tests', verifyUser, getTests);
router.get('/tests/:id', verifyUser, getTestById);
router.post('/tests', verifyUser, createTest);
router.patch('/tests/:id', verifyUser, updateTest);
router.delete('/tests/:id', verifyUser, deleteTest);

export default router;
// verifyUser