healing = irandom_range(35,65);
if (healing + obj_player.hp > obj_player.playerMaxHealth){
	healing = obj_player.playerMaxHealth - obj_player.hp;
}
ChangeHealth(other, healing)

global.points += 50 * obj_player.combo;

instance_destroy(self)	