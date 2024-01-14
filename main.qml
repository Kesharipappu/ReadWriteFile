import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.LocalStorage 2.15

Window {
    visible: true
    width: 400
    height: 300
    title: "Save Text to File"

    Rectangle {
        anchors.fill: parent

        TextField {
            placeholderText: "Enter your First name"
            onTextChanged: firstNameInput = text
        }

        Button {
            anchors {
                top: textInput.bottom
                horizontalCenter: parent.horizontalCenter
                margins: 10
            }
            text: "Save to File"
            onClicked: saveTextToFile()
        }

        function saveTextToFile() {
            var textToSave = textInput.text.trim();
            if (textToSave === "") {
                console.log("Text is empty. Nothing to save.");
                return;
            }

            var timestamp = new Date().toLocaleString().replace(/[/.,: ]/g, "_");
            var fileName = "text_" + timestamp + ".txt";

            // Write to file using XMLHttpRequest
            var xhr = new XMLHttpRequest();
            xhr.open("POST", fileName);
            xhr.send(textToSave);

            console.log("Text saved to file: " + fileName);
        }
    }
}
