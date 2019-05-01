<homepage>
  <div class="container">
    <div class="row">
      <h2>NEWEST POSTS</h2>
    </div>
    <div class="row">
      <div class="col">
        <item-card each ={ item, i in items } items={ items }></item-card>
    </div>
    <div class="row">
      <button type="button" name="button">VIEW MORE</button>
    </div>
  </div>

  <script>
    var tag = this;

    var itemColRef = database.collection("itemCollection");

    itemColRef.orderBy('timestamp', 'desc').onSnapshot(function(snapshot){
      var colItems = [];
      snapshot.forEach(function(doc){
        colItems.push(doc.data());

      });
      tag.items = colItems;
      tag.update();
    })
  </script>
</homepage>
