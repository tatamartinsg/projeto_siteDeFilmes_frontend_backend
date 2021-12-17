<template>
    <div>
        <!-- <input type="radio" class="btn-check slide-controller checked" name="slide" id="option1" autocomplete="off"/>
        <input type="radio" class="btn-check slide-controller" name="slide" id="option2" autocomplete="off"/>
        <input type="radio" class="btn-check slide-controller" name="slide" id="option3" autocomplete="off"/>
        <input type="radio" class="btn-check slide-controller" name="slide" id="option4" autocomplete="off"/>
      
        <label class="btn btn-secondary" for="option2">1</label>
         <label class="btn btn-secondary" for="option2">2</label>
          <label class="btn btn-secondary" for="option2">3</label>
            <label class="btn btn-secondary" for="option2">4</label> -->
        
    </div>
</template>

<script>
export default{
    data(){
        return{
            isActiveShow: false,
            isActiveList: false
        }
    },
    methods:{
        clicou(){
            this.isActiveShow = true;
            this.isActiveList = true;
        }
    }
}
</script>

<style scoped>

</style>