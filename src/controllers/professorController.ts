import { Request, Response } from "express";
import * as professorService from '../services/professorService';

async function getTeachers(req: Request, res: Response){
    try{
        const teachers = await professorService.getTeachers();
        res.send(teachers);
    } catch (error){
        res.sendStatus(500);
    }
}
async function getCurso(req: Request, res: Response){
    const {
        disciplina
    } = req.body;
    try{
        const curso = await professorService.getCurso(disciplina);
        res.send(curso);
    }catch(error){
        res.sendStatus(500);
    }
}
export{ 
    getTeachers,
    getCurso,
} 