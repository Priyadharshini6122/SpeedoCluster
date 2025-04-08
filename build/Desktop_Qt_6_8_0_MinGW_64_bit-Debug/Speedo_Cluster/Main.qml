import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Digital Speedometer")

    Rectangle {
        anchors.fill: parent
        color: "#1e1e1e"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Speed: "+ speed + "km/h"
                font.pixelSize: 30
                color: "brown"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Slider {
                id: speedSlider
                from: 0
                to: 240
                width:300
                onValueChanged: speed = value
            }
            Text {
                text: "Rpm: "+ rpm + "km/h"
                font.pixelSize: 30
                color: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Slider {
                id: rpmSlider
                from: 0
                to: 8000
                width: 300
                onValueChanged: rpm = value
            }
        }
    }
    property int speed:0
    property int rpm:0
}
