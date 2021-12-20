import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('categoria')
export default class CategoriaEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;
}
