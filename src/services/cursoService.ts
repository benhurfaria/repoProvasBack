import { getRepository, getManager } from 'typeorm';
import CursoEntity from '../entities/CursoEntity';

export async function getCourse() {
  const curso = await getRepository(CursoEntity).find({
    select: ['id', 'nome'],
  });
  return curso;
}

export async function getCourseProf(professor: string) {
  const curso = await getManager().query(
    `SELECT disciplina.nome AS nome FROM professor JOIN discprof ON professor.id = discprof."idProfessor" JOIN disciplina ON disciplina.id=discprof."idDisciplina" WHERE professor.nome = $1;`,[professor]
  );
  return curso;
}
