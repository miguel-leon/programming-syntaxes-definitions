module.exports = {
	preset: 'ts-jest',
	testEnvironment: 'node',
	resolver: '<rootDir>/jest.resolver.js',
	globals: {
		'ts-jest': {
			tsconfig: {
				esModuleInterop: true,
				resolveJsonModule: true
			}
		}
	}
};
