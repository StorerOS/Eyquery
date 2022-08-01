

<template>
  <el-col v-bind="defaultAttrs" v-on="$listeners">
    <slot />
  </el-col>
</template>

<script>
import _ from 'lodash'

export default {
  name: 'FormItemLayout',
  computed: {
    defaultAttrs() {
      const defaultAttribute = {
        sm: 12,
        md: 8,
        lg: 6
      }
      return _.assign(defaultAttribute, this.$attrs)
    }
  }

}
</script>

<style>

</style>
