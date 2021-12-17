<template>
    <div>

        
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
    html, body{
  margin: 0;
}

body{
  text-align: center;
}

.slide-controller:nth-child(1):checked ~ .slide-show .slides-list{--selected-item: 0;}
.slide-controller:nth-child(2):checked ~ .slide-show .slides-list{--selected-item: 1;}
.slide-controller:nth-child(3):checked ~ .slide-show .slides-list{--selected-item: 2;}
.slide-controller:nth-child(4):checked ~ .slide-show .slides-list{--selected-item: 3;}

.slide-show{
  overflow: hidden;
}

.slides-list{
  --selected-item: 0;
  --total-items: 4;
  list-style-type: none;
  margin: 10px 0;
  padding: 0;
  position: relative;
  left: calc(var(--selected-item) * -100%);
  width: calc(var(--total-items) * 100%);
  transition: left 0.4s cubic-bezier(0.680, -0.550, 0.265, 1.550);
  
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
</style>