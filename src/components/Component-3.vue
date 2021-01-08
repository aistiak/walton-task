<template>
    <div class="frame-container comp-3">
        <div class="img">
            <img src="../assets/compressed/Compressed-2/Sc_Two_00000.png" style="z-index:50;height:50vh;width:50vw;"/>
        </div>
        <!-- <img src="http://source.unsplash.com/random/400x200" /> -->
        <div class="text" style="z-index:30;">
             <h1>Elegant Metalic Finish</h1>
             <p>Tamarind EX10 Pro Series has a sleak metalic design that will give you premium fell. It is crafted to provide all the <br>
                computing essentials with a metalic finish.The lightweight design of Tamaring ensures you carry it anywhere <br>
                with great comfort 
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

    mounted () {
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
                        document.querySelector('.comp-3 > .text').classList.add('text-animate')
                    }else{
                        // entry.target.classList.remove('text-animate')
                        // this.cur = '3'
                        document.querySelector('.comp-3 > .text').classList.remove('text-animate')
                    }
                }.bind(this))
            }.bind(this), options);
            
            let target = document.querySelector('.comp-3')
            observer.observe(target) 
        } 
    },
}

</script>


<style scoped>
.comp-3 > .text {
    position: relative;
    color : white ;
}
.comp-3 > .img {
    position: relative;
    z-index: 50;
    padding-top:5%;

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
        transform: translateY(-200px);
    }

    to {
        opacity:100%;
        transform: translateY(0px);
    }
}
    
</style>
