

if (obj_player.isAlive = false) {
	instance_destroy()
};

if obj_shop.canBuyPoison = false {bulletType = 1};
if obj_shop.canBuyFrost = false {bulletType = 2};
if (obj_shop.canBuyPoison = false && obj_shop.canBuyFrost = false) {bulletType = 3};
if obj_shop.canBuyLifeSteal = false {lifeSteal = true};


//if bulletType = 1 {bulletSprite = spr_poison};
//if bulletType = 2 {bulletSprite = spr_frost};
//if bulletType = 3 {bulletSprite = spr_ultimate};


