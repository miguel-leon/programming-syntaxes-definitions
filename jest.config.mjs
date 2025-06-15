/** @type {import('jest').Config} */

import { createDefaultPreset, pathsToModuleNameMapper } from 'ts-jest';


const tsconfig = './tsconfig.test.json';
const tsJestPreset = createDefaultPreset({ tsconfig });
const { default: { compilerOptions } } = await import(tsconfig, { with: { type: 'json' } });

export default {
	testEnvironment: 'node',
	...tsJestPreset,
	moduleNameMapper: pathsToModuleNameMapper(compilerOptions.paths, { prefix: '<rootDir>/' })
};
