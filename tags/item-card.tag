<item-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <img src={ user.profileUrl } alt="profilePic" class="userProfile"><span class="userName">{ this.opts.user.displayName }</span>
    </div>

    <div class="card-body">
      <p>name { item.name }</p>
      <p>{ item.purpose }</p>
      <img src="{ item.mediaURL }" alt="item_img" width="100%">
      <p>{ item.category } | { item.size } | { item.color } | { item.condition }</p>
      <hr>
      <p>Story: { item.story }</p>
    </div>

    <div class="card-footer">
      <button type="button" name="button" class="btn btn-secondary">Learn more</button>
      <div>
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
</item-card>
