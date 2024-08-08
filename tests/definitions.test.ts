import { readdirSync } from 'fs';
import { readFile } from 'fs/promises';
import { resolve, extname } from 'path';
import { Transmutation } from 'spliceation-transmutator.typescript';


describe('Language definitions', () => {
	const inputsDir = 'inputs/';
	const outputsDir = 'outputs/';

	const inputs = readdirSync(resolve(__dirname, inputsDir));

	test.each(
		inputs.map(
			input => [
				input.replace(/\..*/, ''),
				input
			]
		).filter(
			([name]) => name.match(/^/i)
		)
	)('Transmuted output for language: %s (%s).', async (language, inputFile) => {
		const transmutation = new Transmutation(
			Transmutation.fromJSON(await import(`../definitions/${ language }.definition.json`))
		);

		const input = (await readFile(resolve(__dirname, inputsDir, inputFile))).toString();

		const result = transmutation.apply(input, transmuter);

		const output = (await readFile(resolve(__dirname, outputsDir, inputFile.replace(extname(inputFile), '.html')))).toString();

		expect(result).toBe(output);
	});
});

function transmuter(_class: string, content: string) {
	return `<${ _class }>${ content }</${ _class }>`;
}
