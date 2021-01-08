<template>
    <div class="frame-container comp-2">
        <div class="text ">
            <h1>Durable 180 Hinge </h1>
            <p>
                With its 180 hinge the EX30 Pro can be laid falt on the table to share content with friends and colleauges . its<br>
                unique , durable hinge design has benn subjects to a gruelling 20,000 cycle in open-and-close tests .
            </p>
        </div>

    </div>
</template>
<script>
export default {
    data(){
        return {

        }
    },

    mounted() {
        this.setObserver()
    },

    methods : {

        setObserver(){
             let options = {
                root : null , //document.querySelector('comp-3'),
                rootMargin: '0px' ,
                threshold : .2,
            }
            let observer = new IntersectionObserver(function(entries,observer){
                
                entries.forEach(function(entry) {
                     
                    if(entry.isIntersecting){
                        // entry.target.classList.add('text-animate')
                        // this.startAnimation()
                        document.querySelector('.comp-2 > .text').classList.add('text-animate')
                    }else{
                        // entry.target.classList.remove('text-animate')
                        // this.cur = '3'
                        document.querySelector('.comp-2 > .text').classList.remove('text-animate')
                    }
                }.bind(this))
            }.bind(this), options);

            let target = document.querySelector('.comp-2')
            observer.observe(target)           
        }

    },




}
</script>
<style scoped>

.comp-2 > .text{
    color:white;
    opacity:0%;
    /* transition: opacity ;
    transition-duration: 2s; */

}
 .text-animate {
    
    /* opacity : 100%; */
    animation: text_animation ;
    animation-duration: 4s;
    animation-fill-mode: forwards;
}
@keyframes text_animation {
    
    from {
        opacity:20%;
        transform: translateY(200px);
    }

    to {
        opacity:100%;
        transform: translateY(0px);
    }
}

</style>