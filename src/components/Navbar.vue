<template>
    <div>
        <div class="nav-bar desktop-view">
            <div class="top">
                <div class="content">
                    <!-- <div>Logo</div> -->
                    <div>
                        <img class="top-walton-logo" src="../assets/others/walton-logo-1.png" alt="">
                    </div>
                    <div>Laptop</div>
                    <div>Desktop</div>
                    <div>All In One</div>
                    <div>Monitor</div>
                    <div>Keyboard</div>
                    <div>Mouse</div>
                    <div>Pendrive</div>
                    <div>Headphone</div>
                    <div>Accessories</div>
                </div>
            </div>
            <div class="bottom">
                <div class="content">
                    <div class="left">
                        <!-- TAMARIND -->
                        <img class="tamarind-logo" src="../assets/others/tamarind.png" alt="">
                    </div>
                    <div class="right">
                        <div>Overview</div>
                        <div>Tech Spec</div>
                        <div>Picture Gallyer</div>
                        <div class="btn">Buy Now</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="nav-bar-mobile modile-view">
            <div class="nav">
                <div class="logo">
                    <img class="top-mobi-walton-logo" src="../assets/others/walton-logo-1.png" alt="">
                </div>
                <div class="ham">
                    <a href="#" @click="toggleNav">
                         <div class="ham">
                             <div></div>
                             <div></div>
                             <div></div>
                         </div>
                    </a>
                </div>
            </div>
            <div class="nav-dropdown">
                <div class="first">
                   <!-- <div>Logo</div> -->
                    <img class="mobi-tamarind-logo" src="../assets/others/tamarind.png" alt="">
                    <div>Laptop</div>
                    <div>Desktop</div>
                    <div>All In One</div>
                    <div>Monitor</div>
                    <div>Keyboard</div>
                    <div>Mouse</div>
                    <div>Pendrive</div>
                    <div>Headphone</div>
                    <div>Accessories</div>
                </div>
                <div class="second">
                    <div class="left">
                        TAMARIND
                    </div>
                    <div class="right">
                        <div>Overview</div>
                        <div>Tech Spec</div>
                        <div>Picture Gallyer</div>
                        <div class="btn">Buy Now</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            mobile_nav : false ,
        }
    },

    methods : { 
        toggleNav(){

            if(this.mobile_nav){
               document.querySelector('.nav-dropdown').style.transform  = 'translateY(-500px)'     
            }else{
               document.querySelector('.nav-dropdown').style.transform  = 'translateY(0px)'     
            }
            this.mobile_nav = !this.mobile_nav 
             
        }    
    }
}
</script>
<style scoped>
.nav-bar{
    position: fixed;
    top:1px;
    width: 100vw;
    height: 65px;
    background: white;
    font-family: sans-serif;
    z-index: 100;
}
.nav-bar > .top {
    background: #000000;
    color: #FFFFFF;
    height: 20px;
    font-size: 13px;
}

.nav-bar > .top > .content {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
    margin-left: 20%;
    margin-right: 20%;
}
.nav-bar > .bottom {
    background: #151515;
    color: #6F6F6F;
}
.nav-bar > .bottom > .content {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
    margin-left: 20%;
    margin-right: 20%;
    /* border: 1px solid green ; */
}
.nav-bar > .bottom > .content > div {
    /* border: 1px solid red; */
}
.nav-bar > .bottom > .content > .right {
    display: flex;
    width: 100%;
    justify-content: space-between;
    margin-left: 45%;

}
.bottom {
    height: 48px;
    background: gray;
    font-size: 13px;
}
.bottom > .content{
    top: 27%;
    position: relative;

}
.right > .btn {
    background: #3C3CFF;
    padding: 4px;
    top: -3px;
    position: relative;
    color: white;
}

/* mobile nav bar  */
.nav-bar-mobile {
    display: none;
}
.nav-bar-mobile > .nav {
    /* display: none; */
    z-index: 100;
    width: 100vw;
    height: 50px;
    position: fixed;
    /* border: 1px solid green ; */
    background: #151515;
    display: flex;
    justify-content: space-between;
}
.nav-bar-mobile > .nav > div {
    padding: 5px;
    padding-top: 15px ;
    padding-right: 15px;
    padding-left: 15px;
    color: white;
}
.nav-dropdown{
    height: 50vh;
    width: 100vw;
    background: #222;
    transform: translateY(-500px) ;
    z-index: 75;
    position: fixed;
    margin-top: 50px;
    transition-property: transform;
    transition-duration: 1s;
    transition-timing-function: ease-in-out;
    display: flex;
    justify-content: space-around;
    text-align: left;
    color: white
    
}
.nav-dropdown > .first  > div ,
.nav-dropdown > .second > .left ,
.nav-dropdown > .second > .right > div{
    margin-top: 8px;
}
.nav-dropdown > .first {
    font-size: 13px;
}
/* media query  */
@media only screen and (max-width: 1000px) {
    .nav-bar {
        display: none;
    }
    .nav-bar-mobile {
        display: block;
    }
}


.top-walton-logo{
    height: 30px;
    position: relative;
    right: 8%;
    top: -18%;
}
.tamarind-logo {
    height: 20px;
    position: relative;
    left: 2px;
}
.top-mobi-walton-logo{
    height: 54px;
    position: relative;
    top: -49%;
}
.mobi-tamarind-logo{
    height: 19px;
    margin-top: 10px;
}
.ham >div {
  width: 35px;
  height: 5px;
  background-color: #a2a2a2;
  margin: 6px 0;
}
.ham {
    position: relative;
    top: -10%;
}
</style>