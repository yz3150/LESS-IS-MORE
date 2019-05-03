<item-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <!-- <img src={ user.profileUrl } alt="profilePic" class="userProfile"> <span class="userName">{ item.userName }</span> -->
    </div>

    <div class="card-body">
      <p>name { item.name }</p>
      <!-- <p>purpose{ item.purpose }</p> -->
      <!-- <img src={ item.mediaURL }> -->

      <span>{ item.category } | { item.size } | { item.color } | { item.condition }</span>
      <p>Story: { item.story }</p>
    </div>
    <div class="card-footer">
      <button type="button" name="button">LEARN MORE</button>
      <div>
        <button type="button" name="button" onclick={ delete }>Delete</button>
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
