# flutter_favors_practice

## Introduction

This Flutter project was made by Huy Ho (HuyHo3820) with a purpose to give a tutorial about multiple configurations of separated environments like dev, stg, and prod using one code base which are the terminologies "Flavors" in Android and "Custom Schemes" in IOS.

## Getting Started

### What are flavors?

Flavors in Flutter (known as build configurations in iOS and Flavors in Android), allow the developer to create separate environments for your app using the same code base.

Assuming that you want to make both free and paid versions of your Flutter app. You can use flavors to set up both app versions without writing two separate apps, for example, you might have one flavor for your full-fledged production app, another as a limited “free” app, another for testing experimental features, and so on.

You also might use flavors for feature development. If you’ve built a new feature and want to try it out, you could set up a flavor to test it out. Your production code remains unaffected until you’re ready to deploy your new feature.

Flavors let you define compile-time configurations and set parameters that are read at runtime to customize your app’s behavior.

### Android Configuration of Flavors

In Android, Flavors configuration is mainly conducted in folder **your_project/android/app**. So you will work around the area of this folder.

#### Step 1: Define flavorDimensions and productFlavors

Go to **android/app/build.gradle** file, find the **android {}** section. Inside this section, you define **flavorDimensions** and **productFlavors** like the following:
![Alt text](assets/images_for_git/image1.png)
In this example, I define only one **flavorDimensions "app"**. In real-life situation, you can define multiple values of **flavorDimensions** up to your purpose.

As regards **productFlavors**, this is where I define my custom environments (flavors). In this example, I define two apps (restaurant, store) in which have two environments (dev, prod) for each app. As you can see, finally I defined 4 flavors.

Notice that each flavor follows a specific dimension. If you set multiple **flavorDimensions**, be careful when assign dimension in each flavor

For more information, please discover this:
[Using flavors in Android](https://docs.flutter.dev/deployment/flavors#using-flavors-in-android)

#### Step 2: Create a folder and set up configuration for each flavor.

In **android/app/src** folder, you create a folder and set up configuration for each flavor. In this example, I have 4 flavors so I created 4 folders.

Each folder contains some configuration for each environment like app label, app icon, etc.
![Alt text](assets/images_for_git/image2.png)

Create **strings.xml** in **res/values** sub folder and set **app_name** variable which represents for app label in each environment.

![Alt text](assets/images_for_git/image3.png)

#### Step 3: Configure dynamic app name (label)

Add the **android:label** property with value of **@string/app_name** in **android/app/main/AndroidManifest.xml** file

![Alt text](assets/images_for_git/image4.png)

### iOS Configuration of Scheme

Remember: **Flavors** in **Android** and **Flutter** are **Schemes** for **IOS**

#### Scheme Configuration and Management

To configure Scheme Flavor for iOS, you need to open **XCode**.

Next, you need to configure 2 environments (dev, prod) for 2 apps (store, restaurant) flavors so you will add new 4 schemes.

To Add New Scheme, click on the **Runner** box, click on **New Scheme**, and name your scheme. ex: resDev, resProd, storeDev, storeProd

![Alt text](assets/images_for_git/image5.png)
