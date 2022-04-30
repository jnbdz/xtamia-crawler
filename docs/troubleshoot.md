# Troubleshoot

## Node/npm/yarn issues

### npm ERR! Error: EACCES: permission denied
This error is caused by npm trying to add a node library in: `/usr/lib/node_modules/`

Here is a solution: 
```bash
mkdir ~/.npm-global                                                                                                                          243 ⨯
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
```
There are other solutions in the source.

**Source:** https://stackoverflow.com/questions/35954725/error-eacces-permission-denied-when-trying-to-install-eslint-using-npm
