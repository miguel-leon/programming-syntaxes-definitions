import { resolve } from 'path';
import { readdirSync } from 'fs';


const basedir = resolve(__dirname, 'definitions');
const files = readdirSync(basedir).map(file => resolve(basedir, file));

export default files;
