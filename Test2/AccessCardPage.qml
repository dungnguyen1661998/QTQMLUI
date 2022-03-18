import QtQuick 2.0
import QtQuick.Controls 2.12
Item {
    anchors.fill: parent
    Rectangle {
        anchors.fill: parent
        height: 160
        width: 480
        color: "greenyellow"

        Image {
            id: access
            source: "img/person.png"
            width: 80; height: 80
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Text{
            id: accessCard
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            y: 450
            font.pixelSize: 30
            color: "white"
            text: "ACESS CARD IS GRANDTED"
        }
        RectangleButton {
            Image {
                height: 50
                width: 50
                source: "img/previous.png"
            }
        }
    }
}
