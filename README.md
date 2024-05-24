### 'Modularized' tabs in Shiny

This repository shows a method to 'modularize' tabs in Shiny dashboard for easy access and clearer management system. Click [here]([https://ft3pi.shinyapps.io/shiny-modularized-tabs/](https://fendit.shinyapps.io/shiny-modularized-tabs/)) to see the demo via shinyapps.io.

This shiny dashboard contains three 'modules': ```Introduction```, ```Module 1``` and ```Module 2```.

Each module has its own folder and R script that is connected to ```app.R```. User can focus on editing one module by accessing all materials in the corresponding folder, without making any changes in ```app.R```.

Note that all objects in each module will be loaded in the environment once the shiny application is closed.
