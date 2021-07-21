<template>
  <div class="about">
    <h1>This is an about page</h1>
    <div>
      <span>여러 줄을 가지는 메시지:</span>
      <p style="white-space: pre-line;">{{ message }}</p>
      <br />
      <textarea v-model="message" placeholder="여러줄을 입력해보세요"></textarea>
    </div>
  </div>
</template>
<script>
// @ is an alias to /src
// import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'Home',
  data(){
    return {
      message:""
    }
  }
}
</script>