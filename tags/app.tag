<app>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>Less is More
          <span class="float-right">
            <button hide={ user } onclick={ login } class="btn btn-success">LOGIN</button>
            <button if={ user } class="btn btn-secondary btn-lg">Ask for Donation</button>
            <button if={ user } class="btn btn-secondary btn-lg">Donate</button>
            <small if={ user }>{ user.displayName }
              <button onclick={ logout } class="btn btn-outline-dark">LOGOUT</button>
            </small>
          </span>
        </h1>
        <img src="../assets/Log-in.jpg" alt="login_img" hide={ user } width="100%">
      </div>
    </div>
  </div>

  <div class="">
    <homePage></homePage>
  </div>





  <script>
  	this.user = null;
    console.log(this.user);


    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
	    firebase.auth().signInWithPopup(provider);
    }

    logout() {
      firebase.auth().signOut().then(function() {
      })
    }


    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;
      } else {
        this.user = null;
      }
      this.update();
    });


  </script>

  <style>

  </style>






</app>
