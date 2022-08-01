
<template>
  <search-input v-bind="$attrs" :request-options="searchOptions" :response-callback="responseCallback" v-on="$listeners">
    <slot />
  </search-input>
</template>

<script>
import SearchInput from '@/components/SearchInput'

export default {
  name: 'UserInput',
  components: {
    SearchInput
  },
  computed: {
    searchOptions() {
      return {
        url: '/platform/list/user',
        method: 'post',
        data: {
          user_name: this.$attrs.value,
          page_no: 0,
          page_size: 0
        }
      }
    }
  },
  methods: {
    responseCallback({ data }) {
      return data.users.map(item => ({
        value: item.user_name,
        name: item.user_name
      }))
    }
  }
}
</script>

<style>

</style>
