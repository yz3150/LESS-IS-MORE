<donate>

	<div class="container justify-content-center">
		<div class="row col-12">
			<h3 class="adddes">Add description to my donation</h3>
		</div>
		<form>
			<div class="card bg-light">
				 <div class="card-body">
			<div class="row">
				<div class="col-6">

					<div class="form-group">
						<label style="font-size:18px" for="item-image">Upload an image of your item</label>
						<div class="custom-file">
							<input type="file" ref="media" class="custom-file-input" onchange={ handleFiles }>
							<label class="custom-file-label" for="item-image">{ fileLabel }</label>
						</div>
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

					<button class="btn btn-secondary" type="button" onclick={ submit }>submit</button>

				</div>
				<div class="col-6">
					<div class="form-group">
						<label style="font-size:18px" for="story">Please share a story of the item you'd like to donate.</label>
						<textarea class="form-control" rows="5" ref="itemStory"></textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
		</form>

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
			let itemsRef = database.collection('items');
			let id = itemsRef.doc().id;
			let itemName = this.refs.itemName.value;
			let itemStory = this.refs.itemStory.value;

			if (itemName !== undefined) {

				let itemColRef = database.collection("itemCollection");
				let id = itemColRef.doc().id;

				fileRef.put(this.file).then(snapshot => {
					console.log('uploaded file');
					return snapshot.ref.getDownloadURL();
				}).then(downloadURL => {
					itemColRef.doc(id).set({
						owner: firebase.auth().currentUser.displayName,
						id: id,
						name: itemName,
						size: itemSize,
						color: itemColor,
						category: itemCategory,
						condition: itemCondition,
						story: itemStory,
						mediaURL: downloadURL,
						purpose: "wants to donate",
						timestamp: firebase.firestore.FieldValue.serverTimestamp()
					});

					this.update();
				});

				observable.trigger('modeChange');
			}

		}
	</script>

	<style>

	.adddes{
padding-bottom: 10px;
padding-top: 20px;

	}
	</style>



</donate>
