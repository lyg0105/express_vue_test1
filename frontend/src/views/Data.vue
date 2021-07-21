<template>
  <div>
    <h1>Data Page</h1>
    {{people[0].name}}
    <div v-for="persion in people" :key="persion.name">
      <p>{{persion.name}}</p>
      <p>{{persion.age}}</p>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
//import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Data',
  data(){
    return {
      people:[
        {name:"a",age:20},
        {name:"b",age:22},
        {name:"c",age:23},
      ]
    }
  },
  methods:{

  },
  watch:{
    
  }
}
</script>

<style>

</style>