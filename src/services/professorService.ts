import { getRepository } from "typeorm";
import ProfessorEntity from "../entities/ProfessorEntity";

export async function getTeachers(){
    const teachers = await getRepository(ProfessorEntity).find({
        select: ['id', 'nome'],
    });
    return teachers;
}

