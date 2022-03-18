import QtQuick 2.0
import QtQuick.Layouts 1.12
Item {
    ListModel{
        id: listModel
        ListElement{name:"DOOR BELL"; page:"DoorBellPage.qml"; img: "img/bell.png"}
        ListElement{name:"CAR DOOR"; page:"CarDoorPage.qml"; img: "img/car.png"}
        ListElement{name:"ACCESS CARD"; page:"AccessCardPage.qml"; img: "img/person.png"}
        ListElement{name:"HOME"; page:"HomePage.qml"; img:"img/home.png"}
    }

    GridView{
        id: gridView
        anchors.fill: parent
        model: listModel
        cellHeight: 160
        cellWidth: 480
        delegate: Rectangle{
            width: 480
            height: 160
            color: "transparent"
            Text{
                anchors.fill:parent
                id: myText
                font.family: "Helvetica"
                font.pointSize: 15
                color: "white"
                text:  name
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                source: img
                width: 45; height: 45
                y: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }
            MouseArea{
                anchors.fill: parent
                onClicked: mainLoader.source = page
            }
        }
    }
}
