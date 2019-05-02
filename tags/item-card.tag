<item-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <!-- <img src={ user.profileUrl } alt="profilePic" class="userProfile"> <span class="userName">{ item.userName }</span> -->
    </div>

    <div class="card-body">
      <p>name { item.name }</p>
      <!-- <p>purpose{ item.purpose }</p> -->
      <!-- <img src={ item.mediaURL }> -->

      <!-- <span>Catogory{ item.category }</span> <span>Size { item.size }</span> <span>Color{ item.color }</span> <span>Condition{ item.condition }</span> <p>Story{ item.story }</p> -->
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
    var itemColRef = database.collection('itemCollection');

    delete() {
      database.collection("itemCollection").doc(this.item.id).delete();
      console.log("delete");
    }
  </script>
</item-card>
