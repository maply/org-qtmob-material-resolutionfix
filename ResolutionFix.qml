import QtQuick 2.5
import QtQuick.Window 2.0
import Material 0.1

pragma Singleton

Item {
    id: resolutionFix

    property var devices: [
        {
            name:"galaxyS3Mini",
            width : 480,
            height : 800,
            pixelDensityRnd : 6.31,
            logicalPixelDensityRnd : 4.25,
            multiplier: 1.4
        },
        {
            name: "sonyXperiaJ",
            width : 480,
            height : 854,
            pixelDensityRnd : 6.32,
            logicalPixelDensityRnd : 4.25,
            multiplier : 1.4
        }
    ]

    function fixDensity() {
        for (var i=0;i<devices.length;i++) {
            if (recognizeDevice(devices[i])) return
        }
    }

    function recognizeDevice(device) {
        var isDevice =
                Screen.width == device.width &&
                Screen.height == device.height &&
                Screen.pixelDensity.toFixed(2) == device.pixelDensityRnd &&
                Screen.logicalPixelDensity.toFixed(2) == device.logicalPixelDensityRnd
        if (isDevice) {
            Units.multiplier = device.multiplier
            return true
        } else {
            return false
        }
    }
}
