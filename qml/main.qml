import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    title: "H.E"
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
        visible: true
    }

    // ==================== iporting cypher item here ====================================
    Cypher {
        visible: id_plaintext.start
        opacity: 0.0
        id: id_cypher
        x: root.width * 0.5
    }

    NumberAnimation {
        target: id_plaintext
        property: "x"
        duration: 800
        running: id_plaintext.start
        to: 0
        easing.type: Easing.InOutQuad
    }
    ParallelAnimation {
        running: id_plaintext.start
        NumberAnimation {
            target: id_cypher
            property: "opacity"
            duration: 2000
            running: id_plaintext.start
            to: 1.0
        }
        NumberAnimation {
            target: id_cypher
            property: "x"
            duration: 1000
            running: id_plaintext.start
            to: root.width * 0.5
            easing.type: Easing.InOutQuad
        }
    }

}
