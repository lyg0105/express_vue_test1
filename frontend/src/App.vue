<template>
  <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link> |
    <router-link to="/data">Data</router-link>
  </div>
  <router-view/>
</template>

<style>
@import url("/css/basic.css");
</style>
