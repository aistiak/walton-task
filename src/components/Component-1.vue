<template>
    <div class="frame-container comp-1">
        <div class="text" style="">
            <h1>Explore The World </h1>
            <p>
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequatur nemo <br> 
                tempore deseruntquia ipsam, quod vel blanditiis facilis iusto nostrum itaque,<br>
                fugiat dolorem autem sunt labore quisquam quam similique magnam?
            </p>
        </div>
        <div class="img">

        </div>
        <!-- <img  :src="im_path" style="height:70%;position:relative;top:5%;"/> -->

    </div>
</template>
<script>
export default {
    
    data() {

        return {
            img_path : '../assets/compressed/Compressed-1/Sc_One_00003.png',
            cur : 3 ,
            interval_ref : `` ,
            img_els : [] ,
        }
    },
    computed : {
        // im_path (){
        //     return this.getImgUrl(this.cur)
        // },  
    },
    mounted () {
        this.setObserver();
        this.populateImage();
        
    },
    watch : {
        // cur (val){
        //     val >= 197 ? clearInterval(this.interval_ref) : `` 
        // }
    },
    methods : {
        preloadImg(url){
            let img = new Image()
            img.src = url 
            img.style.height  = '90vh'
            img.style.width   = 'auto'
            // img.style.height  = '70vh'
            return img 
        },
        getImgUrl(pic) {
            let t = `${(pic +'').padStart(5,'0')}.png`
            return require('../assets/compressed/Compressed-1/Sc_One_'+t)
        },
        populateImage(){
            this.img_els  = []
            for(let i = 3 ; i <= 199 ; i++){
                let url = this.getImgUrl(i)
                this.img_els.push( this.preloadImg(url) )
            }
            document.querySelector('.comp-1 > .img').appendChild(this.img_els[0])    
        },
        startAnimation(){
            // console.log(this.cur)
            this.interval_ref = setInterval(this.changeFrame,40)
        },
        changeFrame(){
            this.cur = ( this.cur * 1 + 1 ) + ''
            // console.log(this.cur)
        },
        updateImgaeEl(idx){
            document.querySelector('.comp-1 > .img').innerHTML = ''
            document.querySelector('.comp-1 > .img').appendChild(this.img_els[idx]) 
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
                        entry.target.classList.remove('comp-1-exit')
                        clearInterval(this.interval_ref)
                        this.interval_ref = setInterval(function(){
                            if(this.cur < 196){
                                this.cur += 1
                                this.updateImgaeEl(this.cur)
                            }    
                        }.bind(this),50)
                    }else{
                        entry.target.classList.add('comp-1-exit')
                        clearInterval(this.interval_ref)
                        this.interval_ref = setInterval(function(){
                            if(this.cur > 3){
                                this.cur -=1 
                                this.updateImgaeEl(this.cur)
                            }
                        }.bind(this),30)
                    }
                }.bind(this))
            }.bind(this), options);

            let target = document.querySelector('.comp-1')
            observer.observe(target)

        },
    },
}
</script>
<style scoped>
.comp-1{
    /* height: 110vh; */
    /* background: rgb(75, 73, 73); */
    background: #000000;
    opacity: 100% ;
    /* transform: scale(1); */
    transition : opacity tranform;
    transition-duration: 1s;
    transition-timing-function: linear;
}
.comp-1-exit {
    opacity: 5% ;
    /* transform: scale(0.5); */
    transition : opacity transform;
    transition-duration: 1s;
    transition-timing-function: linear;

}
.comp-1 > .text{
    position:relative;
    top:12%;
    color:white;
    animation: textshow;
    animation-duration: 5s;
}
@keyframes textshow {
    from {
        opacity: 0%;
        transform: scale(1.5);
    }
    to {
        opacity : 100%;
        transform: scale(1);
    }
}
</style>