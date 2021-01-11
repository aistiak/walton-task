<template>
    <div class=" comp-10">
        <div class="comp-10-container">
            <div class="walton-logo">
                <div>
                    <img  src="../assets/others/walton-logo-1.png" alt="">

                </div>
            </div>
            <div class="about">
                <div class="about-info">
                    <div class="items">
                        <div>ABOUT WALTON</div>
                        <div>CONTACT</div>
                        <div>PRICES</div>
                        <div>CORPORATE SOCIAL RESPONSIBILITY</div>
                        <div>CAREERES</div>
                        <div>AWARDS</div>
                    </div>
                    <div class="items">
                        <div>SERVICE</div>
                        <div>ID</div>
                        <div>WALTON COMMUNITY</div>
                        <div>DEVICE AND MANUALS</div>
                        <div>COMMUNITY</div>
                        <div>CONTACT SUPPORT</div>
                    </div>
                    <div class="items">
                        <div>RESOURCES</div>
                        <div>REGISTER PRODUCT</div>
                        <div>PREDATOR</div>
                        <div>NEXT@ACER</div>
                        <div>WHERE TO BUY </div>
                        <div>SOFTWARE</div>
                        <div>BYOC</div>
                    </div>
                    <div class="items">
                        <div>LEGAL</div>
                        <div>REGISTER PRODUCT</div>
                        <div>PREDATOR</div>
                        <div>NEXT@ACER</div>
                        <div>WHERE TO BUY </div>
                        <div>SOFTWARE</div>
                        <div>BYOC</div>
                    </div>

                </div>
            </div>
            <div class="other-brands">
                <div>PASSION</div>
                <div>TAMARIND</div>
                <div>PRELUDE</div>
                <div>WAXZAMBU</div>
                <div>KARONDA</div>
            </div>
            <div class="social">
                <div class="logos">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-youtube"></i>
                    <i class="fab fa-instagram"></i>
                </div>
                <div class="some-text">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa voluptatum qui
                     <br> ratione provident, iusto odio nesciunt optio <br>
                </div>
            </div>
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
                        entry.target.classList.add('comp-10-enter')
                        entry.target.classList.remove('comp-10-exit')
                    }else{
                        entry.target.classList.remove('comp-10-enter')
                        entry.target.classList.add('comp-10-exit')
                    }
                }.bind(this));
            }.bind(this),options)

            let target = document.querySelector('.comp-10')
            observer.observe(target)
        }
    },


}
</script>
<style scoped>
.comp-10 {
    transition-property: transform opacity ;
    transition-duration: 1s;
}
.comp-10-enter {
    opacity: 100%;
    transform: scale(1);
}
.comp-10-exit {
    opacity: 80%;
    transform: scale(.95);

}
</style>
<style scoped>
.comp-10{
    /* height: 100vh; */
    scroll-snap-align: start;

    /* min-height:600px; */
}
.comp-10-container {
    /* border:2px solid green; */
    padding-top: 5%;
    height: inherit;
    display: flex ;
    flex-direction: column;
    justify-content: flex-start;
}
.comp-10-container > div:nth-child(1){
    background: #606060;
    height: 20vh;
}
.comp-10-container > div:nth-child(2){
    background: #565656;
    height: 40%;
}
.comp-10-container > div:nth-child(3){


}
.comp-10-container > div:nth-child(4){
    background: #1F1F1F;
    height: 20vh;
}
.frame-container{
    scroll-snap-align: end;
}

.other-brands{
    background: #1F1F1F;
    /* height: 10%; */
    display: flex;
    flex-direction: row;
}
.other-brands > div {
    background: #363636;
    width: 100%;
    margin:2px;
    color: whitesmoke;
    line-height: 340%;
}
.about-info {
    display: flex;
    flex-wrap: wrap;
    color : whitesmoke;
    /* border:1px solid ; */
    padding-left: 20%;
    padding-right: 20%;
    font-size: 11px;
    color : #b9b3b3 ;
}
.about-info > div {
    padding:20px;
    text-align: left;
}
.about-info > .items > div{
    margin-bottom: 20px;
}
.about-info > .items > div:nth-child(1){
    color:white ;
}
@media only screen and (max-width: 550px) {
    .other-brands {
        flex-wrap: wrap;
    }
}

.walton-logo > div >img {
    background: #565656;
    margin-top: 1%;
    padding-left: 20%;
    padding-right: 20%;
}
.logos{
    margin-top: 20px;
}
.logos > i {
    font-size: 25px;
    padding: 10px;
    color: white;
}
.some-text{
    color : #7F7F7F ;
    font-weight:bold;
}
</style>