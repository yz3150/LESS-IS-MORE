<app>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1>Less is More
          <span class="float-right">
            <button hide={ user } onclick={ login } class="btn btn-success">LOGIN</button>
            <button if={ user } class="btn btn-secondary btn-lg" onclick={ askForDonation }>Ask for Donation</button>
            <button if={ user } class="btn btn-secondary btn-lg" onclick={ donate }>Donate</button>
            <small if={ user }>{ user.displayName }
              <button onclick={ logout } class="btn btn-outline-dark">LOGOUT</button>
              <button onclick={ toHomepage } class="btn btn-outline-light">Homepage</button>
            </small>
          </span>
        </h1>
        <img src="../assets/Log-in.jpg" alt="login_img" hide={ user } width="100%">
      </div>
    </div>
  </div>

  <div class="">
    <homepage if={ user && mode === "homepage" }></homepage>
    <askfordonation if={ mode === "askForDonation" }></askfordonation>
    <donate if={ mode === "donate"}></donate>
  </div>

  <script>
    var tag = this;
    this.user = null;
    this.mode = "homepage";

    toHomepage() {
      observable.trigger('modeChange');
    }

    askForDonation(event) {
      this.mode = "askForDonation";
    }

    donate(event) {
      this.mode = "donate";
    }

    login() {
      var provider = new firebase.auth.GoogleAuthProvider();
      firebase.auth().signInWithPopup(provider);
    }

    logout() {
      firebase.auth().signOut();
    }

    firebase.auth().onAuthStateChanged(userObj => {
      if (userObj) {
        this.user = userObj;

      } else {
        this.user = null;

      }
      this.update();
    });

    observable.on('modeChange', function(){
      tag.mode = "homepage";
      tag.update();
    });
  </script>

  <style></style>

</app>
