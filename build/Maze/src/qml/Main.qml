import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Maze


ApplicationWindow {
    id: window
    width: 1600
    height: 800
    minimumWidth: 200
    minimumHeight: 250
    visible: true
    title: qsTr("Hello World")
    property bool lightMode: Application.styleHints.colorScheme === Qt.Light


    GridLayout {
        id: grid
        columns: width < 400 ? 1 : 2
        rowSpacing: 0
        columnSpacing: 0
        anchors.fill: parent

        Wrapper {
            id: rectangle1
            lightMode:window.lightMode
            width: 220
            height: parent.height
            contentPadding: 16
            contentSpacing: 8

            AppButton{
                text:"HELLO"
                lightMode: window.lightMode
                icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }

            AppButton{
                text:"HELLO"
                lightMode: window.lightMode
                icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }
            AppButton{
                text:"HELLO"
                lightMode: window.lightMode
                icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }
            AppButton{
                text:"HELLO"
                lightMode: window.lightMode
                icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }
            Item {
                Layout.fillHeight: true
               }

            AppButton{
                text: window.lightMode ? qsTr("\u263D  Dark mode")
                                       : qsTr("\u263C  Light mode")
                Layout.bottomMargin: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                lightMode: window.lightMode
                //icon.source: "qrc:/qt/qml/Maze/images/x.png"
                onClicked: window.lightMode = !window.lightMode
            }
            Button {
                id: button2
                text: window.lightMode ? qsTr("\u263D  Dark mode")
                                       : qsTr("\u263C  Light mode")
                Layout.bottomMargin: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                contentItem: Text {
                    text: button2.text
                    color: window.lightMode ? Color.light : Color.dark
                    font: button2.font
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                background: Rectangle {
                    implicitWidth: 120
                    implicitHeight: 36
                    radius: 8
                    color: window.lightMode ? Color.dark : Color.light
                }

                onClicked: window.lightMode = !window.lightMode
            }
        }

        Rectangle {
            id: rectangle2
            color: window.lightMode ? Color.light : Color.dark
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                anchors.fill: parent
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                Button {
                    id: button1
                    text: window.lightMode ? qsTr("\u263D  Dark mode")
                                           : qsTr("\u263C  Light mode")
                    Layout.bottomMargin: 16
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                    contentItem: Text {
                        text: button1.text
                        color: window.lightMode ? Color.light : Color.dark
                        font: button1.font
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        implicitWidth: 120
                        implicitHeight: 36
                        radius: 8
                        color: window.lightMode ? Color.dark : Color.light
                    }

                    onClicked: window.lightMode = !window.lightMode
                }

            }
        }
    }

}
