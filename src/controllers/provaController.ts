import { Request, Response } from 'express';
import * as provaService from '../services/provaService';

async function postProva(req: Request, res: Response){
    try{
        await provaService.postProva(req.body);
        return res.sendStatus(200);
    }catch(error){
        res.sendStatus(500);
    }
}

async function getProvas(req: Request, res: Response){
    try{
        const resposta = await provaService.getProvas();
        return res.send(resposta);
    } catch(error){
        res.sendStatus(500);
    }
}
export{
    postProva,
    getProvas, 
} 