import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('disciplina')
export default class ProfessorEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  nome: string;
}
