<donate>

	<div class="container justify-content-center">
		<div class="row col-12">
			<h3 class="adddes">Add description to my donation</h3>
		</div>
		<form class="form">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-6">

							<div class="form-group">
								<label style="font-size:16px" for="item-image">
									<strong>Upload an image of your item</strong>
								</label>
								<div class="custom-file">
									<input type="file" ref="media" class="custom-file-input" onchange={ handleFiles }>
									<label class="custom-file-label" for="item-image">{ fileLabel }</label>
								</div>
							</div>

							<div class="form-group">
								<label style="font-size:16px" for="item-name">
									<strong>Name of your item</strong>
								</label><br>
								<input name="item-name" ref="itemName">
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

							<div class="form-group">
								<select class="form-control" onchange={ updateColor }>
									<option value="" selected="selected" disabled="disabled">Color</option>
									<option value="Black">Black</option>
									<option value="White">White</option>
									<option value="Grey">Grey</option>
									<option value="Red">Red</option>
									<option value="Yellow">Yellow</option>
									<option value="Blue">Blue</option>
									<option value="Green">Green</option>
									<option value="Purple">Purple</option>
								</select>
							</div>

						</div>
						<div class="col-6">

							<div class="form-group">
								<select class="form-control" onchange={ updateSize }>
									<option value="" selected="selected" disabled="disabled">Size</option>
									<option value="XXS">XXS</option>
									<option value="XS">XS</option>
									<option value="S">S</option>
									<option value="M">M</option>
									<option value="L">L</option>
									<option value="XL">XL</option>
									<option value="XXL">XXL</option>
								</select>
							</div>

							<div class="form-group">
								<select class="form-control" onchange={ updateCondition }>
									<option value="" selected="selected" disabled="disabled">Condition</option>
									<option value="New">New</option>
									<option value="Used: like-new">Used: like-new</option>
									<option value="Used: good">Used: good</option>
									<option value="Used: acceptable">Used: acceptable</option>
								</select>
							</div>

							<div class="form-group">
								<label style="font-size:16px" for="story">
									<strong>Please share a story of the item you'd like to donate.</strong>
								</label>
								<textarea class="form-control" rows="5" ref="itemStory"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<button class="btn btn-secondary" type="button">+ Add more items</button>
		<button class="btn btn-secondary" type="button" onclick={ submit }>submit</button>
	</div>

	<script>
		var tag = this;
		var itemName = "";
		let storageRef = firebase.storage().ref();
		let mediaStorageRef = storageRef.child('media');

		this.file = null;
		this.fileLabel = "Choose media file";

		handleFiles(event) {
			let fileInput = event.target;
			let files = fileInput.files;
			let file = files[0];
			let fileName = file.name;
			this.file = file;
			this.fileLabel = fileName;
		}

		updateSize(event) {
			itemSize = event.target.value;
		}

		updateColor(event) {
			itemColor = event.target.value;
		}

		updateCategory(event) {
			itemCategory = event.target.value;
		}

		updateCondition(event) {
			itemCondition = event.target.value;
		}
		submit() {

			let uniqueName = this.file.name + "-" + Date.now();
			let fileRef = mediaStorageRef.child(uniqueName);
			let itemName = this.refs.itemName.value;
			let itemStory = this.refs.itemStory.value;

			if (itemName !== undefined) {

				let itemColRef = database.collection("itemCollection").doc();
				let id = itemColRef.id;
				let itemsByUsersColRef = database.collection("itemsByUsersCollection").doc(firebase.auth().currentUser.displayName).collection("itemscollection").doc(id);

				fileRef.put(this.file).then(snapshot => {
					console.log('uploaded file');
					return snapshot.ref.getDownloadURL();
				}).then(downloadURL => {

					let item = {
						user: firebase.auth().currentUser.displayName,
						id: id,
						name: itemName,
						size: itemSize,
						color: itemColor,
						category: itemCategory,
						condition: itemCondition,
						story: itemStory,
						mediaURL: downloadURL,
						purpose: "donate",
						timestamp: firebase.firestore.FieldValue.serverTimestamp()

					}
					this.update();

					let batch = database.batch();
					batch.set(itemColRef, item);
					batch.set(itemsByUsersColRef, item);

					batch.commit();

				});

				observable.trigger('modeChange');
			}

		}
	</script>

	<style>

		.adddes {
			padding-bottom: 10px;
			padding-top: 20px;
		}

		.form {

			padding-bottom: 20px;
		}

		.card {

			background-color: #E1E6E0;
		}
	</style>

</donate>
