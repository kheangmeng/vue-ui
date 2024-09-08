import { reactive } from 'vue'

export const useSelectSource = reactive<{ items: string[] }>({
  items: ['Apple', 'Banana', 'Carrot']
})
