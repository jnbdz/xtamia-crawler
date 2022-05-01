<template>
    <div class="off-canvas position-right" id="offCanvas" data-off-canvas>
        <ul class="sidebar-menu" data-close="offCanvas">
        <li><router-link to="/" exact>Dashboard</router-link></li>
        <li><span></span></li>
        <li><router-link to="/help" exact>Help</router-link></li>
        <li><router-link to="/settings" exact>Settings</router-link></li>
        </ul>          
    </div>
</template>

<script>
/*import { defineComponent } from '@vue/composition-api'

export default defineComponent({
    setup() {
        
    },
})*/
</script>

<style lang="scss" scoped>  
  // Chrome Reset 
  a:focus {
    outline: none;
  }

  .logo, .logo a {
    color: $white;
    font-weight: normal;
    background-color: inherit;
  }

  .top-bar,.top-bar ul {
    background-color: #41b883;
  }

  li a.menu-button {
    border-radius: 20px;
    padding-left: 1.5rem;
    padding-right: 1.5rem; 
    font-weight: 600;
    text-transform: uppercase;
    display: inline-block;
    float: right;
  }

  .content-wrapper {
    padding: 0.75rem 0;
  }

  .sidebar-menu {
    @include menu-base();
    @include menu-direction(vertical);
    a {
      color: $secondary-color;
      font-weight: normal;
    }
    a.active {
      font-weight: 600;
      color: $primary-color;
    }
  }

  .app-menu li span {
    border: 2px solid grey;
  }
</style>