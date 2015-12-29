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
`include(expandable-card/org_qtmob_material_resolution.pri)`

Add the qrc path to the QML engine import path (usually in main.cpp):
`engine.addImportPath("qrc:/");`

## Usage example
