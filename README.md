## Circle Throw

Implementation of Circle Throw (and Dragon Tail)'s effect in FR.

> The target is thrown, and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.

### How do I build this?

Open `circle-throw.asm`.

Update `free` to where you want the code to be inserted. `80` bytes of free space are required, and it should start from a word-aligned offset.

Update `EFFECT_CIRCLE_THROW` to whatever effect number you want to give Circle Throw and Dragon Tail.

Put your ROM in the project root directory, name it `rom.gba`, and run `armips circle-throw.asm`. The output will be in `test.gba`.

Obviously, make sure to actually set Circle Throw and Dragon Tail's effect to match `EFFECT_CIRCLE_THROW` before you test it.

### Any caveats?

It repeats the attack animation when a Pokémon is switched out.

The Pokémon that is sent out is random; it's (apparently) supposed to simply be the next Pokémon in order.

### Credits

This is just a modified version of the implementation [here](https://www.pokecommunity.com/showpost.php?p=7638349&postcount=10) which doesn't force a switch out if the Pokémon is immune to the attack.