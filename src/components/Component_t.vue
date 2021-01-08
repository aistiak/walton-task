<template>
    <div>
        <img  :src="im_path" style="width:90vw"/>
        <!-- <img alt="Vue logo" src="../assets/compressed/Compressed-1/Sc_One_00003.png"> -->
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
        this.startAnimation()
    },
    watch : {
        cur (val){
            val == 199 ? clearInterval(this.interval_ref) : `` 
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
        }
    },
}
</script>