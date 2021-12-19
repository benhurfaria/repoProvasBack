import { Router } from 'express';
import * as cursoController from '../controllers/cursoController';

const router = Router();

router.get("/disciplina", cursoController.getCourse);
router.post("/curso", cursoController.getCourseProf);

export default router;