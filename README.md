# IHP Backend ReScript Starter

## Usage

### Install

On first start install the npm dependencies:

```bash
npm install
```

### BACKEND_URL

Set the `BACKEND_URL` in `.env` to your project's url:

```bash
# .env
BACKEND_URL=https://REPLACE ME.di1337.com
```

### Type Definitions

Before you can start to code with ReScript, you need to install the type bindings for IHP Backend. For that open your
IHP Backend Project, click `SCHEMA` -> `Type Definitions` and then run the `npm install` command listed there for ReScript types.

![](https://ihpbackend.digitallyinduced.com/Guide/TypeScript/project-types.png)

### Run

After this you can start the web server and the compiler:

```bash
# Start compiler
npm run rescript:dev

# Start server, Run this in a second terminal window
npm run dev
```
