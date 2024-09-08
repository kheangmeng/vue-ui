<script setup lang="ts">
import { watch } from 'vue'
interface Props {
  placeholder?: string
  label?: string
  disabled?: boolean
  dataSource?: string[]
}

const {
  label = 'Input value',
  placeholder = 'Enter Input value',
  dataSource
} = defineProps<Props>()
const model = defineModel<string | number | null | undefined>()

watch(
  () => dataSource,
  (value) => {
    if (value && value.length) {
      console.log('data source:', value)
    }
  }
)
</script>
<template>
  <select v-model="model" :placeholder="placeholder" :label="label" :disabled="disabled">
    <option v-for="item in dataSource" :key="item">
      {{ item }}
    </option>
  </select>
</template>
