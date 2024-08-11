<script setup lang="ts">
import BaseInput from '@/components/BaseInput.vue'

const username = defineModel('username', { default: '' })
const password = defineModel('password', { default: '' })
</script>

<template>
  <BaseInput v-model="username" />
  <BaseInput v-model="password" type="password" />
</template>
