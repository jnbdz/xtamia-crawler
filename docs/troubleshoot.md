# Troubleshoot

## Node/npm/yarn issues

### npm ERR! Error: EACCES: permission denied
This error is caused by npm trying to add a node library in: `/usr/lib/node_modules/`

Here is a solution: 
```bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
```
There are other solutions in the source.

**Source:** https://stackoverflow.com/questions/35954725/error-eacces-permission-denied-when-trying-to-install-eslint-using-npm

## SASS, CSS, Styles
### Import a Sass File into Every Vue Component in an App

In the `vue.config.js` I added (for sass-loader): 

For version 7 or less: 
```javascript
module.exports = {
  css: {
    loaderOptions: {
      sass: {
        data: `@import "@/styles/_variables.scss";`
      }
    }
  }
};
```

Version 8: 
```javascript
module.exports = {
  css: {
    loaderOptions: {
      sass: {
        prependData: `@import "@/styles/_variables.scss";`
      }
    }
  }
};
```

Version 9: 
```javascript
module.exports = {
  css: {
    loaderOptions: {
      sass: {
        additionalData: `@import "@/styles/_variables.scss";`
      }
    }
  }
};
```

**Sources:** 
- https://css-tricks.com/how-to-import-a-sass-file-into-every-vue-component-in-an-app/
- https://vue-loader.vuejs.org/guide/pre-processors.html
- https://cli.vuejs.org/guide/css.html#passing-options-to-pre-processor-loaders