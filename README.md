This repository is made to reproduce what seems to be a bug with the NPM package [v8-debug](https://www.npmjs.com/package/v8-debug) when running Node 6.x.x in Docker. Please follow the steps below.

**Prerequisites**

- [Docker](https://docs.docker.com/v1.8/installation)

**1. Clone repository**
```
git clone https://github.com/sqren/v8-debug-debug.git
```

**2. Build docker image from Dockerfile:**
```
docker build .
```

**3. The Docker build fails with the following error:**
```
npm info lifecycle v8-debug@0.7.7~install: v8-debug@0.7.7

> v8-debug@0.7.7 install /node_modules/v8-debug
> node-pre-gyp install --fallback-to-build

module.js:442
    throw err;
    ^

Error: Cannot find module 'nopt'
    at Function.Module._resolveFilename (module.js:440:15)
    at Function.Module._load (module.js:388:25)
    at Module.require (module.js:468:17)
    at require (internal/module.js:20:19)
    at Object.<anonymous> (/node_modules/node-pre-gyp/lib/node-pre-gyp.js:14:12)
    at Module._compile (module.js:541:32)
    at Object.Module._extensions..js (module.js:550:10)
    at Module.load (module.js:458:32)
    at tryModuleLoad (module.js:417:12)
    at Function.Module._load (module.js:409:3)
npm info lifecycle v8-debug@0.7.7~install: Failed to exec install script
npm WARN v8-debug-debug@1.0.0 No repository field.
npm WARN v8-debug-debug@1.0.0 No license field.
npm ERR! Linux 4.4.12-boot2docker
npm ERR! argv "/usr/local/bin/node" "/usr/local/bin/npm" "install"
npm ERR! node v6.3.0
npm ERR! npm  v3.10.3
npm ERR! code ELIFECYCLE

npm ERR! v8-debug@0.7.7 install: `node-pre-gyp install --fallback-to-build`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the v8-debug@0.7.7 install script 'node-pre-gyp install --fallback-to-build'.
npm ERR! Make sure you have the latest version of node.js and npm installed.
npm ERR! If you do, this is most likely a problem with the v8-debug package,
npm ERR! not with npm itself.
npm ERR! Tell the author that this fails on your system:
npm ERR!     node-pre-gyp install --fallback-to-build
npm ERR! You can get information on how to open an issue for this project with:
npm ERR!     npm bugs v8-debug
npm ERR! Or if that isn't available, you can get their info via:
npm ERR!     npm owner ls v8-debug
npm ERR! There is likely additional logging output above.

npm ERR! Please include the following file with any support request:
npm ERR!     /npm-debug.log
The command '/bin/sh -c npm install' returned a non-zero code: 1
```
