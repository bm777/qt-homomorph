import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "../js/script.js" as Code

Item {
    id: root
    width: parent.width / 2
    height: parent.height
    property bool state_pop: id_pop.visible


    Rectangle {
        anchors.fill: parent
        color: "white"
    }
    // ===========================================================================================================
    Item {
        id: item_mass
        width: root.width * 0.8
        height: root.height * 0.05
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.1
        Text {
            id: text_mass
            text: "Cypher of mass"
            color: "#f000001c"
            font.pointSize: 18
            y: - parent.height * 0.58
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
                font.pointSize: 14
                text: " zenfk,re vkorei,fvio,relv lkfrbvlelbl,l elrv l erlfv l elv lefvlenbonllvefvrvbreb  kjlrn vljervnun,e ,: fs,:v ljfv "
            }
        }
    }

    //==============================================================================================================
    // ===========================================================================================================
    Item {
        id: item_velocity
        width: root.width * 0.8
        height: root.height * 0.05
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height * 0.25
        Text {
            id: text_velocity
            text: "Cypher of velocity"
            color: "#f000001c"
            font.pointSize: 18
            y: - parent.height * 0.58
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
                font.pointSize: 14
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
            id: cypher
            anchors.fill: parent
            color: "transparent"
            radius: 5
            visible: true
            border.color: "green"
            border.width: 2
            MouseArea {
                anchors.fill: cypher
                onEntered: {
                    cypher.color = "#8000ff00"
                }
                onExited: {
                    cypher.color = "transparent"
                }
                onClicked: {
                    var db = LocalStorage.openDatabaseSync("homomorph", "", "Homomorph encryption", 1000000);
                    var moment = bridge.moment(data_mass.text, data_velocity.text);
                    var now = new Date().toLocaleDateString(Qt.locale("fr_FR"))
                    try {
                        db.transaction(function (tx) {
                            tx.executeSql('CREATE TABLE IF NOT EXISTS moments (id INTEGER PRIMARY KEY AUTOINCREMENT, moment TEXT, date DATE)');
                            tx.executeSql('INSERT INTO moments (moment, date) VALUES (?,?)', [moment, now]);
                            print("creating element into table user")
                        })
                    } catch (err) {
                        console.log("Error creating or insert table in database: " + err)
                    };
                    user.dataModel = Code.fillUser();
                }
            }
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
    Text {
        id: math
        font.pointSize: 13
        text: "Calcul of moment using encrypted data:"
        y: root.height * 0.5
        x: root.width * 0.1
    }
    Text {
        id: moment
        textFormat: Text.RichText
        font.pointSize: 17
        text: "<b>CYPHER</b><SUB>moment</SUB> = <b>CYPHER</b><SUB>mass</SUB> x <b>CYPHER</b><SUB>velocity</SUB>"
        y: root.height * 0.55
        x: root.width * 0.15
    }
    Table {
        id: table
        y: root.height * 0.65
        x: root.width * 0.01
        visible: true
        headerModel: [
            {text: "N°", width: 1/7},
            {text: "Moment", width: 4/7},
            {text: "Day", width: 2/7},
        ]

        dataModel:
            [
            ['1',  '1ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:55"],
            ['2',  '2ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:56"],
            ['3',  '3ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:57"],
            ['4',  '4ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:58"],
            ['5',  '5ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:15:59"],
            ['6',  '6ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:00"],
            ['7',  '7ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:01"],
            ['8',  '8ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:02"],
            ['9',  '9ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:03"],
            ['10',  '10ejknefkjzernfk krkv kjf vkn fv kjh fvjkfchjv rbs', "2020/11/01 00:16:03"],
        ]
        onClicked: {
//            print('onClicked', row, JSON.stringify(rowData))
             id_pop.visible = true
        }
    }
    Rectangle {
        id: white
        color: '#80000000'
        anchors.fill: parent
        visible: state_pop

    }
    Pop {
        id: id_pop
        y: root.height * 0.3
        x: root.width * 0.5 - id_pop.width / 2
        visible: false

        text: "The real PlainText is :<b>" + table.external + "</b>"
        buttons: [ 'Ok']

        onClicked: {
            id_pop.visible = false
        }
    }


}
