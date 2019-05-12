<myprofile>
  <div class="container">
    <div class="row">
      <div class="col-4">
        <p>My story</p>
      </div>
      <div class="col-4">
        <item-card each={ item, i in items } items={ items }></item-card>
      </div>
      <div class="col-4">
        <item-card each={ item, i in itemsWanted } itemswanted={ itemsWanted }></item-card>
      </div>
      </div>

    </div>
  </div>

  <script>
    var tag = this;
    let itemsByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemscollection");
    let itemsWantedByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemsWantedcollection");

    itemsByUsersColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItems = [];
      snapshot.forEach(function (doc) {
        colItems.push(doc.data());
      });
      tag.items = colItems;
      tag.update();
    })

    itemsWantedByUsersColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItemsWanted = [];
      snapshot.forEach(function (doc) {
        colItemsWanted.push(doc.data());
      });
      tag.itemsWanted = colItemsWanted;
      tag.update();
    })
  </script>
</myprofile>
