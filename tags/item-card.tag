<item-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <img src={ user.profileUrl } alt="profilePic" class="userProfile"><span class="userName">{ this.user.displayName }</span>
    </div>

    <div class="card-body">
      <p style="text-align:center">{ item.purpose }</p>
      <img src="{ item.mediaURL }" alt="item_img" width="100%">
      <div class="item-properties">
          <p>{ item.category } | { item.size } | { item.color } | { item.condition }</p>
      </div>
      <hr>
      <div class="story-properties">
        <p>Story: { item.story }</p>
      </div>
    </div>

    <div class="card-footer">
      <div class="row">
        <div class="col-8">
          <button type="button" name="button" class="btn btn-secondary">Learn More</button>
        </div>
        <div class="col-4">
          <button type="button" name="button" class="btn btn-outline-secondary" onclick={ delete }>Delete</button>
        </div>
    </div>
  </div>

  <script>
    var tag = this;
    console.log(this.item.name);
    var itemColRef = database.collection('itemCollection');

    delete() {
      itemColRef.doc(this.item.id).delete();
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
      position: relative;
      top: 20px;
    }

    hr{
      position: relative;
      top: 17px;
      width: 75%;
    }

  </style>
</item-card>
