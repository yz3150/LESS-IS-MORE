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
          <div class="form-group" ref="image" onclick={ updateImage }>
            <p>Choose Image</p>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="image" id="wantedItemImgShirt" value="../assets/illustration_shirt.jpg">
              <label class="form-check-label" for="wantedItemImg">
                <img src="../assets/illustration_shirt.jpg" alt="illustration_shirt" width="50%">
              </label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="image" id="wantedItemImgPants" value="../assets/illustration_pants.jpg">
              <label class="form-check-label" for="wantedItemImg">
                <img src="../assets/illustration_pants.jpg" alt="illustration_pants" width="50%">
              </label>
            </div>
          </div>

          <div class="form-group">
            <label style="font-size:18px" for="item-name">Name of your item</label><br>
            <input name="item-name" ref="itemWantedName">
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

          <div class="form-group" ref="gender" onclick={ updateGender }>
            <p>Choose GENDER:</p>
            <div class="form-check form-check-inline">
              <input id="genderMale" class="form-check-input" type="checkbox" value="male" checked>
              <label class="form-check-label" for="genderMale">Male</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="genderFemale" class="form-check-input" type="checkbox" value="female">
              <label class="form-check-label" for="genderFemale">Female</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="genderNeutral" class="form-check-input" type="checkbox" value="neutral">
              <label class="form-check-label" for="genderNeutral">Neutral</label>
            </div>

          </div>

          <div class="form-group" ref="color" onclick={ updateColor }>
            <p>Choose COLOR:</p>
            <div class="form-check form-check-inline">
              <input id="colorBlack" class="form-check-input" type="checkbox" value="black" checked>
              <label class="form-check-label" for="colorBlack">Black</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorWhite" class="form-check-input" type="checkbox" value="white">
              <label class="form-check-label" for="colorWhite">White</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorGrey" class="form-check-input" type="checkbox" value="grey">
              <label class="form-check-label" for="colorGrey">Grey</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorRed" class="form-check-input" type="checkbox" value="red">
              <label class="form-check-label" for="colorRed">Red</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorYellow" class="form-check-input" type="checkbox" value="yellow">
              <label class="form-check-label" for="colorYellow">Yellow</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorBlue" class="form-check-input" type="checkbox" value="blue">
              <label class="form-check-label" for="colorBlue">Blue</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorGreen" class="form-check-input" type="checkbox" value="green">
              <label class="form-check-label" for="colorGreen">Green</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="colorPurple" class="form-check-input" type="checkbox" value="purple">
              <label class="form-check-label" for="colorPurple">Purple</label>
            </div>
          </div>





        </div>
        <div class="col-6">




          <div class="form-group" ref="size" onclick={ updateSize }>
            <p>Choose SIZE:</p>
            <div class="form-check form-check-inline">
              <input id="sizeXXS" class="form-check-input" type="checkbox" value="xxs" checked>
              <label class="form-check-label" for="sizeXXS">XXS</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeXS" class="form-check-input" type="checkbox" value="xs">
              <label class="form-check-label" for="sizeXS">XS</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeS" class="form-check-input" type="checkbox" value="s">
              <label class="form-check-label" for="sizeS">S</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeM" class="form-check-input" type="checkbox" value="m">
              <label class="form-check-label" for="sizeM">M</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeL" class="form-check-input" type="checkbox" value="l">
              <label class="form-check-label" for="sizeL">L</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeXL" class="form-check-input" type="checkbox" value="xl">
              <label class="form-check-label" for="sizeXL">XL</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="sizeXXL" class="form-check-input" type="checkbox" value="xxl">
              <label class="form-check-label" for="sizeXXL">L</label>
            </div>
          </div>





          <div class="form-group" ref="condition" onclick={ updateCondition }>
            <p>Choose CONDITION:</p>
            <div class="form-check form-check-inline">
              <input id="conditionNew" class="form-check-input" type="checkbox" value="new" checked>
              <label class="form-check-label" for="conditionNew">New</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="conditionUsedLikeNew" class="form-check-input" type="checkbox" value="used-like-new">
              <label class="form-check-label" for="conditionUsedLikeNew">Used-like New</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="conditionUsedGood" class="form-check-input" type="checkbox" value="used-good">
              <label class="form-check-label" for="conditionUsedGood">Used-good</label>
            </div>
            <div class="form-check form-check-inline">
              <input id="conditionUsedAcceptable" class="form-check-input" type="checkbox" value="used-acceptable">
              <label class="form-check-label" for="conditionUsedAcceptable">Used-acceptable</label>
            </div>
          </div>



          <div class="form-group textarea">
            <label style="font-size:18px" for="story">Share a short story about why you need the item and how the item can help you.</label>
            <textarea class="form-control" rows="6" ref="itemWantedStory"></textarea>
          </div>
        </div>
      </div>
    </div>
  </div>

    </form>

    <button class="btn btn-secondary" type="button">+ Add more items</button>
		<button class="btn btn-secondary" type="button" onclick={ submit }>submit</button>

    <script>
      var tag = this;
      var itemWantedName = "";
      var itemWantedSize = "";
      var itemWantedColor = "";
      var itemWantedGender = "";
      var itemWantedCondition =

      updateImage(event) {
        let checkedEls = [...this.refs.image.querySelectorAll(':checked')];
        itemWantedImage = checkedEls.map(el => el.value);
        console.log(checkedEls);
      }

      updateGender(event) {
        let checkedEls = [...this.refs.gender.querySelectorAll(':checked')];
        itemWantedGender = checkedEls.map(el => el.value);
      }

      updateCategory(event) {
        itemWantedCategory = event.target.value;
      }

      updateColor(event) {
        let checkedEls = [...this.refs.color.querySelectorAll(':checked')];
        itemWantedColor = checkedEls.map(el => el.value);
      }

      updateSize(event) {
        let checkedEls = [...this.refs.size.querySelectorAll(':checked')];
        itemWantedSize = checkedEls.map(el => el.value);
      }

      updateCondition(event) {
        let checkedEls = [...this.refs.condition.querySelectorAll(':checked')];
        itemWantedCondition = checkedEls.map(el => el.value);
      }

      submit() {
        let itemWantedName = this.refs.itemWantedName.value;
        let itemWantedStory = this.refs.itemWantedStory.value;

        console.log(itemWantedName);
        let itemWantedColRef = database.collection("itemWantedCollection");
        let id = itemWantedColRef.doc().id;

        itemWantedColRef.doc(id).set({
          user: firebase.auth().currentUser.displayName,
          id: id,
          name: itemWantedName,
          image: itemWantedImage,
          size: itemWantedSize,
          color: itemWantedColor,
          category: itemWantedCategory,
          condition: itemWantedCondition,
          story: itemWantedStory,
          purpose: "wants to receive",
          timestamp: firebase.firestore.FieldValue.serverTimestamp()
        });
      }
    </script>

  </div>




  <style>

	.adddess{
padding-bottom: 10px;
padding-top: 20px;
	}

  .form{

padding-bottom: 20px;
  }

  .textarea{

  padding-top: 35px;
  }


	</style>


</askfordonation>
