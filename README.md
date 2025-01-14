# AppBasicIOS

This repository contains my first interaction with Apple's development environment **Xcode**, the structure of a new project, the syntax of **Swift**, the creation of components with **SwiftUI**, and a very basic use of protocols to integrate it into a class of type **ViewModel**.

The app's functionality is to return a list of User elements from the repository. The viewModel receives this and defines it as a publisher to have access to the changes of this list in the UI.

In the UI section, there is a button that adds a new **User** element. This is manifested in the state change and is reflected in our UI list.
