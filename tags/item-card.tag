<item-card>
  <div class="card itemlist">
    <div class="card-header">
      <span class="userName"><strong>{ this.item.user }</strong></span>
    </div>

    <div if={ this.item.purpose =="donate" } class="card-body-donate">
      <p style="text-align:center" class="para">wants to <strong>{ item.purpose }</strong></p>
      <img src="{ item.mediaURL }" alt="item_img" width="90%">
      <div class="item-properties">
          <p><strong>{ item.category }</strong> | <strong>Size { item.size }</strong> | <strong>{ item.color }</strong> | <strong>{ item.condition }</strong></p>
      </div>
      <hr>
      <div class="story-properties">
        <p><strong>Story:</strong> { item.story }</p>
      </div>
    </div>

    <div if={ this.item.purpose == "receive" } class="card-body-receive">
      <p style="text-align:center" class="para">wants to <strong>{ item.purpose }</strong></p>
      <img src={ item.image } alt="itemWanted_img" width="90%">
      <div class="item-properties">
        <p><strong>{ item.category }</strong> | <strong>Size { item.size }</strong> | <strong> { item.color } </strong> | <strong> { item.condition } </strong></p>
      </div>
      <hr>
      <div class="story-properties">
        <p><strong>Story:</strong> { item.story }</p>
      </div>
    </div>

    <div class="card-footer">
      <div class="row">
        <!--<div class="col-8">
          <button type="button" name="button" class="btn btn-secondary">Learn More</button>
        </div>-->
        <div class="col-4">
          <button if={ this.item.user == currentUser } type="button" name="button" class="btn btn-outline-secondary" onclick={ delete }>Delete</button>
        </div>
    </div>
  </div>

  <script>
    var tag = this;
    console.log(this.purpose);

    var itemColRef = database.collection('itemCollection');
    let itemsByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemscollection");
    var itemWantedColRef = database.collection('itemWantedCollection');
    let itemsWantedByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemsWantedcollection");



    delete() {
      itemColRef.doc(this.item.id).delete();
      itemsByUsersColRef.doc(this.item.id).delete();
      itemWantedColRef.doc(this.item.id).delete();
      itemsWantedByUsersColRef.doc(this.item.id).delete();
      console.log("delete");
    }

  </script>

  <style>
    .item-properties{
      position: relative;
      text-align: center;
      top: 20px;
      bottom: 60px;
    }

    .story-properties{
      position:inherit;
      top: 10px;
    }

    hr{
      position: relative;
      top: 17px;
      width: 75%;
    }

  .para{
    position: relative;
    top: 7px;
  }



  .card-body-donate{
    background-color: #E1E6E0;
    position: relative;
    text-align: center;
    top: 0px;
  }

  .card-body-receive{
    background-color: #c3b8a7;
    position: relative;
    text-align: center;
  }


  .card{
    margin-top: 10px;
    margin-bottom: 10px;
  }




  </style>
</item-card>
