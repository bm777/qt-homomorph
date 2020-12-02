import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: root
    width: parent.width / 2
    height: parent.height


    Rectangle {
        anchors.fill: parent
        color: "white"
    }
    // ===========================================================================================================
    Item {
        id: item_mass
        width: root.width * 0.8
        height: root.height * 0.08
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.1
        Text {
            id: text_mass
            text: "Cypher of mass"
            color: "#f000001c"
            font.pointSize: 18
            y: - parent.height * 0.37
        }
        Rectangle {
            anchors.fill: text_mass
            color: "#20000000"
        }

        Rectangle {
            anchors.fill: parent
            color: "#f000001c"
        }
        ScrollView {
            anchors.fill: parent
            clip: true
            Text {
                id: data_mass
                color: "white"
                y: item_mass.height *0.5 - data_mass.height * 0.5
                font.pointSize: 18
                text: " zenfk,re vkorei,fvio,relv lkfrbvlelbl,l elrv l erlfv l elv lefvlenbonllvefvrvbreb  kjlrn vljervnun,e ,: fs,:v ljfv "
            }
        }
    }

    //==============================================================================================================
    // ===========================================================================================================
    Item {
        id: item_velocity
        width: root.width * 0.8
        height: root.height * 0.08
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.25
        Text {
            id: text_velocity
            text: "Cypher of velocity"
            color: "#f000001c"
            font.pointSize: 18
            y: - parent.height * 0.37
        }
        Rectangle {
            anchors.fill: text_velocity
            color: "#20000000"
        }

        Rectangle {
            anchors.fill: parent
            color: "#f000001c"
        }
        ScrollView {
            anchors.fill: parent
            clip: true
            Text {
                id: data_velocity
                color: "white"
                y: item_velocity.height *0.5 - data_velocity.height * 0.5
                font.pointSize: 18
                text: " zenfk,re vkorei,fvio,relv lkfrbvlelbl,l elrv l erlfv l elv lefvlenbonllvefvrvbreb  kjlrn vljervnun,e ,: fs,:v ljfv "
            }
        }
    }
    Item {
        id: btn
        y: root.height * 0.35
        x: root.width * 0.5
        width: text_btn.width * 1.2
        height: text_btn.height * 1.5
        Rectangle {
            anchors.fill: parent
            color: "transparent"
            radius: 5
            visible: true
            border.color: "green"
            border.width: 2
        }
        Text {
            id: text_btn
            anchors.horizontalCenter: btn.horizontalCenter
            anchors.verticalCenter: btn.verticalCenter
            text: "Proceed & Save"
            color: "black"
            font.pointSize: 22
        }
    }
    Table {
        id: table
        y: root.height * 0.55
        x: root.width * 0.01
        visible: true
        headerModel: [
            {text: "N°", width: 1/7},
            {text: "Moment", width: 4/7},
            {text: "Day", width: 2/7},
        ]

        dataModel:
            [
            ['1',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:55"],
            ['2',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:56"],
            ['3',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:57"],
            ['4',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:58"],
            ['5',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:59"],
            ['6',  'ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:00"],
        ]
        onClicked: print('onClicked', row, JSON.stringify(rowData))
    }

}
