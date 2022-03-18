import QtQuick 2.0

Rectangle {
    id: container

    property variant text
    signal clicked

    height: text.height + 10; width: text.width + 20
    border.width: 1
    radius: 4
    antialiasing: true

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: !mouseArea.pressed ? "#eeeeee" : "#888888"
        }
        GradientStop {
            position: 1.0
            color: !mouseArea.pressed ? "#888888" : "#333333"
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.clicked()
    }

    Text {
        id: text
        anchors.centerIn:parent
        font.pointSize: 10
        text: parent.text
    }
}
