<script setup lang="ts">
import { reactive } from 'vue'
// import TheWelcome from '../components/TheWelcome.vue'
import LoginForm from '@/components/LoginForm.vue'

const loginForm = reactive<{ username: string; password: string }>({
  username: '',
  password: ''
})
function handleSubmit(e: Event) {
  e.preventDefault()
  alert(`username: ${loginForm.username}, password: ${loginForm.password}`)
}
</script>

<template>
  <main>
    <!-- <TheWelcome /> -->
    <form @submit="handleSubmit">
      <LoginForm v-model:username="loginForm.username" v-model:password="loginForm.password" />
      <button type="submit">Submit</button>
    </form>
  </main>
</template>
