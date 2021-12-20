import { Router } from "express";
import * as provaController from '../controllers/provaController';

const router = Router();

router.post('/prova',provaController.postProva);
router.get('/prova', provaController.getProvas);
export default router;