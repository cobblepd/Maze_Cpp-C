import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Materials
import Maze

Button{
    id: root
    Layout.preferredWidth: 110
    Layout.preferredHeight: 38

    background: Rectangle{
        anchors.fill: parent
        color: Color.dark
    }
}