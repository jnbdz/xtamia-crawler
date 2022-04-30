<template>
    <div id="crawler-form">
        <form>
            <input type="text" name="url"/>
            <input type="submit" name="submit-url" value="Crawl"/>
        </form>
        <p class="h1">Lorem Ipsum Dolor</p>
        <p class="h2">Lorem Ipsum Dolor</p>
        <p class="h3">Lorem Ipsum Dolor</p>
        <p class="h4">Lorem Ipsum Dolor</p>
        <p class="h5">Lorem Ipsum Dolor</p>
        <p class="h6">Lorem Ipsum Dolor</p>
    </div>

    <form>
    <div class="grid-container">
        <div class="grid-x grid-padding-x">
        <div class="medium-6 cell">
            <label>Input Label
            <input type="text" placeholder=".medium-6.cell">
            </label>
        </div>
        <div class="medium-6 cell">
            <label>Input Label
            <input type="text" placeholder=".medium-6.cell">
            </label>
        </div>
        </div>
    </div>
    </form>
</template>

<script>
/*import { defineComponent } from '@vue/composition-api'

export default defineComponent({
    setup() {
        
    },
})*/
</script>

<style lang="scss" scoped>
@import "~foundation-sites/scss/foundation.scss";
@include foundation-everything;
@import "@/styles/_variables.scss";

.h1 {
    color: $primary;
}

input {
    width: 100%;
}
</style>