<template>
    <div class="frame-container comp-5">
        <!-- <div class="comp-5-container"> -->
            <div class="text">
                <h1>Experience Cristal Clear Display</h1>
                <p> Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, mollitia <br>
                    repellat suscipit dolorum nihil ut aspernatur illo deleniti sequi <br>
                    perferendis doloribus rem distinctio aliquid, quas quod eveniet pariatur? <br>
                     Consequuntur, dignissimos. 
                </p>
            </div>
            <div class="img">
                <!-- <img src="../assets/compressed/Compressed-4/Sc_Four_00016.png" alt=""> -->
            </div>
        <!-- </div> -->
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
            // img.style.height  = '85vh'
            // img.style.width   = 'auto'
            // img.style.height  = '70vh'
            return img 
        },
        getImgUrl(pic) {
            let t = `${(pic+'').padStart(5,'0')}.png`
            return require('../assets/compressed/Compressed-4/Sc_Four_'+t)
        },
        populateImage(){
            this.img_els  = []
            for(let i = 0 ; i <= 16 ; i++){
                let url = this.getImgUrl(i)
                this.img_els.push( this.preloadImg(url) )
            }
            let img = this.img_els[0] 
            img.style.width = 'auto'
            img.style.width = '85vh'
            // img.style.width = '50vh'
            document.querySelector('.comp-5 > .img').appendChild(img)    
        },
        updateImgaeEl(idx){
            document.querySelector('.comp-5 > .img').innerHTML = ''
            document.querySelector('.comp-5 > .img').appendChild(this.img_els[idx]) 
            console.log(`updated image`)
        },
        setObserver(){
            
            let options ={
                root : null ,
                rootMargin : '0px' ,
            threshold : 0.8 
            }

            let observer = new IntersectionObserver(function(entries,observe){
                entries.forEach(function(entry){
                    if(entry.isIntersecting){
                        entry.target.classList.remove('comp-5-exit')
                        document.querySelector('.comp-5 > .text').classList.add('text-animation')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur < 16 ){
                               this.cur +=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 5 ')
                        }.bind(this),70)
                    }else{
                        entry.target.classList.add('comp-5-exit')
                        document.querySelector('.comp-5 > .text').classList.remove('text-animation')
                        clearInterval(this.timeout_ref)    
                        this.timeout_ref = setInterval(function(){
                            if(this.cur > 1 ){
                               this.cur -=1
                               this.updateImgaeEl(this.cur)
                            }else{
                                clearInterval( this.timeout_ref )
                            }
                            console.log('intersecting comp 5 ')
                        }.bind(this),70)

                    }
                }.bind(this));
            }.bind(this),options)

            let target = document.querySelector('.comp-5')
            observer.observe(target)
        }
    },


}
</script>
<style >
.comp-5 {
    background: black;
    opacity: 100%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-5-exit {
    opacity: 20%;
    transition-property: opacity ;
    transition-duration: 2s;
    transition-timing-function: linear;
}
.comp-5 > .text {
    padding-top:5%;
    color: white;
    opacity: 20%;
    scale: .3;
    position: relative;
    top: 23%;
    left: -4%;

}
.text > p {
    color: #7F7F7F;
    font-weight: bold;
}
.comp-5 > .img {
    position: relative;
    top: -27%;
    right: -7%;
}
/* .text-enter {

}
.text-exit {

} */
.text-animation{
    animation: text_animation;
    animation-duration: 3s;
    animation-fill-mode: forwards;
}
@keyframes text_animation {
    from {
        opacity: 0%;
        transform: rotateY(90deg);
    }    
    to {
        opacity: 100%;
        transform: rotateY(0deg);

    }
}
</style>
<style >
.comp-5 > .img > img {
    height : 85vh;
}
@media only screen and (max-width: 1040px) {
    .comp-5 > .img > img {
        height: 50vh;
        margin-top: 25%;
        position: relative;
        /* left: -10%; */

    }
}
@media only screen and (max-width: 500px) {
    .comp-5 > .img > img { 
        height: 31vh;
    }

    .comp-5 > .text  {
        position: relative;
        top: 10%;
        left: -4%;
     }
    .comp-5 > .img  {
        position: relative;
        top: -3%;
        right: 2%;

    }
}
</style>
