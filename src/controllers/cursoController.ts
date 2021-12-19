import { Request, Response } from "express";
import * as cursoService from '../services/cursoService';

async function getCourse(req: Request, res: Response){
    try{
        const curso = await cursoService.getCourse();
        res.send(curso);
    }catch(error){
        res.sendStatus(500);
    }
}

async function getCourseProf(req: Request, res: Response){
    const {
        professor,
    } = req.body;
    try{
        const curso = await cursoService.getCourseProf(professor);
        res.send(curso);
    } catch(error){
        res.sendStatus(500);
    }
}

export{
    getCourse,
    getCourseProf,
}