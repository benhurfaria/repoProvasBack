import { Router } from "express";
import * as provaController from '../controllers/provaController';

const router = Router();

router.post('/prova',provaController.postProva);

export default router;