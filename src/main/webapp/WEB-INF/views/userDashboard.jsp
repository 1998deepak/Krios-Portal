<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>User-Dashboard</title>
  <link rel="icon" href="../images/Krios-icon-header.png" type="image/icon type">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Bootstrap Styles-->
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FontAwesome Styles-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- Morris Chart Styles-->
  <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
  <!-- Custom Styles-->
  <link href="assets/css/custom-styles.css" rel="stylesheet" />
  <!-- Google Fonts-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">/
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<style>
  body {
    // background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("./images/userdashboard.jpg");
    background-size: cover;
    margin: 0;
    background-color:#f5efef;
    padding: 0;
    width: 100%;
    overflow-y: hidden;
    overflow-x: hidden;

  }

  .document-center {
    position: absolute;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  /*We do this because the carousel needs to be 100% width
in order for the aspect ratio trick to work*/
  .carousel-container {
    max-width: 980px;
    width: 95%;
  }

  /*This is the actual carousel. Overflow hidden acts as a mask*/
  .carousel {
    position: relative;
    width: 100%;
    /*Width of image is 980px. Height is 570px.*/
    padding-top: calc(570 / 980 * 100%);
    overflow: hidden;
  }

  .carousel-container img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }

  .left-arrow {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    top: 0;
    left: 0;
    height: 100%;
    width: 147px;
    cursor: pointer;
  }

  .left-arrow:hover {
    background: linear-gradient(to left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  }

  .left-arrow:hover .chevron,
  .right-arrow:hover .chevron {
    border-color: #e6e6e6;
  }

  .right-arrow {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: center;
    top: 0;
    right: 0;
    height: 100%;
    width: 147px;
    cursor: pointer;
  }

  .right-arrow:hover {
    background: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
  }

  .chevron {
    width: 25px;
    height: 25px;
    border: solid rgba(255, 255, 255, 0.5);
    border-width: 10px 10px 0 0;
  }

  .chevron.right {
    transform: rotate(45deg);
  }

  .chevron.left {
    transform: rotate(-135deg);
  }

  .circle-container {
    position: absolute;
    display: flex;
    justify-content: center;
    align-items: start;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 45px;
  }

  .circle {
    border: 1px solid white;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    margin: 0 5px;
    cursor: pointer;
  }

  .circle-fill {
    background-color: white;
  }

  .text-container {
    position: absolute;
    display: flex;
    flex-direction: column;
    justify-content: start;
    align-items: center;
    bottom: 45px;
    left: 0;
    width: 100%;
    color: white;
    text-shadow: 1px 1px black;
    text-align: center;
  }

  .text-container p:nth-child(1) {
    margin: 10px 100px;
    font-size: 1.5em;
  }

  .text-container p:nth-child(2) {
    margin: 10px 100px 20px 100px;
  }

  .carousel-screen {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
  }

  /* Animations */
  @keyframes toRight {
    0% {
      left: 0;
    }

    100% {
      left: 100%;
    }
  }

  @keyframes toLeft {
    0% {
      left: 0;
    }

    100% {
      left: -100%;
    }
  }

  @keyframes comeRight {
    0% {
      left: 100%;
    }

    100% {
      left: 0;
    }
  }

  @keyframes comeLeft {
    0% {
      left: -100%;
    }

    100% {
      left: 0;
    }
  }

  .sidecontainer {
    height: 123px;
    width: 223%;
    margin-left: 383px;
    background-color: #dadada;
    position: relative;
  }

  .subcontainer {
    height: 141px;
    width: 228%;
    margin-left: 383px;
    position: relative;
  }

  .div1 {
    width: 158px;
    height: 112px;
    display: block;
    cursor: pointer;
    align: center;
    color: white;
    box-shadow: 0px 10px 8px -2px #d5cfcf;
    border-radius: 4px;
    border: 1px solid #ffffff;
    background-color: #6391ab;
    box-sizing: border-box;
  }

  .btn:hover {
    color: white;
    background-color: #d4dee4;
  }
</style>

<body >
  <div>
    <jsp:include page="./components/userNavbar.jsp" />
  </div>
  <!-- <div style="position: absolute; left: 14px; top: 60px;">
	<font color="White" size="30px"><b>Welcome To Krios Portal</b></font>
	</div> -->

  <div class="document-left row" style="position: relative;margin-top: 4%;margin-left: 1%;">
    <!--This carousel-container only exists so we can do the
      aspect ratio tricks in CSS-->
    <div class="carousel-container col-md-2" style="width:36%;">
      <div class="carousel" id="carousel-1" auto-scroll="7000" style="width:180%;box-shadow: 0px 10px 8px -2px #d5cfcf;">
        <!--The uppermost screen will appear first. This is due to JavaScript-->
        <section class="carousel-screen">
          <img src="../images/slide1.jpg" alt="slide1" />
          <section class="text-container">
            <p>Welcome</p>
            <p>To Krios Info Solution Pvt. Ltd. !</p>
          </section>
        </section>
        <section class="carousel-screen">
          <img src="../images/slide2.jpg" alt="slide2" />
          <section class="text-container">
            <p>Office Culture!</p>
          </section>
        </section>
        <section class="carousel-screen">
          <img src="../images/slide4.jpg" alt="Los Angeles" />
          <section class="text-container">
            <p>LA is always so much fun!</p>
          </section>
        </section>
        <!--These are not screens. They will always be on carousel-->
        <section class="circle-container">
          <!--These 'circles' need to match the number of carousel screens-->
          <div class="circle"></div>
          <div class="circle"></div>
          <div class="circle"></div>
        </section>
        <div class="left-arrow">
          <span class="chevron left"></span>
        </div>
        <div class="right-arrow">
          <span class="chevron right"></span>
        </div>
      </div>
    </div>
    <div class="col-md-2">

      <div class=" sidecontainer" style="box-shadow: 0px 10px 8px -2px #d5cfcf;">
        <img src="../images/profileimg.jpg" alt="Avatar" style="width:155px;padding:2%;border-radius:14px;">
        <b style="font-size: 21px;">From CFO'S Desk</b>
      </div>
      <br>
      <div class="  subcontainer">
        <img src="../images/landingimg.png" alt="Avatar" style="width:210px;   box-shadow: 0px 10px 8px -2px #d5cfcf;">&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../images/landingcolimg.png" alt="Avatar" style="width:210px;   box-shadow: 0px 10px 8px -2px #d5cfcf;">
      </div>

    </div>
  </div>
  <div>
    <div class="row-md-4 d-flex justify-content-center flex-nowrap" style="margin-left: 2%;">
      <div class="col-md-4 div1 btn">
        <i class="fa fa-wpforms" style="font-size:66px;padding-inline: 40px;padding-top: 10px;padding-bottom:7px"></i>
        <b>
          <center>Application Form</center>
        </b>
      </div>
      <div class="col-md-4 div1 btn" style="margin-left: 11px;">
        <i class="fa fa-folder-open-o" style="font-size:66px;padding-inline: 40px;padding-top: 10px;padding-bottom:7px"></i>
        <b>
          <center>Document</center>
        </b>
      </div>
      <div class="col-md-4 div1 btn" style="margin-left: 11px;">
        <i class="fa fa-gavel" style="font-size:66px;padding-inline: 40px;padding-top: 10px;padding-bottom:7px"></i>
        <b>
          <center>Policy</center>
        </b>
      </div>
      <div class="col-md-4 div1 btn" style="margin-left: 11px;">
        <i class="fa fa-file-pdf-o" style="font-size:66px;padding-inline: 40px;padding-top: 10px;padding-bottom:7px"></i>
        <b>
          <center>Attendance</center>
        </b>
      </div>
      <div class="col-md-4 div1 btn" style="margin-left: 11px;">
        <i class="fa fa-cog" style="font-size:66px;padding-inline: 40px;padding-top: 10px;padding-bottom:7px"></i>
        <b>
          <center>Setting</center>
        </b>
      </div>


    </div>
    <div style="position: relative;float: right; margin-right: 36px;margin-top:8px; width: 300px;        box-shadow: 0 0 10px #fff;">
     <div style="position: relative;float: right;margin-right: 198px;border-color:1px solid gray;width: 261px;">
               <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d1891.1169799584145!2d73.76478998288472!3d18.56348807126294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e0!4m0!4m5!1s0x3bc2bf0c7b04b4d3%3A0xabecfc83d300c825!2sKrios%20Info%20Solutions%20Pvt.%20Ltd.%2C%20B-204%2C%20Teerth%20Technospace%20Mumbai%20Bangalore%20Highway%2C%20adjoining%20Mercedes%20Benz%20Showroom%2C%20Baner%2C%20Pune%2C%20Maharashtra%20411045!3m2!1d18.5635364!2d73.7659487!5e0!3m2!1sen!2sin!4v1643880036522!5m2!1sen!2sin" width="470" height="271" style="border:0;border-radius:3px;    box-shadow: 0px 10px 8px -2px #d5cfcf;" allowfullscreen="" ></iframe>
          </div>
    </div>
    <div style="position: relative;float: right; margin-left: 2%;margin-top:16px; width: 300px;float:left">
      <p style="border-bottom: 4px solid skyblue;font-size:20px"><b>Pune</b></p>
      <p style="margin-left:4px;font-size:12px"><b  >B-204, C-206, Teerth Technospace, </b></p>
      <p style="margin-left:4px;font-size:12px"><b  >Mumbai Bangalore Highway, Adjoining Mercedes Benz Showroom,Baner,</b></p>
      <p style="margin-left:4px;font-size:12px"><b  >Pune- 411045, India.</b></p>
    </div>
    <div style="position: relative; margin-left: 17%;margin-top:16px; width: 300px;float:left">
      <p style="border-bottom: 4px solid skyblue;font-size:20px"><b>Nashik</b></p>
      <p style="margin-left:4px;font-size:12px"><b  >9, Shubham Park, Near Hotel Kopa Kabana, </b></p>
      <p style="margin-left:4px;font-size:12px"><b  >New Pandit Colony,</b> </p>
      <p style="margin-left:4px;font-size:12px"><b  >Nashik-422002, India</b></p>
    </div>



  </div>
  <script>
    //Right Arrow & Left Arrow
    let rightArrow = document.querySelector("#carousel-1 .right-arrow");
    let leftArrow = document.querySelector("#carousel-1 .left-arrow");
    //List of all of the screens in carousel
    let screenStore = document.querySelectorAll("#carousel-1 .carousel-screen");
    let numOfScreens = screenStore.length;
    //List of all the circle stores
    let circleStore = document.querySelectorAll(
      "#carousel-1 .circle-container .circle"
    );
    //number to target main screen
    let currentScreen = 0;
    //currently in animation or not
    let inAnim = false;
    //Animation Time
    let animTime = 500;
    //Sort out starting position
    sortPositioning(
      screenStore[currentScreen],
      screenStore[currentScreen - 1],
      screenStore[currentScreen + 1]
    );
    //Sort out circle styling
    highlightCircle(circleStore[0]);
    //User clicks on rightArrow
    rightArrow.addEventListener("click", () => {
      startAnim("right");
    });
    //User clicks on the leftArrow
    leftArrow.addEventListener("click", () => {
      startAnim("left");
    });
    //Start animation. Either towards left or right
    function startAnim(direction) {
      if (!inAnim) {
        inAnim = true;
        if (direction === "right") {
          moveRight();
          highlightCircle(circleStore[currentScreen + 1], "right");
        } else if (direction === "left") {
          moveLeft();
          highlightCircle(circleStore[currentScreen - 1], "left");
        } else {
          isAnim = false;
          return;
        }
      }
    }
    //Move to the right
    function moveRight() {
      //Move towards Next screen as usual
      if (currentScreen < numOfScreens - 1) {
        toLeft(screenStore[currentScreen]);
        comeRight(screenStore[currentScreen + 1]);
        setTimeout(() => {
          inAnim = false;
          currentScreen++;
          sortPositioning(
            screenStore[currentScreen],
            screenStore[currentScreen - 1],
            screenStore[currentScreen + 1]
          );
        }, animTime);
      } else {
        //Or the screen coming in is the first screen again
        toLeft(screenStore[currentScreen]);
        comeRight(screenStore[0]);
        setTimeout(() => {
          inAnim = false;
          currentScreen = 0;
          sortPositioning(
            screenStore[currentScreen],
            screenStore[currentScreen - 1],
            screenStore[currentScreen + 1]
          );
        }, animTime);
      }
    }
    //Move to the left
    function moveLeft() {
      //Move back to screen previously on, as usual
      if (currentScreen > 0) {
        toRight(screenStore[currentScreen]);
        comeLeft(screenStore[currentScreen - 1]);
        setTimeout(() => {
          inAnim = false;
          currentScreen--;
          sortPositioning(
            screenStore[currentScreen],
            screenStore[currentScreen - 1],
            screenStore[currentScreen + 1]
          );
        }, animTime);
      } else {
        //Move back to the last screen container
        toRight(screenStore[currentScreen]);
        comeLeft(screenStore[numOfScreens - 1]);
        setTimeout(() => {
          inAnim = false;
          currentScreen = numOfScreens - 1;
          sortPositioning(
            screenStore[currentScreen],
            screenStore[currentScreen - 1],
            screenStore[currentScreen + 1]
          );
        }, animTime);
      }
    }
    //User clicks on one of the circles
    circleStore.forEach((circle) => {
      circle.addEventListener("click", (event) => {
        if (!inAnim) {
          //Convert NodeList to Array, to use 'indexOf' method.
          let circleStoreArray = Array.prototype.slice.call(circleStore);
          let circleIndex = circleStoreArray.indexOf(event.target);
          //Configure circle styling
          highlightCircle(event.target);
          //Work out whether we need to move right or left, or nowhere.
          if (circleIndex > currentScreen) {
            changeScreenCircleClick(circleIndex, "right");
          } else if (circleIndex < currentScreen) {
            changeScreenCircleClick(circleIndex, "left");
          }
        }
      });
    });

    function changeScreenCircleClick(circleIndex, direction) {
      inAnim = true;
      if (direction === "right") {
        sortPositioning(
          screenStore[currentScreen],
          screenStore[currentScreen - 1],
          screenStore[circleIndex]
        );
        toLeft(screenStore[currentScreen]);
        comeRight(screenStore[circleIndex]);
      } else if (direction === "left") {
        sortPositioning(
          screenStore[currentScreen],
          screenStore[circleIndex],
          screenStore[currentScreen + 1]
        );
        toRight(screenStore[currentScreen]);
        comeLeft(screenStore[circleIndex]);
      } else {
        inAnim = false;
        return;
      }
      setTimeout(() => {
        inAnim = false;
        currentScreen = circleIndex;
        sortPositioning(
          screenStore[currentScreen],
          screenStore[currentScreen - 1],
          screenStore[currentScreen + 1]
        );
      }, animTime);
    }

    function highlightCircle(circleSelect, direction) {
      if (circleSelect === undefined && direction === "right") {
        circleSelect = circleStore[0];
      } else if (circleSelect === undefined && direction === "left") {
        circleSelect = circleStore[numOfScreens - 1];
      }
      circleStore.forEach((circle) => {
        if (circle === circleSelect) {
          circle.classList.add("circle-fill");
        } else {
          circle.classList.remove("circle-fill");
        }
      });
    }
    //Animation methods
    function toLeft(screen) {
      screen.style.animation = "toLeft 0.8s ease-in-out forwards";
      setTimeout(() => {
        screen.style.animation = "";
      }, animTime);
    }

    function toRight(screen) {
      screen.style.animation = "toRight 0.8s ease-in-out forwards";
      setTimeout(() => {
        screen.style.animation = "";
      }, animTime);
    }

    function comeRight(screen) {
      screen.style.animation = "comeRight 0.8s ease-in-out forwards";
      setTimeout(() => {
        screen.style.animation = "";
      }, animTime);
    }

    function comeLeft(screen) {
      screen.style.animation = "comeLeft 0.8s ease-in-out forwards";
      setTimeout(() => {
        screen.style.animation = "";
      }, animTime);
    }
    //Sort positioning. Don't want images to overlap
    function sortPositioning(mainScreen, leftScreen, rightScreen) {
      //If right screen is undefined. We need to repeat first screen again
      if (rightScreen === undefined) {
        rightScreen = screenStore[0];
      }
      //If left screen is undefined. We use the last screen
      if (leftScreen === undefined) {
        leftScreen = screenStore[numOfScreens - 1];
      }
      screenStore.forEach((screen) => {
        if (screen === mainScreen) {
          screen.style.display = "block";
          screen.style.left = "0px";
        } else if (screen === leftScreen) {
          screen.style.display = "block";
          screen.style.left = "-100%";
        } else if (screen === rightScreen) {
          screen.style.display = "block";
          screen.style.left = "100%";
        } else {
          screen.style.display = "none";
        }
      });
    }
    //Auto Scroll feature
    let carousel = document.getElementById("carousel-1");
    let scrollTime = Number(carousel.getAttribute("auto-scroll"));
    //Only implement the feature if the user has included the attribute 'auto-scroll'.
    if (scrollTime) {
      //Auto Scroll will be set up the very first time
      let autoWipe = setInterval(() => {
        startAnim("right");
      }, scrollTime);
      //Clear the timer when they hover on carousel
      carousel.addEventListener("mouseenter", () => {
        clearInterval(autoWipe);
      });
      //Re-initialise the timer when they hover out of the carousel
      carousel.addEventListener("mouseleave", () => {
        autoWipe = setInterval(() => {
          startAnim("right");
        }, scrollTime);
      });
    }
  </script>
  <!--Script. Do not touch!-->
</body>

</html>