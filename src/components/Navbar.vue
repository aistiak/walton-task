<template>
    <div class="nav-bar">
        <div class="top">
            <div class="content">
                <div>Logo</div>
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

</template>

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
</style>