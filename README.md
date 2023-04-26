# Boss Fight Reflection

### Did you get inspiration from a boss from another game? If so, which game? (Minimum 1 Sentence)

> Not necessarily; I drew inspiration from the game idea you mentioned during the enemy NPCs tutorials.

### Did you find it easy to create your own mechanics? Which boss mechanics were the easiest to implement? (Minimum 2 Sentences)

> I had difficulty formulating the boss mechanics, but the easiest mechanic to implement is when the boss spawns enemies.

### What was the hardest part of this project? What did you do to help you get past this part? (Minimum 2 Sentences)

> The most challenging part was when I had to implement the lasers as they were how the boss would be damaged, and it took a while to get them to work. The trick was to set immunities for the boss so he wouldn't lose all of his health at once

### Debugging is an important part of the iterative design process. Describe a bug you encountered and how you went about fixing it. (Minimum 4 Sentences)

> I encountered a bug with the lasers where the player would lose all their health if they hit a laser. This issue took debug messages to discover some underlying error with the code that didn't allow the player to not be hit only once. The resolution was to start the health system again, using a similar approach to the brick break lives. This worked better as I didn't have to deal with objects.
