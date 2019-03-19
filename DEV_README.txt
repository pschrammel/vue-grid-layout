# Prepare

you need jq installed and bash
```
apt-get install jq
```

Checkout the repository and build the image

```
cd vue-grid-layout
bin/build
```

# Run the container 

```
bin/container_exec /code/bin/run
```

and browse to http://localhost:4001/

# Workaround
if you see a "problem" like 
```
 Cannot find module '@babel/preset-env/data/built-ins.json' ()
```

open node_modules/@vue/babel-preset-app/index.js  (might have to do this as
root) and replace "@babel/preset-env" by "babel-preset-env" in the lines
17/18/19. Stop the container and start it again. 
