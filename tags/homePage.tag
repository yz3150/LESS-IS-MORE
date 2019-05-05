<homepage>
  <div class="container justify-content-center">
    <div class="row col-12">
      <h3>Newest Posts</h3>
    </div>
    <div class="row">
      <div class="col">
        <item-card each={ item, i in items } items={ items }></item-card>
        <itemwanted-card each={ itemWanted, i in itemsWanted } itemswanted={ itemsWanted }></itemwanted-card>
      </div>
    </div>
    <div class="row">
      <button type="button" name="button">VIEW MORE</button>
    </div>
  </div>

  <script>
    var tag = this;
    var itemColRef = database.collection("itemCollection");

    itemColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItems = [];
      snapshot.forEach(function (doc) {
        colItems.push(doc.data());
      });
      tag.items = colItems;
      tag.update();
    })

    var itemWantedColRef = database.collection("itemWantedCollection");

    itemWantedColRef.orderBy('timestamp', 'desc').onSnapshot(function (snapshot) {
      var colItemsWanted = [];
      snapshot.forEach(function (doc) {
        colItemsWanted.push(doc.data());
      });
      tag.itemsWanted = colItemsWanted;
      tag.update();
    })
  </script>
</homepage>
