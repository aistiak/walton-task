<template>
    <div class="frame-container comp-3">
        <div class="img">
            <!-- <div v-for="(v,k) in img_list" :key="k">
               <img v-show=" k == cur " :src="v" style="z-index:50;height:65vh;width:auto"/>
            </div> -->

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
            cur : 0  , // 21 max 
            img_list : [] ,
            img_els : [] ,
            timeout_ref : `` ,
            timeout_ref_2 : `` ,
        }
    },
    watch : {
        // cur(val){ 
        //     document.querySelector('.comp-3 > .img').innerHTML = ''
        //     document.querySelector('.comp-3 > .img').appendChild(this.img_els[0]) 
        // }
    },  
    mounted () {
        
        this.setObserver() 
        this.populateImage()
    },

    methods : {
        preloadImg(url){
            let img = new Image()
            img.src = url 
            // img.style.height  = '70vh'
            // img.style.width   = 'auto'
            // img.style.height  = '70vh'
            return img 
        },
        getImgUrl(pic) {
            let t = `${(pic+'').padStart(5,'0')}.png`
            return require('../assets/compressed/Compressed-2/Sc_Two_'+t)
        },
        populateImage(){
            this.img_els  = []
            for(let i = 0 ; i <= 21 ; i++){
                let url = this.getImgUrl(i)
                this.img_els.push( this.preloadImg(url) )
            }
            document.querySelector('.comp-3 > .img').appendChild(this.img_els[0])    
        },
        updateImgaeEl(idx){
            document.querySelector('.comp-3 > .img').innerHTML = ''
            document.querySelector('.comp-3 > .img').appendChild(this.img_els[idx]) 
            console.log(`updated image`)
        },
        setObserver(){
             let options = {
                root : null , //document.querySelector('comp-3'),
                rootMargin: '0px' ,
                threshold : .8,
            }
            let observer = new IntersectionObserver(function(entries,observer){
                
                entries.forEach(function(entry) {
                     
                    if(entry.isIntersecting){
                        entry.target.classList.remove('comp-3-exit')
                        document.querySelector('.comp-3 > .text').classList.add('text-animate')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur <21 ){
                               this.cur +=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp3 ')
                        }.bind(this),50)
                        

                    }else{
                        entry.target.classList.add('comp-3-exit')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur > 1 ){
                               this.cur -=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('not intersecting comp3 ')
                        }.bind(this),50)

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
.comp-3 {
    height :110vh;
    background: #000000;
    opacity: 100% ;
    transition-property: opacity scale tranform;
    transition-duration: 1s;
    transition-timing-function: linear;
}
.comp-3-exit {
    opacity: 20% ;
    /* transform: scale(0.5); */
    transition-property : opacity transform;
    transition-duration: 1s;
    transition-timing-function: linear;

}
.comp-3 > .text {
    position: relative;
    color : white ;
    opacity: 0%;
    transition-property: opacity transform;
    transition-duration: 3s;
    transition-delay: 2s;
    transition-timing-function: linear;
    top:-7%;
}
.comp-3 > .img {
    position: relative;
    z-index: 50;
    padding-top:5%;

}
img {
    height: 70vh;
    width: auto;
}
.text-animate {
    
    /* opacity : 100%; */
    animation: text_animation ;
    animation-duration: 3s;
    animation-delay: 1s;
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
<style >
.comp-3 > .img > img {
    height : 70vh;
}
@media only screen and (max-width: 1040px) {
    .comp-3 > .img > img {
        height: 50vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
}
@media only screen and (max-width: 500px) {
    .comp-3 > .img > img {
        height: 30vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
}
</style>
