import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    title: qsTr("Hello World")
    width: 640 * 2
    height: 480 * 2
    visible: true
    id: root
    Rectangle {
        color: "#20c0c0c0"
        anchors.fill: parent

    }

    // ================ importing Plaintext Item here ====================================
    Plaintext {
        id: id_plaintext
        x: root.width / 4
        visible: false
    }

    // ==================== iporting cypher item here ====================================
    Cypher {
        id: id_cypher
        x: root.width / 2
    }

}
