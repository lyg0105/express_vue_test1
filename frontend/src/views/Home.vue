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
    <div>
      <select class="form-control" v-model="region" @change="changeRegion">
        <option :key="i" :value="d.v" v-for="(d,i) in options">{{d.t}}</option>
      </select>
    </div>

    <table v-if="tableShow">
      <tr :key="i" v-for="(d,i) in options">
        <td>{{d.v}}</td>
        <td>{{d.t}}</td>
      </tr>
    </table>
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
      input1:"abcd",
      options:[
        {v:"S",t:"Seoul"},
        {v:"J",t:"JeJu"},
        {v:"B",t:"Busan"},
      ],
      region:"B",
      tableShow:true
    }
  },
  watch:{
    input1(){
      console.log(this.input1);
    }
  },
  methods:{
    getData(){
      alert(this.input1);
    },
    setData(){
      this.input1="12345";
    },
    changeRegion(){
      alert(this.region);
    }
  },
  beforeCreate(){
    console.log("beforeCreate");
  },
  created(){
    console.log("created");
  },
  beforeMount(){
    console.log("beforeMount");
  },
  mounted(){
    console.log("mounted");
  },
  beforeUpdate(){
    //console.log("beforeUpdate");
  },
  updated(){
    // console.log("updated");
  }
}
</script>
