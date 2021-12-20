import { getRepository, getManager } from "typeorm";
import ProfessorEntity from "../entities/ProfessorEntity";

export async function getTeachers(){
    const teachers = await getRepository(ProfessorEntity).find({
        select: ['id', 'nome'],
    });
    return teachers;
}

export async function getCurso(disciplina: string){
    const cursos = await await getManager().query(
        `SELECT professor.id AS id, professor.nome AS nome FROM professor JOIN discprof ON professor.id = discprof."idProfessor" JOIN disciplina ON disciplina.id=discprof."idDisciplina" WHERE disciplina.nome = $1;`,[disciplina]
      );
      return cursos;
}