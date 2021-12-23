<template>
   <section class="slider">
   
      <h1>
         CSS slider <br /><span>with
         scroll snapping, scroll timeline 
         and bottom navigation</span>   
      </h1>

      <a href="https://dev.to/fcalderan/a-css-carousel-with-snapping-points-and-a-scroll-linked-navigation-5h6j"  target="_blank">Read the article on dev.to</a>
      
      <div>
         <ul id="s">
            <li id="s1">Slide 1</li>
            <li id="s2">Slide 2</li>
            <li id="s3">Slide 3</li>
            <li id="s4">Slide 4</li>
         </ul>
      </div>
      
      <nav>
         <a href="#s1">Go to Slide 1</a>
         <a href="#s2">Go to Slide 2</a>
         <a href="#s3">Go to Slide 3</a>
         <a href="#s4">Go to Slide 4</a>
      </nav>
      
      <p class="warning">
         Your browser doesn't support <code>animation-timeline</code>. 
         <br /><br />Please, try this demo on Chrome Canary with the
         <code>--enable-experimental-web-platform-features</code> 
         flag enabled.
      </p>
      
      
      <p>
         Use the navigation or swipe left/right on the carousel.
      </p>
      
      <p>
         <b>— No JS required —</b><br /><br />
         When you click on a dot (anchor) the 
         page could scroll vertically so I've set a smooth 
         <code>scroll-behavior</code> and a 
         <code>scroll-padding-top</code> on the root. 
         Every dot is a permalink as well, thus 
         you may even share a URL showing a specific 
         slide of the carousel on page load.
      </p>

   </section>

</template>
<script>

</script>
<style  scoped>
  /* html { 
   scroll-behavior: smooth; 
   scroll-padding-top: 4rem;
}
 */

.slider div {
   /* need to hide the horizontal scrollbar */
   overflow: hidden;   
   
   /* using logical properties */
   inline-size: 80%;
   min-inline-size: 300px;
   max-inline-size: 600px;
   background-color: rgba(255, 25, 25, 0.486);

   margin: 4rem auto 3rem;
   aspect-ratio: 7 / 4;
   border: 1px rgb(209, 52, 52) solid;
   border-radius: 1rem;
   box-shadow: 0 0 40px rgba(0, 0, 20, .25);
}


.slider ul {
   display: flex;
   flex-flow: row nowrap;
   overflow-x: scroll;
   scroll-snap-type: x mandatory;
   scroll-behavior: smooth;
   block-size: calc(100% + 25px);   
   cursor: ew-resize;
}

.slider li {
   flex: 0 0 100%;
   block-size: calc(100% - 25px);
   display: inherit;
   justify-content: center;
   align-items: center;
   scroll-snap-align: start;
   scroll-snap-stop: always;
}



.slider nav {
   --gap: .75rem;
   
   position: relative;
   display: flex;
   gap: var(--gap);
   margin: 0 auto;
   inline-size: max-content;
}


@supports (animation-timeline: works) {
   
   
   .slider .warning {
      display: none;
   }
   
   .slider nav::before, .slider nav a {
      inline-size: 1rem;
      aspect-ratio: 1;
      border-radius: 50%;
      background: #9bc;
   }

   .slider nav a {
      text-indent: 100%;
      overflow: hidden;
      white-space: nowrap;
      opacity: .33;
   }


   /* timeline animation */
   @scroll-timeline slide {
      source: selector(#s);
      orientation: inline; 
      time-range: 1s;
   }

   .slider nav::before {
      content: "";
      position: absolute;
      z-index: 1;
      display: block;
      cursor: not-allowed;
      transform: translateX(
         calc((100% + var(--gap)) * calc(var(--slide) - 1)));
      animation: dot 1s steps(1, end) 0s forwards;
      animation-timeline: slide;
   }
   
   .slider nav {
      margin-bottom: 2rem;
   }
   
   

   @keyframes dot {
      0%      { --slide: 1; }
      16.666% { --slide: 2; }
      50%     { --slide: 3; } 
      83.333%, 100% { --slide: 4; }
   }
}


@supports (not (animation-timeline: works)) {
   .slider nav {
      display: none;
   }
   
   /* :root:hover .slider .warning {
      display: block;
   } */
}













/* The following declarations are not strictly 
 * relevant for this demo to work 
 */

.slider {
   text-align: center;
   font-family: "Montserrat";
   line-height: 1.5;
   padding: 0 1rem;
}

.slider * {
   box-sizing: border-box;
}

.slider h1 {
   font-weight: 700;
   font-size: 3.4rem;
   line-height: 1.2;
   margin-top: 2rem;
   color: #313131;
   font-family: 'Hachi Maru Pop', cursive;
   padding: 0 3rem;
}

.slider h1 + a {
   font-family: 'Hachi Maru Pop', cursive;
   color: yellowgreen;
   display: block;
   font-size: 1.4rem;
   margin: 5rem 0;
}


.slider h1 span {
   color: #9bc;
   display: block;
   font-size: 50%;
   line-height: 1.5;
   margin-top: 1rem;
}

.slider li {
   font-size: 2rem;
   color: rgb(255, 255, 255);
}

.slider .warning {
   position: fixed;
   display: none;
   left: 50%;
   top: 50%;
   box-shadow: 0 0 0 50vmax rgba(127,155,188, .75);
   text-align: left;
   transform: translate(-50%, -50%);
   font-size: 1.2rem;
   border-radius: 1.2rem;
   padding: 3rem;
   margin: 0 auto;
   line-height: 1.7;
   color: #313139;
   border: 1px yellowgreen solid;
   background: #fbfbff;
   inline-size: 86%;
   max-inline-size: 800px;
}

.slider code {
   background: #e6e9ef;
   padding: .1rem .2rem;
   border-radius: .25rem;
}

.slider p {
   display: block;
   inline-size: 80vw;
   margin: 0 auto;
   font-family: 'Hachi Maru Pop', cursive;
   color: #313131;
   margin-bottom: 3rem;
}

.slider b {
   font-size: 1.2rem;
   color: #9bc;
}

.slider .demo {
   font-family: 'Hachi Maru Pop', cursive;
   display: block;
   color: yellowgreen;
   font-size: 1.2rem;
   margin: 2rem auto 0 auto;
}


</style>