package main

type WishlistsModel struct {
	id int
	uuid string
	user_id int
	title string
	created string nil
	updated string nil
}

func (wishlist *WishlistsModel) getWishlist(list_id int nil) {
}

func (wishlist *WishlistsModel) createWishlist() {
}

// will use PATCH
func (wishlist *WishlistsModel) updateWishlist(list_id int nil) {
}

func (wishlist *WishlistsModel) deleteWishlist(list_id int nil) {
}
