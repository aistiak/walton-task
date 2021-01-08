<template>
    <div class="frame-container comp-3">
        this is component 3 
    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    },

    mounted(){
        this.setObserver()
    },

    methods : {
        setObserver(){
            let options = {
                root : null , //document.querySelector('comp-3'),
                rootMargin: '0px' ,
                threshold : 0.7 ,
            }
            let observer = new IntersectionObserver(function(entries,observer){
                entries.forEach(entry => {
                    console.log(entry)
                    entry.isIntersecting ?  
                    entry.target.classList.add('tst') : entry.target.classList.remove('tst')
                })
            }, options);

            let target = document.querySelector('.comp-3')
            observer.observe(target)

        },

        
    }
}
</script>
<style scoped>
    .comp-3{
        background: rgb(194, 235, 213);
        transition-property: background;
        transition-duration: 2s;
        transition-timing-function: linear;
        /* transition-delay: s; */
    }
    .tst {
        background: red;
    }
</style>
