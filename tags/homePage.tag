<homepage>
  <div class="container justify-content-center">
    <div class="row col-12">
      <h3>Newest Posts</h3>
    </div>
    <div class="row">
        <item-card  class="col-4" each={ item, i in items } items={ items }></item-card>
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
    </script>

    <style>
      item-card{
        margin-top: 10px;
        margin-bottom: 10px;
      }

      h3{
        margin-top: 20px;

      }
    </style>
</homepage>
