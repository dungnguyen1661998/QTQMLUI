import QtQuick 2.0

Item {
    id: rectangleButton
    anchors.fill: parent
    anchors.margins: 15
    height: 50
    width: 50

    Rectangle {
        color: "transparent"
        height: parent.height
        width: parent.width
        anchors {
            left: parent.left
            top: parent.top
            margins: 15
        }

        Image {
            anchors.fill: parent
            id: buttonImage1
            source: ""
            height: parent.height
            width: parent.width
        }
        MouseArea {
            anchors.fill: parent
            onClicked: mainLoader.source = "StackViewPage.qml"
        }
    }
}
