# resolution-fix
A resolution fix for qml-material targeting specific devices

Requires [qml-material](http://github.com/papyros/qml-material).

## Installation

Within your app's project folder:

```
git submodule add https://github.com/maply/resolutionfix.git lib/resolutionfix
git submodule init
git submodule update
```

Include the project into your app's .pro file:  
`include(lib/resolutionfix/org_qtmob_material_resolutionfix.pri)`

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
