<template>
  <AppMenu/>
  <HelloWorld msg="Welcome to XTamia"/>
</template>

<script>
import AppMenu from './components/AppMenu.vue'
import HelloWorld from './components/CrawlerForm.vue'

import $ from 'jquery';
//import WhatInput from 'what-input/dist/what-input.min';
import Foundation from 'foundation-sites/dist/js/foundation.min';

export default {
  name: 'App',
  components: {
    AppMenu,
    HelloWorld
  },
  mounted() {
    this.offCanvas = new Foundation.OffCanvas($('#offCanvas'));
  },
}
</script>

<style lang="scss">
html, body {
  margin: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
