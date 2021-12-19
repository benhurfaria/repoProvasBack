import { Router } from 'express';
import * as professorController from '../controllers/professorController';

const router = Router();

router.get("/professores", professorController.getTeachers);

export default router;