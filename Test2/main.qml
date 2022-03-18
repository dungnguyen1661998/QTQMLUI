import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")
    color: "red"
    Rectangle {
        height: 160
        width: 480
        color: "orchid"
    }
    Rectangle {
        height: 160
        width: 480
        color: "lightcoral"
        y: 160
    }
    Rectangle {
        height: 160
        width: 480
        color: "greenyellow"
        y: 320
    }
    Rectangle {
        height: 160
        width: 480
        color: "deepskyblue"
        y: 480
    }
    Loader {
        id: mainLoader
        anchors{
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }
        source: "StackViewPage.qml"
    }
}
