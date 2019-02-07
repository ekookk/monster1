<monster>
  <img src="img/{ petImage }.gif">


  <div>
    <div class="bar hunger">
      <div style="width:{ hunger }%;">&nbsp;</div>
    </div>
    <p>Hunger: { hunger }</p>
  </div>


  <button onclick={ feed }>Feed</button>
  <button onclick={ unfeed }>Not Feed</button>


  <script>
    //make a copy of my pet object and call it that
    var that  = this;

    //initial state
    this.hunger = 50;
    this.petImage = "neutral";

    //tell DOM window to increase hunger every three second
    //console.log(that);
    window.setInterval(function(){
      that.incHunger();
      console.log("wait");
      that.update();
      that.checkStatus();
      <!-- console.log(this); -->
    }, 3000);


    decHunger() {

      this.hunger = this.hunger - 10 < 0 ? 0 : this.hunger - 10;
    }

    incHunger() {
      console.log(this.hunger);
      this.hunger = this.hunger + 10 > 100 ? 100 : this.hunger + 10;
    }

    checkStatus() {
      if (this.hunger >= 60){
        this.petImage = "peppasad";
      } else if (this.hunger <= 10){
        this.petImage = "peppahappy";
      }else{
        this.petImage = "peppaok";
      }
    }

// functions that respond to events
    feed(e) {
      this.decHunger();
      this.checkStatus();
    }

    unfeed(e) {
      this.incHunger();
      this.checkStatus();
    }
  </script>

  <style>
  :scope{
    margin:auto;
  }

  img{
    weight:auto;
    height:200px;
  }

  </style>
</monster>
