#ifndef TRANSACTION_H
#define TRANSACTION_H

#include <QObject>

class Transaction : public QObject
{
    Q_OBJECT
public:
    Transaction(QObject *parent, std::string id, std::string name, std::string price, int type) {
        parent = nullptr;
        this->id = id;
        this->name = name;
        this->price = price;
        this->type = type;
    };

signals:

private:
    std::string id;
    std::string name;
    std::string price;
    int type;
};

#endif // TRANSACTION_H
