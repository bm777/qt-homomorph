import QtQuick 2.0
//import QtQuick.Controls.Styles 2.15
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.15

Item {
    id: root
    width: parent.width / 2
    height: parent.height
    property real  mass: parseInt(input_mass.text)
    property real velocity: parseInt(input_velocity.text)

    Rectangle {
        id: inside
        color: "#f000001c" //f0344f97
        anchors.fill: parent
        radius: 5
    }
    DropShadow {
        anchors.fill: label_mass.x
    //        cached: true
        horizontalOffset: 5
        verticalOffset: 5
        radius: 8
        samples: 17
        width: root.width
        color: "#80000000"
        source: label_mass.x
    }
    Text {
        id: text_title
        y: root.height * .08
        font.pointSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Homomorphic encryption"
        color: "#90ffffff"
    }
    Rectangle {
        id: global_anchor
        anchors.fill: text_title
        color: "#20ffffff"
        radius: 4
    }



    // ========================== form mass =======================================
    Item {
        id: item_mass
        width: root.width * 0.8
        height: root.height * 0.12
        y: root.height * 0.3
        x: (root.width - width ) * 0.75

        Rectangle {
            anchors.fill: item_mass
            radius: 2
            color: "#ffffff"
        }

        Text {
            id: kg
            text: "Exprimed in <b>Kg<b>"
            color: "#80000000"
            y: item_mass.height * 0.35 - kg.height * 1.5
            x: item_mass.width * 0.01
        }
        Text {
            id: kg_
            text: "<b>e.g. 800<b>"
            color: "#80000000"
            y: kg.y
            x: item_mass.width - (kg_.width + item_mass.width * 0.01)
        }
        Rectangle {
            y: item_mass.height * 0.35
            x: item_mass.width * 0.01
            width: item_mass.width * 0.98
            height: item_mass.height * 0.6
            color: "#60000000"
        }
        Rectangle{
            color: "#000000"
            y: item_mass.height * 0.35
            x: item_mass.width * 0.01
            width: item_mass.width * 0.4
            height: item_mass.height * 0.6
            Text {
                anchors.verticalCenter: parent.verticalCenter
                text: "The mass"
                color: "white"
                x: (item_mass.width * 0.4) * 0.1
                font.pointSize: 25
            }
        }
        TextField {
            id: input_mass
            width: item_mass.width * 0.58
            height: item_mass.height * 0.6
            x: item_mass.width * 0.41 // (0.4 + 0.01 = 0.41)
            y: item_mass.height * 0.35
            color: "black"
            font.pointSize: 25
            placeholderText: "digit here"
            horizontalAlignment: "AlignHCenter"
        }
    }
    // ========================================================================================
    // ========================== form =======================================
    Item {
        id: item_velocity
        width: root.width * 0.8
        height: root.height * 0.12
        y: root.height * 0.5
        x: (root.width - width ) * 0.75

        Rectangle {
            anchors.fill: item_velocity
            radius: 2
            color: "#ffffff"
        }

        Text {
            id: velocity
            text: "Exprimed in <b>m/s<b>"
            color: "#80000000"
            y: item_velocity.height * 0.35 - velocity.height * 1.5
            x: item_velocity.width * 0.01
        }
        Text {
            id: velocity_
            text: "<b>e.g. 180<b>"
            color: "#80000000"
            y: velocity.y
            x: item_velocity.width - (velocity_.width + item_velocity.width * 0.01)
        }
        Rectangle {
            y: item_velocity.height * 0.35
            x: item_velocity.width * 0.01
            width: item_velocity.width * 0.98
            height: item_velocity.height * 0.6
            color: "#60000000"
        }
        Rectangle{
            color: "#000000"
            y: item_velocity.height * 0.35
            x: item_velocity.width * 0.01
            width: item_velocity.width * 0.4
            height: item_velocity.height * 0.6
            Text {
                anchors.verticalCenter: parent.verticalCenter
                text: "The velocity"
                color: "white"
                x: (item_velocity.width * 0.4) * 0.08
                font.pointSize: 25
            }
        }
        TextField {
            id: input_velocity
            width: item_velocity.width * 0.58
            height: item_velocity.height * 0.6
            x: item_velocity.width * 0.41 // (0.4 + 0.01 = 0.41)
            y: item_velocity.height * 0.35
            color: "black"
            font.pointSize: 25
            placeholderText: "digit here"
            horizontalAlignment: "AlignHCenter"
        }
    }
    // ==============================================================================================
    Item {
        id: btn
        y: root.height * 0.75
        x: root.width * 0.5
        width: text_btn.width * 1.2
        height: text_btn.height * 1.5
        Rectangle {
            anchors.fill: parent
            color: "#80000000"
            radius: 5
            visible: true
            border.color: "green"
            border.width: 2
        }
        Text {
            id: text_btn
            anchors.horizontalCenter: btn.horizontalCenter
            anchors.verticalCenter: btn.verticalCenter
            text: "Encrypt & send"
            color: "white"
            font.pointSize: 22
        }
    }

}
