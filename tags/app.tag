<app>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="headline">Less is More
          <span class="float-right">
            <button hide={ user } onclick={ login } class="btn btn-success">LOGIN</button>
            <button if={ user } class="btn btn-secondary btn-sm">Ask for Donation</button>
            <button if={ user } class="btn btn-secondary btn-sm">Donate</button>
            <small class="username" if={ user }>{ user.displayName }
              <button onclick={ logout } class="btn btn-outline-dark btn-sm">LOGOUT</button>
            </small>
          </span>
        </h1>
        <hr class="hr">
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
.headline {
  font-family: 'Raleway', sans-serif; font-weight:100;
  padding-bottom: 10px;
  padding-top: 10px;
  box-shadow: 3px;

}
.username {
  font-family: 'Raleway', sans-serif; font-weight:400;
  font-size: 25px;

}

.hr {

  shadow: 5px;
}
  </style>






</app>
