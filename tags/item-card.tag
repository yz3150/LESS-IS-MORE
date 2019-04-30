<item-card>
  <div class="card itemlist">
    <div class="card-header bg-light">
      <img src={ user.profileUrl } alt="profilePic" class="userProfile">
      <span class="userName">{ item.userName }</span>
    </div>

    <div class="card-body">
      <p>purpose{ item.purpose }</p>
      <img src={ item.img } width="80%">
      <span>Catogory{ item.category }</span>
      <span>Size { item.size }</span>
      <span>Color{ item.color }</span>
      <span>Condition{ item.condition }</span>
      <p>Story{ item.story }</p>
    </div>
    <div class="card-footer">
      <button type="button" name="button">LEARN MORE</button>
    </div>
  </div>
</item-card>
