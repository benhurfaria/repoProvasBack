import { getRepository } from 'typeorm';
import ProvaEntity from '../entities/ProvaEntity';

export async function postProva(prova: ProvaEntity){
    await getRepository(ProvaEntity).insert(prova);
}
