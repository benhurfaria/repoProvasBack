import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('disciplina')
export default class CursoEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  nome: string;
}
