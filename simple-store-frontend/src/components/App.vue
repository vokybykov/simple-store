<template>
  <div id="app">
    <nav class="navbar navbar-dark bg-dark">
        <h5 class="navbar-brand" href="#">Simple Store</h5>
        <router-link to='/goods'>Goods</router-link>
    </nav>
    <router-view />
  </div>
</template>

<script>
export default {
}
</script>