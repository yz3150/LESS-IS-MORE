<itemwanted-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <!-- <img src={ user.profileUrl } alt="profilePic" class="userProfile"> <span class="userName">{ item.userName }</span> -->
    </div>

    <div class="card-body">
      <p>name { itemWanted.name }</p>
      <p>{ itemWanted.purpose }</p>

      <span>{ itemWanted.category } | { itemWanted.size } | { itemWanted.color } | { itemWanted.condition }</span>
      <p>Story: { itemWanted.story }</p>
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
    var itemWantedColRef = database.collection('itemWantedCollection');

    delete() {
      itemWantedColRef.doc(this.itemWanted.id).delete();
      console.log("delete");
    }
  </script>

</itemwanted-card>
