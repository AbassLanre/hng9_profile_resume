#Olanrewaju's Profile

![](../../Desktop/Screenshot_20221104_112952.png)![](../../Desktop/Screenshot_20221104_113027.png)

This is a single page description of who Olanrewaju is, his love for the programming world,
the app contains his most active social links for potential employers and friends to reach out to.
He uses the "PercyAbs" moniker as his identifier. He is majorly skilled in mobile development as shown
in the skills section using the Flutter framework and uses both java and python for solving algorithms (Hoping he
ports to using Dart for algorithms soon).

The application also describes his experience majorly for the year 2022, he is hoping to 
become even better. Clicking on the Hire Me! button describes what Olanrewaju brings to 
any company that is lucky enough to hire him.

The app is responsive and has the theme feature at the top left corner if you want to switch to
light mode or dark mode.


##Codebase and Plugins 

This application utilizes some great plugins that help the beautification and responsiveness of the
application. Such plugins include:
    - font_awesome_flutter: this gave the social media icons needed in the app
    - flutter_screenutil: this is for responsiveness so we don't have any rendering issues
    - flutter_svg: this was for the 3 svg files in assets/icons, helps displaying the svg files in the app
    - url_launcher: this was used to launch the social media accounts to their respective sites

The font used was 'Nunito', because it has a unique feel and look. The lib folder was further divided into 4 other 
folders in order to separate concerns and allow for easy modifications. It has a model class 
which holds the experience_model class and has all the structure and details of each experience card,
the themeNotifier is stored in the notifier folder and listens the state of the ThemeData if it light mode or dark mode,
widgets folder contains some useful widgets that were re-used and can be re-used if theres further development of the app
the utils folder contains the keys.dart file that holds some static strings in the app.
Then finally the ui folder which basically is for presentation of the app design, everything is done on the homepage (a single page mobile application).
Using rows and columns, the preferred design approach was made starting from the profileHeader in the body of the scaffold which displays the
name, position, location and image of the developer. This was followed by the little info about Olanrewaju then the skill section separating them in 
containers. The Hire me button brings up an Alert dialog showing the reader why Olanrewaju should be hired. Then lastly the experience section where
 all 2022 experience of Olanrewaju was neatly displayed utilizing data from the experience_model class.

##Design

The design was gotten from a simple search on google (Simple mobile resume Profile), a lot of results came up before the design by
[Rob Licau](https://dribbble.com/RobertLicau). His design was minmalistic and very clear, this inspired the choice of design to implement.
Though it wasn't a complete recreation of his design as I had to chop off some bits so I could make something simple.
His [design](https://dribbble.com/shots/5438724-Resume-Mobile-App-for-iOS-Black-White) had an appbar with a chat and kebab menu icon which I replaced 
with the social media icons and included my moniker(PercyAbs) and the theme switch, I also scraped the bottomNavigationBar from my design, I added the Hire me button
into the design.

##Features to add

I would have loved to add the language selector option and also allow the app to detect the phone's default language and switch to it.
I would also have loved to add a local storing of the the state so that the app recognises the user's choice after app closure

##Challenges faced

- The first challenge would be the initial setting up of the codebase, the dark mode/light mode functionality gave me issue because i had initially used provider to store
the state of the theme data and tried to combine it with shared_preferences, so confusion came in and i had to scrap the use of provider and shared_preferences and replaced 
it with changeNotifier which solved it smoothly.
- Also configuration of signing in gradle, following the documentation, I was able to create the necessary files and made the corresponding changes in the respective gradle files but while trying to build the apk, I ran into so many issues; 
    - Network issue: the links weren't working on release, so I added internet permission to the app manifest
    - conflict with kotlin version in build.gradle: had to go to [Maven Site](https://maven.google.com/web/index.html#com.google.android.material:material) to get the latest version and updated

## App Links

Appetize.io link -> [Olanrewaju's Profile](https://appetize.io/app/3qpmql6hmaiumdksz3p3xcy6wu?device=pixel6&osVersion=12.0&scale=75)

Google Drive link to APK -> [APK file](https://drive.google.com/file/d/14cddwEkfx3WdM4uv16lCs6ZNKa23JgHA/view?usp=share_link)
