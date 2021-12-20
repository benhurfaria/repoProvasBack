import {
    Entity,
    PrimaryGeneratedColumn,
    Column,
    OneToOne,
    JoinColumn,
  } from 'typeorm';

import CategoriaEntity from './CategoriaEntity';
import ProfessorEntity from './ProfessorEntity';
import CursoEntity from './CursoEntity';

@Entity('prova')
export default class ProvaEntity{
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    name: string;

    @OneToOne(()=> CategoriaEntity, {eager: true})
    @JoinColumn({name: "idCategoria"})
    categoria: CategoriaEntity;

    @OneToOne(()=>CursoEntity, {eager: true})
    @JoinColumn({name: "idDisciplina"})
    disciplina: CursoEntity;

    @OneToOne(()=>ProfessorEntity,{eager: true})
    @JoinColumn({name: "idProfessor"})
    professor: ProfessorEntity;

    @Column()
    url: string;
}