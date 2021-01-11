<template>
    <div class="frame-container comp-8">
       <div class="text">
           <h1>
               The Latest Connectivity
           </h1>
           <p>
               Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis blanditiis non <br>
               beatae officia nesciunt tempore tempora eius repellat sint? Possimus necessitati <br>
               bus ea reiciendis aliquam animi sit, laborum est recusandae tenetur. <br>
           </p>
        </div>
        <div class="img">
        <!-- <img src="../assets/compressed/Compressed-5/Sc_Five_00032.png" alt="">   -->

        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            cur : 0,
            img_els : [] ,
            timeout_ref : `` ,

        }
    },
    mounted(){
        this.populateImage()
        this.setObserver()
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
            return require('../assets/compressed/Compressed-5/Sc_Five_'+t)
        },
        populateImage(){
            this.img_els  = []
            for(let i = 5 ; i <= 32 ; i++){
                let url = this.getImgUrl(i)
                this.img_els.push( this.preloadImg(url) )
            }
            let img = this.img_els[0] 
            img.style.width = 'auto'
            img.style.width = '70vh'
            // img.style.width = '50vh'
            document.querySelector('.comp-8 > .img').appendChild(img)    
        },
        updateImgaeEl(idx){
            document.querySelector('.comp-8 > .img').innerHTML = ''
            document.querySelector('.comp-8 > .img').appendChild(this.img_els[idx]) 
            console.log(`updated image`)
        },
        setObserver(){
            
            let options ={
                root : null ,
                rootMargin : '0px' ,
                threshold : .6
            }

            let observer = new IntersectionObserver(function(entries,observe){
                entries.forEach(function(entry){
                    if(entry.isIntersecting){
                        entry.target.classList.remove('comp-8-exit')
                        document.querySelector('.comp-8 > .text > h1').classList.remove('text-left-ini')
                        document.querySelector('.comp-8 > .text > h1').classList.add('text-left-entry')
                        document.querySelector('.comp-8 > .text > p').classList.remove('text-right-ini')
                        document.querySelector('.comp-8 > .text > p').classList.add('text-right-entry')
                        // document.querySelector('.comp-8 > .text > h1').classList.add('text-animation-left')
                        // document.querySelector('.comp-8 > .text > p').classList.add('text-animation-right')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur < 27 ){
                               this.cur +=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 8 ')
                        }.bind(this),70)
                    }else{
                        entry.target.classList.add('comp-8-exit')
                        document.querySelector('.comp-8 > .text > h1').classList.add('text-left-ini')
                        document.querySelector('.comp-8 > .text > h1').classList.remove('text-left-entry')
                        document.querySelector('.comp-8 > .text > p').classList.add('text-right-ini')
                        document.querySelector('.comp-8 > .text > p').classList.remove('text-right-entry')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur > 1 ){
                               this.cur -=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 8 ')
                        }.bind(this),70)

                    }
                }.bind(this));
            }.bind(this),options)

            let target = document.querySelector('.comp-8')
            observer.observe(target)
        }
    },


}
</script>
<style scoped>
.comp-8 {
    background: black;
    opacity: 100%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-8-exit {
    opacity: 20%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-8 > .text {
    padding-top:5%;
    color: white;
    /* opacity: 20%; */
    scale: .3;
}
.comp-8 > .text > h1 , .comp-8 > .text > p  {
    transition-property: opacity transform;
    transition-duration: 2s;
    /* opacity: 0%; */
}

.text-left-ini {
    
    transform: translateX(-500px);
    opacity: 10%;
}
.text-left-entry {
     transform: translateX(0px);
     opacity: 100%;
}
.text-right-ini {
    transform: translateX(500px);
    opacity: 10%;
}
.text-right-entry {
     transform: translateX(0px);
     opacity: 100%;
}
.comp-8 > .img {
   
}
/* .comp-8 > .text > * {
    opacity: 0%;

} */
.text-animation-left{
    animation: text_animation_left;
    animation-duration: 3s;
    animation-fill-mode: forwards;
}
.text-animation-right{
    color : white;
    animation: text_animation_right;
    animation-duration: 3s;
    animation-fill-mode: forwards;
}
@keyframes text_animation_left {
    from {
        opacity: 10%;
        transform: translateX(-500px);
    }    
    to {
        opacity: 100%;
        transform: translateX(0px);

    }
}
@keyframes text_animation_right {
    from {
        opacity: 0%;
        transform: translateX(500px);
    }    
    to {
        opacity: 100%;
        transform: translateX(0px);

    }
}
</style>
<style >
.comp-8 > .img > img {
    height : 70vh;
}
@media only screen and (max-width: 1040px) {
    .comp-8 > .img > img {
        height: 50vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
}
@media only screen and (max-width: 500px) {
    .comp-8 > .img > img {
        height: 30vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
    .comp-8 > .text {
     padding-top:20%;
    }
}
</style>
