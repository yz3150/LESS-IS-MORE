<itemwanted-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <span class="userName">{ item.userName }</span>
    </div>

<div class="card-body">
  <p style="text-align:center">
    <strong>{ itemWanted.user }</strong>
    { itemWanted.purpose }</p>
  <img src={ itemWanted.image } alt="itemWanted_img" width="100%">
  <div class="itemWanted-properties">
    <span>{ itemWanted.category } | { itemWanted.size } | { itemWanted.color } | { itemWanted.condition }</span>
  </div>
  <hr>
  <div class="story-properties">
    <p>Story: { itemWanted.story }</p>
  </div>
</div>
    <div class="card-footer">
      <div class="row">
        <div class="col-8">
          <button type="button" name="button" class="btn btn-secondary">Learn More</button>
        </div>
        <div class="col-4">
          <button if={ this.itemWanted.user == currentUser } type="button" name="button" class="btn btn-outline-secondary" onclick={ delete }>Delete</button>
        </div>
      </div>
    </div>

    <script>
      var tag = this;
      var itemWantedColRef = database.collection('itemWantedCollection');
      let itemsWantedByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemsWantedcollection");

      delete() {
        itemWantedColRef.doc(this.itemWanted.id).delete();
        itemsWantedByUsersColRef.doc(this.itemWanted.id).delete();
        console.log("delete");
      }
    </script>

    <style>
      .itemWanted-properties {
        position: relative;
        text-align: center;
        top: 20px;
        bottom: 60px;
      }

      .story-properties {
        position: relative;
        top: 20px;
      }

      hr {
        position: relative;
        top: 17px;
        width: 75%;
      }

      .card-body{
        background-color: #c3b8a7;
      }



    </style>
</itemwanted-card>
