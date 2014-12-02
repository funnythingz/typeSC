# typeSC

[![GitHub version](https://badge.fury.io/gh/funnythingz%2FtypeSC.svg)](http://badge.fury.io/gh/funnythingz%2FtypeSC)
[![Build Status](https://travis-ci.org/funnythingz/typeSC.svg)](https://travis-ci.org/funnythingz/typeSC)
[![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)

This is Project Template for TypeScript & Sass/Compass.

## Getting Started

Install Grunt Plugin

```shell
% npm install
```

Install definition files from tsd

```
% tsd query chai -a -s install
% tsd query mocha -a -s install
% tsd query should -a -s install
```

### Directory

#### Dev

```shell
src
├── html
│   └── index.html
├── scss
│   └── style.scss
└── ts
    └── oop.ts
```

#### build

```shell
build
├── app.js
├── app.min.js
├── index.html
└── style.css
```

### grunt task

#### compile build & open & watch

```shell
% grunt
```

#### build only

```shell
% grunt build
```

### Test

testem install

```
% sudo npm install -g testem
```

run

```
% testem
```

access to `http://localhost:7357/`

&copy; funnythingz
