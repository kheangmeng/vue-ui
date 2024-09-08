<script setup lang="ts">
import { ref, reactive, defineAsyncComponent, hydrateOnVisible } from 'vue'
import BaseSelect from '@/components/BaseSelect.vue'
const LoginForm = defineAsyncComponent({
  loader: () => import('@/components/LoginForm.vue'),
  hydrate: hydrateOnVisible()
})

const loginForm = reactive<{ username: string; password: string }>({
  username: '',
  password: ''
})
function handleSubmit(e: Event) {
  e.preventDefault()
  alert(`username: ${loginForm.username}, password: ${loginForm.password}`)
}

const firstSelect = ref('')
const secondSelect = ref('')
const firstSource = ref<string[]>(['a1', 'b1', 'c1'])
const secondSource = ref<string[]>(['a2', 'b2', 'c2'])

const action = ref('')
</script>

<template>
  <main>
    <BaseSelect v-model="firstSelect" :data-source="firstSource" />
    <BaseSelect v-model="secondSelect" :data-source="secondSource" />
    <button @click="action = 'login'">Login</button>

    <form @submit="handleSubmit" v-if="action === 'login'">
      <h1>Login Form</h1>
      <LoginForm v-model:username="loginForm.username" v-model:password="loginForm.password" />
      <button type="submit">Submit</button>
    </form>
  </main>
</template>
