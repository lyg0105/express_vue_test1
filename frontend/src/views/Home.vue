<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
    <h1>{{title}}</h1>
    <div>
      <input type="text" v-model="input1" />
      <button type="button" @click="getData" >Get</button>
      <button type="button" @click="setData" >Set</button>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
//import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Home',
  components: {
    //HelloWorld
  },
  data(){
    return {
      title:"개발자!!",
      input1:"abcd"
    }
  },
  methods:{
    getData(){
      alert(this.input1);
    },
    setData(){
      this.input1="12345";
    }
  },
  beforeCreate(){

  },
  created(){

  },
  beforeMount(){

  },
  mounted(){

  }
}
</script>
