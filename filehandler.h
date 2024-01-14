#ifndef FILEHANDLER_H
#define FILEHANDLER_H

#include <QObject>

class FileHandler : public QObject
{
    Q_OBJECT

public:
    explicit FileHandler(QObject *parent = nullptr);

public slots:
    Q_INVOKABLE bool saveToFile(const QString &data);
};

#endif // FILEHANDLER_H
