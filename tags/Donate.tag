<donate>
<div class="container justify-content-center">
	<div class="row col-12">
		<h3>Add description to my donation</h3>
	</div>
	<form>
		<div class="row">
			<div class="col-6">
				<div>

					<div class="form-group">
						<label style="font-size:18px" for="item-image">Upload an image of your item</label>
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="item-image" required="required">
							<label class="custom-file-label" for="item-image">Choose file...</label>
						</div>
					</div>
				</div>
				<div>

					<div class="form-group">
						<label style="font-size:18px" for="item-name">Name of your item</label><br>
						<input name="item-name" id="item-name">
					</div>
						 <button class="btn btn-secondary" type="submit">Submit</button>
				</div>
				<div>
					<div>
						<fieldset class="form-group">
							<legend style="font-size:18px" for="categoryOptions">Category of your item</legend>
							<div class="form-check form-check-inline">
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="categoryOptions" id="pants">
									<label class="form-check-label" for="pants">Pants</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="categoryOptions" id="shirt">
									<label class="form-check-label" for="shirt">Shirt</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="categoryOptions" id="sweater">
									<label class="form-check-label" for="sweater">Sweater</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="categoryOptions" id="jacket">
									<label class="form-check-label" for="jacket">Jacket</label>
								</div>
								<div class="form-check form-check-inline">
									<input type="radio" class="form-check-input" name="categoryOptions" id="dress">
									<label class="form-check-label" for="dress">Dress</label>
								</div>
							</div>
						</fieldset>
					</div>
				</div>

				<div>
					<fieldset class="form-group">
						<legend style="font-size:18px" for="colorOptions">Color</legend>
						<div class="form-check form-check-inline">
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" name="colorOptions" id="black">
								<label class="form-check-label" for="black">Black</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" name="colorOptions" id="white">
								<label class="form-check-label" for="white">White</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" name="colorOptions" id="grey">
								<label class="form-check-label" for="grey">Grey</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" name="colorOptions" id="yellow">
								<label class="form-check-label" for="yellow">Yellow</label>
							</div>
							<div class="form-check form-check-inline">
								<input type="radio" class="form-check-input" name="colorOptions" id="red">
								<label class="form-check-label" for="red">Red</label>
							</div>
						</div>
					</fieldset>
				</div>

				<div>

					<fieldset class="form-group">
						<legend style="font-size:18px" for="sizeOptions">Size</legend>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="XXS">
							<label class="form-check-label" for="XXS">XXS</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="XS">
							<label class="form-check-label" for="XS">XS</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="S">
							<label class="form-check-label" for="S">S</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="M">
							<label class="form-check-label" for="M">M</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="L">
							<label class="form-check-label" for="L">L</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="XL">
							<label class="form-check-label" for="XL">XL</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="sizeOptions" id="XXL">
							<label class="form-check-label" for="XXL">XXL</label>
						</div>
					</fieldset>

				</div>
				<div>

					<fieldset class="form-group">
						<legend style="font-size:18px" for="conditionOptions">Condition of your item</legend>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="conditionOptions" id="new">
							<label class="form-check-label" for="new">New</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="conditionOptions" id="like-new">
							<label class="form-check-label" for="good">Used-like new</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="conditionOptions" id="good">
							<label class="form-check-label" for="good">Used-good</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="conditionOptions" id="acceptable">
							<label class="form-check-label" for="acceptable">Used-acceptable</label>
						</div>
					</fieldset>

				</div>
			</div>
			<div class="col-6">
				<div class="form-group">
					<label style="font-size:18px" for="story">Please share a story of the item you'd like to donate.</label>
					<textarea class="form-control" rows="5" id="story"></textarea>
				</div>
			</div>
		</div>
	</form>

</div>
</donate>
