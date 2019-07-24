# flutter-sandbox

this is created a genetic static web project in IntelliJ. And flutter apps added as a new separate modules.

- demo_app: standard flutter project which contains demo application. good for testing environments! the one comes w/ `flutter create`
- dummy_app: basic product app for IOS and ANDROID. - [to see](https://github.com/tansudasli/flutter-sandbox/blob/master/dummy-app.mov)
- product_web_app: basic product app for WEB.

## How to Start

1. Complete idea installations on Mac fo android and ios. Check web for step-by-step.
2. `git clone https://github.com/tansudasli/flutter-sandbox.git`
3. `cd flutter-sandbox`
4. to run apps `cd APP_FOLDER`. then run below commands
   - to get emulator IDs, `flutter emulators`. so you can open IOS or Android emulators.
     -  `flutter emulators --launch EMULATOR_ID`
   - to configure simulators/emulators
     - for IOS, run `open -a Simulator.app`
     - for Android, use IntelliJ **UI**, `tools/Android/AVD Manager` menu
   - `flutter run` or `flutter run -d DEVICE_ID` in case of many running simulators/emulators
   
## Skeleton of a Flutter app

```

+ app extends StatelessWidget                             #main.dart
+ return MaterialApp
  + theme: ThemeData()
  + home: MainPage()
      + MainPage extends StatelessWidget
        + return Scaffold
           - products #fetch data
           - appBar: AppBar()
           + body: ProductManager(products)      
             + ProductManager extends StatefulWidget       #product_manager.dart
               - this.initialProducts = products        
               + createState(): return ProductManagerState
                    + ProductMangerState extends State<ProductManager>
                      - initState()
                      + build(): Products(products) 
                        + RaisedButton
                          - onPressed: setState()          #add a new product
                        + Products extends StatelessWidget #products.dart
                          - this.products = products        

                     
```



