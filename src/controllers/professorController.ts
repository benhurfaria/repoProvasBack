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

export{ 
    getTeachers,
} 