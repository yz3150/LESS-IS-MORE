<myProfile>
  <div class="container">
    <div class="row">
      <div class="col-4">
        <p>My story</p>


      </div>
      <div class="col-4">
        <item-card each={ item_user, i in items_user } items={ items_user }></item-card>
      </div>
      <!-- <div class="col-4">
        <itemwanted-card each={ itemWanted, i in itemsWanted } itemswanted={ itemsWanted }></itemwanted-card>
      </div> -->

    </div>
  </div>

  <script>
  var tag = this;
  var item_userColRef = database.collection("item_userCollection");


    item_userColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItems_user = [];
      snapshot.forEach(function (doc) {
        colItems_user.push(doc.data());
      });
      tag.items = colItems_user;
      tag.update();
    })
    


  // var itemWantedColRef = database.collection("itemWantedCollection");
  //
  // itemWantedColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
  //   var colItemsWanted = [];
  //   snapshot.forEach(function (doc) {
  //     colItemsWanted.push(doc.data());
  //   });
  //   tag.itemsWanted = colItemsWanted;
  //   tag.update();
  // }

  </script>
</myProfile>
