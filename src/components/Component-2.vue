<template>
    <div class="frame-container comp-2">
        
        <img  :src="im_path" style="width:90vw"/>

    </div>
</template>
<script>
export default {
    
    data() {

        return {
            img_path : '../assets/compressed/Compressed-1/Sc_One_00003.png',
            cur : '3' ,
            interval_ref : `` ,
        }
    },
    computed : {
        im_path (){
            return this.getImgUrl(this.cur)
        },  
    },
    mounted () {
        // this.setObserver();
        this.startAnimation()
    },
    watch : {
        cur (val){
            val >= 197 ? clearInterval(this.interval_ref) : `` 
        }
    },
    methods : {
        startAnimation(){
            console.log(this.cur)
            this.interval_ref = setInterval(this.changeFrame,50)
        },
        changeFrame(){
            this.cur = ( this.cur * 1 + 1 ) + ''
            console.log(this.cur)
        },

        getImgUrl(pic) {
            let t = `${pic.padStart(5,'0')}.png`
            return require('../assets/compressed/Compressed-1/Sc_One_'+t)
        },

        setObserver(){
            let options = {
                root : null , //document.querySelector('comp-3'),
                rootMargin: '0px' ,
                threshold : 0.7 ,
            }
            let observer = new IntersectionObserver(function(entries,observer){
                
                entries.forEach(function(entry) {
                     
                    if(entry.isIntersecting){
                        // this.startAnimation()
                    }else{
                        
                        clearInterval(this.interval_ref)
                        // this.cur = '3'
                    }
                }.bind(this))
            }.bind(this), options);

            let target = document.querySelector('.comp-2')
            observer.observe(target)

        },
    },
}
</script>
<style scoped>
.comp-2{
    background: rgb(75, 73, 73);
}
</style>