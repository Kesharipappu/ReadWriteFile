#include "FileHandler.h"
#include <QFile>
#include <QTextStream>

FileHandler::FileHandler(QObject *parent) : QObject(parent) {}

bool FileHandler::saveToFile(const QString &data)
{
    QFile file("C:/Users/PAPPU KUMAR KESHARI/OneDrive/Desktop/QtFile.txt");
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
        return false;

    QTextStream stream(&file);
    stream << data;
    file.close();

    return true;
}
