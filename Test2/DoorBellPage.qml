import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls.Material 2.0
Item {
    anchors.fill: parent
    Rectangle {
        anchors.fill: parent
        height: 160
        width: 480
        color: "orchid"

        Image {
            id: bell
            source: "img/bell.png"
            width: 80; height: 80
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Text{
            id: doorBell
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            y: 450
            font.pixelSize: 30
            color: "white"
            text: "DOOR BELL IS RINGING"
        }

//        Rectangle {
//            id: button1
//            color: "transparent"
//            height: 50
//            width: 50
//            anchors {
//                left: parent.left
//                top: parent.top
//                margins: 15
//            }

//            Image {
//                id: buttonImage1
//                source: "img/previous.png"
//                height: 50
//                width: 50
//            }
//            MouseArea {
//                anchors.fill: parent
//                onClicked: mainLoader.source = "StackViewPage.qml"
//            }
//        }
        RectangleButton{
            height: 50
            width: 50
            anchors.margins: 15
            Image {
                source: "img/previous.png"
                height: 50
                width: 50
            }
        }
    }

}
