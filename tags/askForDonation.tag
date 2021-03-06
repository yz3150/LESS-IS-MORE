<askfordonation>
  <div class="container justify-content-center">
    <div class="row col-12">
      <h3 class="adddess">Add the description of the item I want</h3>
    </div>
    <form class="form">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-6">
              <div class="form-group" ref="image" onclick={ updateImage }>
                <p>
                  <strong>Click image</strong>
                </p>

                <div class="row" style="margin-left:16px;">
                  <div class="col-3 form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="image" id="wantedItemImgPants" value="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2FIllustration_pants.jpg?alt=media&token=87341d89-7b9c-4e68-85d5-4dbecef0d903">
                    <label class="form-check-label" for="wantedItemImgPants">
                      <img src="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2FIllustration_pants.jpg?alt=media&token=87341d89-7b9c-4e68-85d5-4dbecef0d903" alt="illustration_pants" width="75%" style="margin:16px;">
                    </label>
                  </div>
                  <div class="col-3 form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="image" id="wantedItemImgShirt" value="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fillustration_shirt.jpg?alt=media&token=4798f2b8-2246-427d-8b47-11e5fdcf7542">
                    <label class="form-check-label" for="wantedItemImgShirt">
                      <img src="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fillustration_shirt.jpg?alt=media&token=4798f2b8-2246-427d-8b47-11e5fdcf7542" alt="illustration_shirt" width="85%" style="margin:16px;">
                    </label>
                  </div>
                </div>

                <div class="row" style="margin-left:16px;">
                  <div class="col-3 form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="image" id="wantedItemImgSweater" value="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fsweater.png?alt=media&token=7e700d75-5c45-4c02-b2b5-f29cb0b54cdf">
                    <label class="form-check-label" for="wantedItemImgSweater">
                      <img src="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fsweater.png?alt=media&token=7e700d75-5c45-4c02-b2b5-f29cb0b54cdf" alt="illustration_sweater" width="75%" style="margin:16px;">
                    </label>
                  </div>
                  <div class="col-3 form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="image" id="wantedItemImgOutwear" value="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Foutwear.png?alt=media&token=e72ed21c-a3db-4acc-9904-059dda13f3e1">
                    <label class="form-check-label" for="wantedItemImgOutwear">
                      <img src="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Foutwear.png?alt=media&token=e72ed21c-a3db-4acc-9904-059dda13f3e1" alt="illustration_outwear" width="80%" style="margin:16px;">
                    </label>
                  </div>
                  <div class="col-3 form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="image" id="wantedItemImgDress" value="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fdress.png?alt=media&token=b47aafa1-2ce9-48d6-af80-95f24a82224b">
                    <label class="form-check-label" for="wantedItemImgDress">
                      <img src="https://firebasestorage.googleapis.com/v0/b/lessismore-22476.appspot.com/o/media%2Fdress.png?alt=media&token=b47aafa1-2ce9-48d6-af80-95f24a82224b" alt="illustration_dress" width="80%" style="margin:16px;">
                    </label>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <label style="font-size:16px" for="item-name">
                  <strong>Name of your item</strong>
                </label><br>
                <input name="item-name" ref="itemWantedName">
              </div>

              <div class="form-group">
                <select class="form-control" onchange={ updateCategory }>
                  <option value="" selected="selected" disabled="disabled">Category</option>
                  <option value="Pants">Pants</option>
                  <option value="Shirt">Shirt</option>
                  <option value="Sweater">Sweater</option>
                  <option value="Outerwear">Outerwear</option>
                  <option value="Dress">Dress</option>
                </select>
              </div>

              <div class="form-group" ref="gender" onclick={ updateGender }>
                <p>
                  <strong>Gender:</strong>
                </p>
                <div class="form-check form-check-inline">
                  <input id="genderMale" class="form-check-input" type="checkbox" value="male">
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
                <p>
                  <strong>Color:</strong>
                </p>
                <div class="form-check form-check-inline">
                  <input id="colorBlack" class="form-check-input" type="checkbox" value="Black">
                  <label class="form-check-label" for="colorBlack">Black</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorWhite" class="form-check-input" type="checkbox" value="White">
                  <label class="form-check-label" for="colorWhite">White</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorGrey" class="form-check-input" type="checkbox" value="Grey">
                  <label class="form-check-label" for="colorGrey">Grey</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorRed" class="form-check-input" type="checkbox" value="Red">
                  <label class="form-check-label" for="colorRed">Red</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorYellow" class="form-check-input" type="checkbox" value="Yellow">
                  <label class="form-check-label" for="colorYellow">Yellow</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorBlue" class="form-check-input" type="checkbox" value="Blue">
                  <label class="form-check-label" for="colorBlue">Blue</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorGreen" class="form-check-input" type="checkbox" value="Green">
                  <label class="form-check-label" for="colorGreen">Green</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="colorPurple" class="form-check-input" type="checkbox" value="Purple">
                  <label class="form-check-label" for="colorPurple">Purple</label>
                </div>
              </div>

            </div>
            <div class="col-6">

              <div class="form-group" ref="size" onclick={ updateSize }>
                <p>
                  <strong>Size:</strong>
                </p>
                <div class="form-check form-check-inline">
                  <input id="sizeXXS" class="form-check-input" type="checkbox" value="XXS">
                  <label class="form-check-label" for="sizeXXS">XXS</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeXS" class="form-check-input" type="checkbox" value="XXS">
                  <label class="form-check-label" for="sizeXS">XS</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeS" class="form-check-input" type="checkbox" value="S">
                  <label class="form-check-label" for="sizeS">S</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeM" class="form-check-input" type="checkbox" value="M">
                  <label class="form-check-label" for="sizeM">M</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeL" class="form-check-input" type="checkbox" value="L">
                  <label class="form-check-label" for="sizeL">L</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeXL" class="form-check-input" type="checkbox" value="XL">
                  <label class="form-check-label" for="sizeXL">XL</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="sizeXXL" class="form-check-input" type="checkbox" value="XXL">
                  <label class="form-check-label" for="sizeXXL">L</label>
                </div>
              </div>

              <div class="form-group" ref="condition" onclick={ updateCondition }>
                <p>
                  <strong>Condition:</strong>
                </p>
                <div class="form-check form-check-inline">
                  <input id="conditionNew" class="form-check-input" type="checkbox" value="New">
                  <label class="form-check-label" for="conditionNew">New</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="conditionUsedLikeNew" class="form-check-input" type="checkbox" value="Used: like-new">
                  <label class="form-check-label" for="conditionUsedLikeNew">Used: like-new</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="conditionUsedGood" class="form-check-input" type="checkbox" value="Used: good">
                  <label class="form-check-label" for="conditionUsedGood">Used: good</label>
                </div>
                <div class="form-check form-check-inline">
                  <input id="conditionUsedAcceptable" class="form-check-input" type="checkbox" value="Used: acceptable">
                  <label class="form-check-label" for="conditionUsedAcceptable">Used: acceptable</label>
                </div>
              </div>

              <hr>
              <div class="form-group textarea">
                <label style="font-size:16px" for="story">
                  <strong>Share a short story about why you need the item and how the item can help you.</strong>
                </label>
                <textarea class="form-control" rows="11" ref="itemWantedStory"></textarea>
              </div>
            </div>
          </div>
        </div>
      </div>

    </form>

    <button class="btn btn-secondary" type="button">+ Add more items</button>
    <button class="btn btn-secondary" type="button" onclick={ submit }>Submit</button>

    <script>
      var tag = this;
      var itemWantedName = "";
      var itemWantedSize = "";
      var itemWantedColor = "";
      var itemWantedGender = "";
      var itemWantedCondition = "";

      updateImage(event) {
        let checkedEls = [...this.refs.image.querySelectorAll(':checked')];
        itemWantedImage = checkedEls.map(el => el.value);
        console.log(itemWantedImage[0]);
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

        let itemWantedColRef = database.collection("itemWantedCollection").doc();
        let id = itemWantedColRef.id;
        let itemsWantedByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemsWantedcollection").doc(id);

        let item = {
          user: firebase.auth().currentUser.displayName,
          id: id,
          name: itemWantedName,
          image: itemWantedImage[0],
          size: itemWantedSize,
          color: itemWantedColor,
          category: itemWantedCategory,
          condition: itemWantedCondition,
          story: itemWantedStory,
          purpose: "receive",
          timestamp: firebase.firestore.FieldValue.serverTimestamp()

        }

        let batch = database.batch();
        batch.set(itemWantedColRef, item);
        batch.set(itemsWantedByUsersColRef, item);

        batch.commit();

        observable.trigger('modeChange');
      }
    </script>

  </div>

  <style>

    .adddess {
      padding-bottom: 10px;
      padding-top: 20px;
    }

    .form {

      padding-bottom: 20px;
    }

    .textarea {
      padding-top: 0;
    }

    .card {

      background-color: #E1E6E0;
    }
  </style>

</askfordonation>
