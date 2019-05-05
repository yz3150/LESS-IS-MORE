<app>
  <div class="container">
    <div class="row">
      <div class="col">
        <h1 class="headline">Less is More
          <span class="float-right">

            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle btn-lg" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                <button class="dropdown-item " type="button">Profile</button>
                <button class="dropdown-item" type="button">Track my donation</button>
                <button class="dropdown-item" type="button">Track my gift</button>
                <button class="dropdown-item" type="button">Track my frequency</button>
              </div>

              <button hide={ user } onclick={ login } class="btn btn-success">LOGIN</button>
              <button if={ user } class="btn btn-secondary btn-lg" onclick={ askForDonation }>Ask for Donation</button>
              <button if={ user } class="btn btn-secondary btn-lg" onclick={ donate }>Donate</button>
              <small if={ user }>{ user.displayName }
                <button onclick={ logout } class="btn btn-outline-dark">LOGOUT</button>
                <button onclick={ toHomepage } class="btn btn-outline-dark">Homepage</button>
              </small>
          </span>
        </h1>
        <hr class="hr">
        <img src="../assets/Log-in.jpg" alt="login_img" hide={ user } width="100%">
      </div>
    </div>
  </div>

  <div class="">
    <homepage if={ user && mode==="homepage" }></homepage>
    <askfordonation if={ mode==="askForDonation" }></askfordonation>
    <donate if={ mode==="donate" }></donate>
  </div>

  <footer>
    <hr>
    <p style="text-align: center">Made by Yanting, Yuke & Zoe <br>with love &hearts;</p>
  </footer>

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

    observable.on('modeChange', function() {
      tag.mode = "homepage";
      tag.update();
    });
  </script>

  <style>
    .headline {
      font-family: 'Raleway', sans-serif;
      font-weight: 100;
      padding-bottom: 10px;
      padding-top: 10px;
      box-shadow: 3px;

    }

    .username {
      font-family: 'Raleway', sans-serif;
      font-weight: 400;
      font-size: 25px;

    }

    small {
      font-size: 20px;
    }

    hr {
      margin-top: 40px;
    }


  </style>






</app>
