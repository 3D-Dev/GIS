import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Window {
    id: rootWindow
    visible: true
    width: 948
    height: 436
    opacity: 1
    color: "#00000000"
    flags: Qt.FramelessWindowHint

    MouseArea {
        id: mouseRegin
        anchors.fill: parent
        property variant clickPos: "1,1"

        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            rootWindow.x += delta.x;
            rootWindow.y += delta.y;
        }
    }

    Rectangle {
        width: 948
        height: 436
        color: "#282828"
        radius: 29
        border.width: 1
        border.color: Qt.rgba(1,1,1,0.22)
        anchors.centerIn: parent
    }

    Item {
        id: logo
        Image {
            id: logo_converter
            width: 150
            height: 11
            y: 22
            x: 44
            source: "assets/images/KML Converter.png"
        }

        Image {
            id: logo_usr
            width: 190
            height: 32
            y: 43
            x: 44
            source: "assets/images/Vector 1 (Stroke).png"
        }
    }

    Item {
        Image {
            width: 70
            height: 70
            y: 38
            x: 850
            source: "assets/images/Frame 110.png"
            MouseArea {
                anchors.fill: parent
                onClicked: rootWindow.close(true)
            }
        }
    }
    FontLoader { id: saira; source: "assets/fonts/Saira-Regular.ttf" }
    Item {
        id: control
        width: 860
        height: 309
        y: 86
        x: 44
        Item { //Source Folder
           id: src
           width: 858
           height: 28
           Text {
               text: "Source Folder:"
               y: 22
               width: 106
               height: 25
               font.family: Style.saira
               font.pixelSize: 16
               font.weight: Font.Medium
               color: "white"
               lineHeight: 25.18
           }
           Rectangle {
               x: 160
               y: 12
               width: 635
               height:46
               color: "#161616"
               radius: 12
               TextField {
                   anchors.fill: parent
                   placeholderText: qsTr("Enter path")
               }
           }
           Item {
               y: 7
               Image {
                   width: 78
                   height: 78
                   x: 800
                   source: "assets/images/Frame 138.png"
                   MouseArea {
                       anchors.fill: parent
                       onClicked: rootWindow.close(true)
                   }
               }
           }
        }

        Item {  //Output File
          id: output
          width: 858
          height: 28
          y: 58
          Text {
              text: "Output File:"
              y: 22
              width: 106
              height: 25
              font.family: saira.font.family
              font.pixelSize: 16
              font.weight: Font.Medium
              color: "white"
              lineHeight: 25.18
          }
          Rectangle {
              x: 160
              y: 12
              width: 635
              height:46
              color: "#161616"
              radius: 12
              TextField {
                  anchors.fill: parent
                  placeholderText: qsTr("Enter path")
              }
          }
          Item {
              y: 7
              Image {
                  width: 78
                  height: 78
                  x: 800
                  source: "assets/images/Frame 138.png"
                  MouseArea {
                      anchors.fill: parent
                      onClicked: rootWindow.close(true)
                  }
              }
          }
       }

        Item {  //Output File
          id: file_type
          width: 858
          height: 28
          y: 128
          Text {
              text: "Output File:"
              y: 22
              width: 106
              height: 25
              font.family: saira.font.family
              font.pixelSize: 16
              font.weight: Font.Medium
              color: "white"
              lineHeight: 25.18
          }
          Item {
              width: 412
              height: 40
              y: 15
              x: 160
              RowLayout {
                  anchors.fill: parent
                  spacing: 7
                  Rectangle {
                      width: 88
                      height: 40
                      radius: 12
                      color: "black"
                      border.width: 1
                      border.color: "#FF9D0A"
                      Image {
                          width: 84
                          height: 36
                          source: "assets/images/active.png"
                          anchors.centerIn: parent
                      }
                      Image {
                          y: 9
                          x: 8.5
                          width: 22
                          height: 22
                          source: "assets/images/radio_0.png"
                      }
                      Text {
                          text: "KML"
                          y: 11
                          x:39
                          width: 30
                          height: 22
                          font.family: saira.font.family
                          font.pixelSize: 14
                          font.weight: Font.Bold
                          color: "#FF9D0A"
                          lineHeight: 22.04
                      }

                  }
                  Rectangle {
                      width: 88
                      height: 40
                      radius: 12
                      color: "black"
                      border.width: 1
                      border.color: "black"
                      Image {
                          width: 84
                          height: 36
                          source: "assets/images/disable.png"
                          anchors.centerIn: parent
                      }
                      Image {
                          y: 9
                          x: 8.5
                          width: 22
                          height: 22
                          source: "assets/images/radio_1.png"
                      }
                      Text {
                          text: "KMZ"
                          y: 11
                          x:39
                          width: 30
                          height: 22
                          font.family: saira.font.family
                          font.pixelSize: 14
                          font.weight: Font.Bold
                          color: "white"
                          lineHeight: 22.04
                      }
                  }
                  Rectangle {
                      width: 88
                      height: 40
                      radius: 12
                      color: "black"
                      border.width: 1
                      border.color: "black"
                      Image {
                          width: 84
                          height: 36
                          source: "assets/images/disable.png"
                          anchors.centerIn: parent
                      }
                      Image {
                          y: 9
                          x: 8.5
                          width: 22
                          height: 22
                          source: "assets/images/radio_1.png"
                      }
                      Text {
                          text: "GPX"
                          y: 11
                          x:39
                          width: 30
                          height: 22
                          font.family: saira.font.family
                          font.pixelSize: 14
                          font.weight: Font.Bold
                          color: "white"
                          lineHeight: 22.04
                      }
                  }
                  Rectangle {
                      width: 127
                      height: 40
                      radius: 12
                      color: "black"
                      border.width: 1
                      border.color: "black"
                      Image {
                          width: 123
                          height: 36
                          source: "assets/images/disable.png"
                          anchors.centerIn: parent
                      }
                      Image {
                          y: 9
                          x: 8.5
                          width: 22
                          height: 22
                          source: "assets/images/radio_1.png"
                      }
                      Text {
                          text: "GeoJSON"
                          y: 11
                          x:39
                          width: 30
                          height: 22
                          font.family: saira.font.family
                          font.pixelSize: 14
                          font.weight: Font.Bold
                          color: "white"
                          lineHeight: 22.04
                      }
                  }

              }

          }
       }

        ProgressBar {
            id: progressBar
            value: 0.4
            width: 857
            height: 25
            y: 200
            clip: true
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 6
                color: "#161616"
                border.color: "black"
                radius: 20
                border.width: 2
            }
            contentItem: Item {
                implicitWidth: 200
                implicitHeight: 4

                Rectangle {
                    id: bar
                    width: progressBar.visualPosition * parent.width
                    height: parent.height-4
                    radius: 26
                    y: 2
                }

                LinearGradient {
                    anchors.fill: bar
                    start: Qt.point(0, 0)
                    end: Qt.point(bar.width, 0)
                    source: bar
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#17a81a" }
                        GradientStop { id: grad; position: 0.5; color: Qt.lighter("#17a81a", 2) }
                        GradientStop { position: 1.0; color: "#17a81a" }
                    }
                    PropertyAnimation {
                        target: grad
                        property: "position"
                        from: 0.1
                        to: 0.9
                        duration: 1000
                        running: true
                        loops: Animation.Infinite
                    }
                }
                LinearGradient {
                    anchors.fill: bar
                    start: Qt.point(0, 0)
                    end: Qt.point(0, bar.height)
                    source: bar
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Qt.rgba(0,0,0,0) }
                        GradientStop { position: 0.5; color: Qt.rgba(1,1,1,0.3) }
                        GradientStop { position: 1.0; color: Qt.rgba(0,0,0,0.05) }
                    }
                }
            }
            PropertyAnimation {
                target: progressBar
                property: "value"
                from: 0
                to: progressBar.value
                duration: 5000
                running: true
                loops: Animation.pause()
            }
        }
        Text {
            text: parseInt(progressBar.value * 100) + "%"
            y: 204
            x:800
            width: 30
            height: 22
            font.family: saira.font.family
            font.pixelSize: 14
            font.weight: Font.Normal
            color: "white"
            lineHeight: 22.04
        }
        Text {
            id: txt_processed
            property int value: 0
            text:"Processed Images: " + value
            y: 243
            width: 153
            height: 25
            font.family: saira.font.family
            font.pixelSize: 16
            font.weight: Font.Medium
            color: "white"
            lineHeight: 25.18
        }
        Text {
            id: txt_total
            property int value: 0
            text:"Total Images: " + value
            y: 243
            x: 360
            width: 153
            height: 25
            font.family: saira.font.family
            font.pixelSize: 16
            font.weight: Font.Medium
            color: "white"
            lineHeight: 25.18
        }
        Text {
            id: txt_time
            property int value: 1230
            text:"Time Elapsed: " + Math.floor(value / 60) + "m" + value%60 + "s"
            y: 243
            x: 685
            width: 153
            height: 25
            font.family: saira.font.family
            font.pixelSize: 16
            font.weight: Font.Medium
            color: "white"
            lineHeight: 25.18
        }
        Image {
            property bool isClicked: false
            width: 182
            height: 81
            source: isClicked ?"assets/images/start_disable.png":"assets/images/start_active.png"
            x: 330
            y: 270
            MouseArea {
                anchors.fill: parent
                onClicked: !parent.isClicked
            }
        }
        Text {
            text: "<a href=\"https://www.usri.ca\">Usri.ca</a>"
            y: 300
            x: 800
            width: 50
            height: 25
            font.family: saira.font.family
            font.pixelSize: 16
            font.weight: Font.Normal
            linkColor: "white"
            lineHeight: 25.18
            onLinkActivated:Qt.openUrlExternally("https://www.usri.ca/")
        }


    }




}
