# Typescript Jest Docker Base
 A starter environment for Typescript projects with automated tests using Jest.

If you have Node installed on your system, you can run this directly with npm commands (found in package.json), or you can use the Docker environment to get up an running on any system.

## Getting Started
### Docker Commands
All the required Docker commands can be found in `makefile`.

**Develop**
```
make develop
```
This command will build and run your docker container, with `index.ts` as an entry file. Saving changes to any working file will immediately restart your script for easy debugging. This is provided by the popular package, [nodemon](https://nodemon.io/).

**Testing**
```
make test
```
This command will run your test files found in `./spec`. One simple test has been set up to illustrate the feature.

```
make test_develop
```
 Similar to `watch develop`, a change to any working file, including your test files, will rerun the test suite.

 **Other Docker Commands**
 
 The makefile includes a few other command that can be run.
 ```
 make run c="[COMMAND]"
 ```
 This allows you to run commands inside the docker container. If you don't have Node installed locally, you can run things like `make run c="npm update"` (update your project's dependencies). 

 ```
 make build
 ```
 All makefile commands will rebuild the Docker container if necessary, but you can run this command manually if needed. 

 ### With Node
 **Development**

 First, install your dependencies with
 ```
 npm install
 ```
 Then start your development server. 
 ```
 npm run develop
 ```
**Testing**

Run tests with
```
npm run test
```
Develop with live-reloading tests with
```
npm run test:dev
```
