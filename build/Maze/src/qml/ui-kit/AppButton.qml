import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Maze

Button{
    id: root

    required  property bool lightMode

    implicitWidth: 120
    implicitHeight: 36
    
    icon.width: 20
    icon.height: 20

    contentItem: RowLayout {
        spacing: 8
        Image {
            visible: root.icon.source.toString() !== ""
            source: root.icon.source
            Layout.preferredWidth: root.icon.width
            Layout.preferredHeight: root.icon.height
            fillMode: Image.PreserveAspectFit
        }
        Text{
            visible: root.text !== ""
            text:root.text
            color: root.lightMode ? Color.light : Color.dark
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillWidth: true
        }
       
    }

    background: Rectangle{
        color: root.lightMode ? Color.dark : Color.light
        radius: 8
    }
}
