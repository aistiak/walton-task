<template>
    <div class="frame-container comp-4 ">
        <div class="text">
            <h1>Processor</h1>
            <p>
                Tarmind EX10 Pro series is power by 10TH generation Intel®  Processor that can respond &#38; perform at an  <br>
                amazing speed . Whether you are doing any graphical works or using multiple applications . It tackles them all at an <br>
                ease . This device can rise above the challenges by giving all the multitasking performance that the user needs for <br>
                work or play <br> 
                <!-- Lorem ipsum dolor sit amet consectetur adipisicing elit. <br>
                Assumenda quam libero obcaecati, incidunt fugit nihil <br>
                quisquam ipsam distinctio ea sed doloribus aspernatur odit ab. <br>
                Aspernatur vel distinctio aut in inventore? -->
            </p>
        </div>
        <div class="img">
            <!-- <img src="../assets/compressed/Compressed-3/Sc_Three_00032.png" > -->
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            cur : 0 ,
            timeout_ref : `` ,
            img_els : [] ,
        }
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
            return require('../assets/compressed/Compressed-3/Sc_Three_'+t)
        },
        populateImage(){
            this.img_els  = []
            for(let i = 0 ; i <= 32 ; i++){
                let url = this.getImgUrl(i)
                this.img_els.push( this.preloadImg(url) )
            }
            document.querySelector('.comp-4 > .img').appendChild(this.img_els[0])    
        },
        updateImgaeEl(idx){
            document.querySelector('.comp-4 > .img').innerHTML = ''
            document.querySelector('.comp-4 > .img').appendChild(this.img_els[idx]) 
            console.log(`updated image`)
        },
        setObserver(){
            
            let options ={
                root : null ,
                rootMargin : '0px' ,
                threshold : 0.7 
            }

            let observer = new IntersectionObserver(function(entries,observe){
                entries.forEach(function(entry){
                    if(entry.isIntersecting){
                        entry.target.classList.remove('comp-4-exit')
                        document.querySelector('.comp-4 > .text').classList.add('text-animation')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur < 32 ){
                               this.cur +=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 4 ')
                        }.bind(this),50)
                    }else{
                        entry.target.classList.add('comp-4-exit')
                        document.querySelector('.comp-4 > .text').classList.remove('text-animation')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur > 1 ){
                               this.cur -=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 4 ')
                        }.bind(this),50)

                    }
                }.bind(this));
            }.bind(this),options)

            let target = document.querySelector('.comp-4')
            observer.observe(target)
        }
    },

}
</script>
<style scoped>
.comp-4 {
    background: black;
    opacity: 100%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-4-exit {
    opacity: 20%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-4 > .text {
    padding-top:5%;
    color: white;
    opacity: 20%;
    scale: .3;

}


.text-animation{
    animation: text_animation;
    animation-duration: 3s;
    animation-fill-mode: forwards;
}
@keyframes text_animation {
    from {
        opacity: 20%;
        transform: scale(.3);
    }    
    to {
        opacity: 100%;
        transform: scale(1);

    }
}
</style>

<style >
.comp-4 > .img > img {
    height : 70vh;
}
@media only screen and (max-width: 1040px) {
    .comp-4 > .img > img {
        height: 50vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
}
@media only screen and (max-width: 500px) {
    .comp-4 > .img > img {
        height: 30vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
    .comp-4 > .text {
      padding-top:10%;
    }
}
</style>
