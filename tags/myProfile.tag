<myprofile>
  <div class="container">
    <div class="row">
      <div class="col-3">
        <p>suggestion:</p>
        <item-card if={ this.item.user != currentUser } each={ item, i in itemsWanted} itemswanted={ itemsWanted }></item-card>
      </div>
      <div class="col-3">
        <item-card each={ item, i in itemsByUser } itemsbyuser={ itemsByUser }></item-card>
      </div>

      <div class="col-3">
        <item-card each={ item, i in itemsWantedByUser } itemswantedbyuser={ itemsWantedByUser }></item-card>
      </div>
      <div class="col-3">
        <p>suggestion:</p>
        <item-card if={ this.item.user != currentUser } each={ item, i in items} items={ items }></item-card>
      </div>

    </div>
  </div>

  <script>
    var tag = this;
    var itemColRef = database.collection("itemCollection");
    var itemWantedColRef = database.collection("itemWantedCollection");
    let itemsByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemscollection");
    let itemsWantedByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemsWantedcollection");

    itemsByUsersColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItems = [];
      snapshot.forEach(function (doc) {
        colItems.push(doc.data());
      });
      tag.itemsByUser = colItems;
      tag.update();
    })

    itemsWantedByUsersColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {

      var colItemsWanted = [];
      snapshot.forEach(function (doc) {
        colItemsWanted.push(doc.data());
      });
      tag.itemsWantedByUser = colItemsWanted;
      tag.update();
      var itemWantedCategory = _.map(colItemsWanted, 'category');
      console.log(colItemsWanted);

      // var colItemsWanted = colItemsWanted.filter(item) {   return _.includes(colItemsWanted, "pants"); } console.log(_.includes(colItemsWanted[0], intersection[0])); function (intersection, colItemsWanted) {   return
      // intersection.includes(item.category);
      //
      // }

      itemColRef.orderBy('timestamp', 'desc').limit(6).onSnapshot(function (snapshot) {
        var colItems = [];
        snapshot.forEach(function (doc) {
          colItems.push(doc.data());
        });
        tag.items = colItems;
        tag.update();

        var itemCategory = _.map(colItems, 'category');
        var intersection = _.intersection(itemCategory, itemWantedCategory);
        console.log(intersection);
        console.log(intersection.toString());
        console.log(colItemsWanted);
        console.log(_.includes(colItemsWanted, intersection.toString()));

      })

    })

    itemWantedColRef.orderBy('timestamp', 'desc').limit(6).onSnapshot(function (snapshot) {
      var colItemsWanted = [];
      snapshot.forEach(function (doc) {
        colItemsWanted.push(doc.data());
      });
      tag.itemsWanted = colItemsWanted;
      tag.update();
    })
  </script>
</myprofile>
