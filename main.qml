import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1000
    height: 800
    title: "HelloApp"

    Column {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Text {
            text: "Hello World"
            font.pixelSize: 24
        }

        Item {
            width: parent.width
            height: 3

            BusyIndicator {
                z: 10000
                anchors.centerIn: parent
                running: true
            }

            Rectangle {
                anchors.fill: parent
                Row {
                    spacing: 10
                    Button {
                        text: "Hello"
                        onClicked: console.log("Hello")
                    }

                    Button {
                        text: "World"
                        onClicked: console.log("World")
                    }
                }
            }
        }
        
    }
}
