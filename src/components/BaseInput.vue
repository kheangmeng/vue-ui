<script setup lang="ts">
type inputType = 'text' | 'number' | 'password' | 'textarea' | 'search' | 'url' | 'email' | 'tel'
interface Props {
  placeholder?: string
  label?: string
  disabled?: boolean
  type?: inputType
}
withDefaults(defineProps<Props>(), {
  label: 'Input value',
  placeholder: 'Enter Input value',
  type: 'text'
})
const model = defineModel<string | number | null | undefined>()
</script>
<template>
  <input
    v-model="model"
    :placeholder="placeholder"
    :label="label"
    :disabled="disabled"
    :type="type"
  />
</template>
