<template>
    <div class="frame-container comp-9">
        <div class="text">
            <h1>Designed For Mobility</h1>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus ab dolores, corrupti, <br>
                 modi expedita assumenda ut amet similique iste, enim quisquam reiciendis reprehenderit no <br>
                 strum nemo fugiat porro debitis? Nisi, quod! <br>
            </p>
        </div>     
        <div class="img">
            <img src="~@/assets/others/laptop-hand.png" alt="">
        </div>   
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
            
            let options ={
                root : null ,
                rootMargin : '0px' ,
                threshold : 0.8
            }

            let observer = new IntersectionObserver(function(entries,observe){
                entries.forEach(function(entry){
                    if(entry.isIntersecting){
                        console.log(entry)
                        // entry.target.classList.remove('comp-9-exit')
                        document.querySelector('.comp-9 > .img ').classList.add('comp-9-img-enter')
                        document.querySelector('.comp-9 > .img ').classList.remove('comp-9-img-exit')
                        document.querySelector('.comp-9 > .text ').classList.add('comp-9-text-enter')
                        document.querySelector('.comp-9 > .text ').classList.remove('comp-9-text-exit')
 
  

                    }else{
                        document.querySelector('.comp-9 > .img ').classList.remove('comp-9-img-enter')
                        document.querySelector('.comp-9 > .img ').classList.add('comp-9-img-exit')
                        document.querySelector('.comp-9 > .text ').classList.remove('comp-9-text-enter')
                        document.querySelector('.comp-9 > .text ').classList.add('comp-9-text-exit')


                    }
                }.bind(this));
            }.bind(this),options)

            let target = document.querySelector('.comp-9')
            observer.observe(target)
        }
    },


}
</script>
<style scoped>
    .comp-9 > .text {
        padding-top: 8%;
        color: white;
    }
    .comp-9 > .img > img{
        width : 50vw ;
        height: auto;
    }
    .comp-9  {
        transition-property: transform opacity;
    }
    .comp-9-enter {
        opacity: 100%;
    }
    .comp-9-exit {
        opacity: 20%;
    }
    .comp-9-img-enter {
        /* transition-property: transform opacity; */

        transform: scale(1) translateY(0px);
        opacity: 100%;

    }
    .comp-9-img-exit {
        /* transition-property: transform opacity; */

        transform: scale(0.7) translateY(300px);
        opacity: 20%;
 
    }
    .comp-9 > .img {
        transition-property: transform opacity;
        transition-duration: 3s;

    }
    .comp-9-text-enter {
        /* transition-property: transform opacity; */
        /* transform: scale(1) translateY(0px); */
        opacity: 100%;

    }
    .comp-9-text-exit {
        /* transition-property: transform opacity; */
        /* transform: scale(0.7) translateY(300px); */
        opacity: 20%;
 
    }
    .comp-9 > .text {
        transition-property: transform opacity;
        transition-duration: 4s;

    }



</style>