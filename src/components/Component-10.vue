<template>
    <div class=" comp-10">
        <div class="comp-10-container">
            <div class="walton-logo">

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
                    <i class="fa fa-car"></i>
                </div>
                <div class="some-text">
                    this is dummy placeholder text 
                </div>
            </div>
        </div>
    </div>
</template>
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
    justify-content: start;
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
</style>