const deps = require('./package.json').peerDependencies;

const re = new RegExp(`(?:${ Object.keys(deps).join('|') })`);

module.exports = (request, options) => {
	return request.match(re) || (!request.startsWith('.') && options.basedir.match(re)) ?
		require.resolve(request, { paths: [options.basedir] }) :
		options.defaultResolver(request, options);
};
