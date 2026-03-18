## Rend Origin

A 1.21.1 Minecraft datapack adding a custom origin for use with the Origins mod. It is intended to provide a polished and fully furnished experience, but drastically alter how you approach the game. Multiple players playing as a Rend are supported.

This was made for fun as a side project >:D

### Dependencies

This is a **1.21.1** datapack made for **Origins 1.13.0 pre-release 1**. It is unlikely to function with older versions of Minecraft or Origins!

Mod downloads:

- [Origins](https://modrinth.com/mod/origins)
- [Pehkui](https://modrinth.com/mod/pehkui)

### Installation

Download the latest `rend_datapack.zip` and `rend_resources.zip` from [releases](https://github.com/dLogan807/rend-origin/releases). There's no need to unzip the files! Copy the datapack to your world's datapack folder and the resource pack to your resource pack folder.

### Lore

A specialised subclass of an ancient race that invaded the Nether. Not excelling in physical strength but making up for it in agility. Few of them have managed to survive the millennia of entombment, having sealed themselves away in makeshift sarcophagi. Those who have are exceedingly weak, making the chances of them ever escaping the hell they created near-insurmountable.

### Gameplay

Especially when starting out, this is a difficult origin to play! Your XP level is an important mechanic which determines your strength and affects many of your abilities. Hence, dying can be _very_ detrimental! Not all is woeful, however: abilities can be obtained as you progress and explore.

### Powers

Each power is accompanied by tooltips with detailed explanations of the power's effects.

<details>
<summary>Show power list screenshot</summary>
<img width="350" height="1382" alt="rend power list scaled" src="https://github.com/user-attachments/assets/3090d53f-d5b6-47ec-928c-93cfb2c8be56" />
<br>Is that all? <i>You can't help but feel that you're forgetting something...</i>    
</details>

## Questions and Answers

<details>
    <summary><b>Why do I need Pehkui? Is the resourcepack important?</b></summary>
    <ol>
        <li>
            Pehkui is required for altering the follow range of entities for the player. In 1.21.1, setting a mob's follow range <a href="https://bugs.mojang.com/browse/MC/issues/MC-145656">does not work</a>. This is not a size-changing origin.
        </li>
         <li>
            While you don't <i>need</i> the resource pack, I highly recommended it! It's used for custom items, death messages, resource bars, and a custom model.
        </li>
    </ol>
</details>
<br>

<details>
    <summary><b>Is it optimised?</b></summary>
    That is the intention, and it generally only minimally drops fps. However, when placing many Animated Java models, a significant fps drop <i>will</i> occur.
</details>
<br>

<details>
    <summary><b>How stable is it?</b></summary>
    Well, there will probably be some bugs or powers which don't quite work as intended :P
    <br><br>
    The most likely areas are powers that involve entity sets. These don't always behave as expected, but most should account for potential failures.
</details>
<br>

<details>
    <summary><b>Can this be used with older Origins/Minecraft versions?</b></summary>
    The datapack relies heavily on Minecraft function features added in 1.20.2 and 1.20.3: <code>Function Macros</code> and <code>/return</code>, respectively.
</details>
<br>

## Changing Origin

Before switching to a different origin, run `function rend:debug/reset/remove_tags_and_team`.

After you've switched, run `function rend:debug/reset/remove_all_modifiers`.

## Testing

<details>
    <summary><code>(Spoiler)</code> List of functions for testing</summary>
    <h3>Set maximum mana</h3>
     Run <code>/resource set @s rend:mana/mana_capacity 100</code>
    <h3>Obtaining items</h3>
    <ul>
        <li>All items: <code>/function rend:debug/give/all_items</code></li>
        <li>Soul Staff: <code>/function rend:debug/give/soul_staff</code></li>
        <li>Spell Tomes: <code>/function rend:debug/give/spell_tomes</code></li>
        <li>Mana Potion: <code>/function rend:debug/give/mana_potion</code></li>
        <li>Fallen Tether Doll: <code>/function rend:debug/give/fallen_tether_doll</code></li>
    </ul>
   
</details>

## Credits

- [Origins](https://modrinth.com/mod/origins) for making this all possible.
- [Pehkui](https://modrinth.com/mod/pehkui) for providing a simple solution to a frustrating problem.
- [Animated Java](https://animated-java.dev/) for enabling creating custom models and animations without needing another dependency.
- Davide Ciacco's [Alchemy Circle Generator](https://ciaccodavi.de/qbdp/acg/) for inspiration.
- kemo14331's [Particle Converter](https://github.com/kemo14331/Particle-Converter) for enabling porting images to functions.
- Friends for helping playtest the Rend!
