<askfordonation>
  <div class="container justify-content-center">
    <div class="row col-12">
      <h3 class="adddess">Add the description of the item I want</h3>
    </div>
    <form class="form">
      <div class="card bg-light">
				 <div class="card-body">
      <div class="row">
        <div class="col-6">
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="image" id="wantedItemImg" value="wantedItemImg">
            <label class="form-check-label" for="wantedItemImg">
              <img src="../assets/Log-in.jpg" alt="" width="50%">
            </label>
          </div>

          <div class="form-group">
            <label style="font-size:18px" for="item-name">Name of your item</label><br>
            <input name="item-name" ref="itemName">
          </div>

          <div class="form-group">
            <select class="form-control" onchange={ updateCategory }>
              <option value="" selected="selected" disabled="disabled">Category</option>
              <option value="pants">Pants</option>
              <option value="shirt">Shirt</option>
              <option value="sweater">Sweater</option>
              <option value="jacket">Jacket</option>
              <option value="dress">Dress</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" onchange={ updateColor }>
              <option value="" selected="selected" disabled="disabled">Color</option>
              <option value="black">Black</option>
              <option value="white">White</option>
              <option value="grey">Grey</option>
              <option value="red">Red</option>
              <option value="yellow">Yellow</option>
              <option value="blue">Blue</option>
              <option value="green">Green</option>
              <option value="purple">Purple</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" onchange={ updateSize }>
              <option value="" selected="selected" disabled="disabled">Size</option>
              <option value="xxs">XXS</option>
              <option value="xs">XS</option>
              <option value="s">S</option>
              <option value="m">M</option>
              <option value="l">L</option>
              <option value="xl">XL</option>
              <option value="xxl">XXL</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" onchange={ updateCondition }>
              <option value="" selected="selected" disabled="disabled">Condition</option>
              <option value="new">New</option>
              <option value="used-like-new">Used-like New</option>
              <option value="used-good">Used-good</option>
              <option value="used-acceptable">Used-acceptable</option>
            </select>
          </div>


        </div>
        <div class="col-6">
          <div class="form-group">
            <label style="font-size:18px" for="story">Share a short story about why you need the item and how the item can help you.</label>
            <textarea class="form-control" rows="5" ref="itemStory"></textarea>
          </div>
        </div>
      </div>
    </div>
  </div>
    </form>
      <button class="btn btn-secondary" type="button">+ Add more items</button>
      <button class="btn btn-secondary" type="button" onclick={ submit }>Submit</button>
  </div>




  <style>

	.adddess{
padding-bottom: 10px;
padding-top: 20px;
	}

  .form{

padding-bottom: 20px;

  }


	</style>


</askfordonation>
