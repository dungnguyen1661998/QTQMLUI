import QtQuick 2.0
import QtQuick.Controls 2.12
Item {
    anchors.fill: parent
    Rectangle{
        anchors.fill: parent
        height: 160
        width: 480
        color: "deepskyblue"
        Image {
            id: house
            source: "img/home.png"
            width: 80; height: 80
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Text{
            id: home
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            y: 450
            font.pixelSize: 30
            color: "white"
            text: "HOME DOOR IS OPENED"
        }
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
