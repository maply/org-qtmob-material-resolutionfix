# org.qtmob.material.resolutionfix
A resolution fix for [qml-material](http://github.com/papyros/qml-material) targeting specific devices.

## Installation

Within your app's project folder:

```
git submodule add https://github.com/maply/org.qtmob.material.resolutionfix lib/org.qtmob.material.resolutionfix
git submodule init
git submodule update
```

Include the project into your app's .pro file:  
`include(lib/org.qtmob.material.resolutionfix/org_qtmob_material_resolutionfix.pri)`

Add the qrc path to the QML engine import path (usually in main.cpp):  
`engine.addImportPath("qrc:/");`

## Usage example
```qml
import QtQuick 2.5
import Material 0.1
import org.qtmob.material.resolutionfix 1.0

ApplicationWindow {
    visible: true

    Component.onCompleted: ResolutionFix.fixDensity()

    initialPage: Page {
        title: "My app"
        Button {text: "some text"}
    }
}
```
