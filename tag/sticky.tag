<app>
   <h1>{ opts.title }</h1>
   <form name="make" method="POST">
      <input type="text" name="note" placeholder="type title">
      <input type="submit" value="add sticky">
   </form>
   <div name="sticky">
   </div>

   <script>
      var e : any;
      var clickOffsetTop : number;
      var clickOffsetLeft : number;
      var flag : string = "off";

  　　　 document.addEventListener('mousedown', (evt: any) => {
         if (evt.target.id === '') {return;}
         e = document.getElementById(evt.target.id);
         evt = evt || window.event;
         flag = 'on';
         clickOffsetTop = evt.clientY - e.offsetTop;
         clickOffsetLeft = evt.clientX - e.offsetLeft;
         if(!document.all){
            window.getSelection().removeAllRanges();
         }
      }, false);

      document.addEventListener('mouseup', () => {
         flag = 'off';
      }, false);

      document.addEventListener('mousemove', (evt: any) => {
         evt = evt || {};
         if (flag == 'on'){
            e.style.top = evt.clientY - clickOffsetTop + 'px';
            e.style.left = evt.clientX - clickOffsetLeft + 'px';
         }
      }, false);
   </script>

   <style>
      h1 {
         font-family: Comic\ Sans\ MS;
      }
      .column {
         width: 100px;
         height: 100px;
         margin: 10px;
         position: absolute;
         background-color: #f6bfbc;
         text-align: center;
      }
   </style>
</app>
