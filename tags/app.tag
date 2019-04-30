<app>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>Less is More
          <span class="float-right">
            <button hide={ user } onclick={ login } class="btn btn-success">LOGIN</button>
            <small if={ user }>{ user.displayName }
              <button onclike={ logout } class="btn btn-danger">LOGOUT</button>
            </small>
          </span>
        </h1>
        <img src="../assets/Log-in.jpg" alt="login_img" hide={ user } width="100%">
      </div>
    </div>
  </div>

  <div class="">
    <homePage></homePage>
    <donate></donate>
    <askForDonation></askForDonation>
    <profile></profile>
  </div>





  <script>
  	this.user = null;
    console.log(this.user);


    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
      console.log("login");
      firebase.auth().signInWithPopup(provider).then(function(result) {
        // This gives you a Google Access Token. You can use it to access the Google API.
        var token = result.credential.accessToken;
        // The signed-in user info.
        tag.user = result.user;
      })}

    logout() {
      firebase.auth().signOut().then(function() {
        // Sign-out successful.
      }).catch(function(error) {
        // An error happened.
      });
      console.log("logout");
      this.user = null;
    }


  //   firebase.auth().onAuthStateChanged(userObj => {
  //   if (userObj) {
  //     this.user = userObj;
  //   } else {
  //     this.user = null;
  //   }
  //   this.update();
  // });


  </script>






</app>
