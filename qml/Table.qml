import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
//import "script.js" as Code

Item { // size controlled by width
    id: root

// public

    property variant headerModel: [ // widths must add to 1

    ]

    property variant dataModel: [

    ]
    property string  external: ""
    property bool st: false
    signal clicked(int row, variant rowData);  //onClicked: print('onClicked', row, JSON.stringify(rowData))

// private
    width: parent.width * 0.98;  height: 300


    Rectangle {
        id: header
//        x: root.width * 0.1
        width: parent.width;  height: 30
        color: '#6000ff00' //6c5ce7

        Rectangle { // half height to cover bottom rounded corners
            width: parent.width;  height: 0.5 * parent.height
            color: parent.color
            anchors.bottom: parent.bottom
        }


        ListView { // header
            anchors.fill: parent
            orientation: ListView.Horizontal
            interactive: false

            model: headerModel

            delegate: Item { // cell
                width: modelData.width * root.width;  height: header.height

                Text {
                    x: 0.02 * root.width
                    text: modelData.text
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize:  14 //0.06 * root.width
                    color: 'black'
                }
            }
        }
    }

    ListView { // data
        anchors{fill: parent;  topMargin: header.height}
        interactive: contentHeight > height
        clip: true
        model: dataModel

        delegate: Item { // row
            width: root.width;  height: header.height
            opacity: !mouseArea.pressed? 1: 0.3 // pressed state

            property int     row:     index     // outer index
            property variant rowData: modelData // much faster than listView.model[row]

            Row {

                anchors.fill: parent

                Repeater { // index is column
                    model: rowData // headerModel.length

                    delegate: Item { // cell
                        width: headerModel[index].width * root.width;  height: header.height

                        Text {
                            x: 0.02 * root.width
//                            x: root.width * 0.11
                            text: modelData
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 14
                        }
                    }
                }
            }

            MouseArea {
                id: mouseArea

                anchors.fill: parent

                onClicked:  {
                    root.clicked(row, rowData)
                    external = rowData[1]
                    st = true
//                    print(external)
                }
            }
        }


        ScrollBar {}

    }
    Rectangle {
        width: root.width; height: root.height * 1.1
        color: "transparent"
        border.color: "#780000ff"
    }
}
