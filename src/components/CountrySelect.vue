<template>
    <div>
       <select v-model="selected" 
       @change="onChange"
       class="form-select mt-10 block w-full border p-3 rounded">
           <option value="0">Select Country</option>
           <option v-for="country in countries" :value="country.ID" :key="country.id">
               {{country.Country}}
           </option>
       </select>
    </div>
</template>
<script>
export default {
    name:'CountrySelect',
    props:['countries'],
    data(){
        return{
            selected: 0
        }
    },
    methods:{
        onChange(){
            const country= this.countries.find((item)=>item.ID === this.selected)
            this.$emit('select-country',country)
        }
    }
}
</script>