#include <iostream>
using namespace std;

template <class T>
class Node {
public:
    T value;
    Node<T> * next;
};

template <class T>
class LinkedList {
private:
    Node<T> * head;
    Node<T> * tail;
    int count;

    bool isIndexValid(int index) const;
public:

    LinkedList();
    ~LinkedList();
    LinkedList(const LinkedList<T> & obj);
    LinkedList<T> operator= (const LinkedList<T> & obj);

    template <class U>
    friend std::ostream & operator<<(std::ostream & stream, const LinkedList<U> & obj);

    int size() const;
    void add(T value);
    void insert(int index, T value, bool & ok);
    T get(int index, bool & ok) const;
    void set(int index, T value, bool & ok);
    void remove(int index, bool & ok);
    void deleteEvenNumber();
};

template <class T>
void LinkedList<T>::insert(int index, T value, bool &ok){
    if (index < 0 || index > count) {
        ok = false;
    } else {
        Node<T> *toInsert = new Node<T>();
        toInsert->value = value;
        toInsert->next = 0;
        Node<T> *temp = head;

        if (index == 0){
            toInsert->next = head;
            head = toInsert;
        } else if (index==size()){

            add(value);

        } else {
            for (int i = 0 ; i < index -1 ; i++){
                temp= temp->next;
            }
            toInsert->next = temp->next;
            temp->next = toInsert;
        }
        ok = true;
        count++;
    }
}

template <class T>
LinkedList<T>::LinkedList() : head(0), tail(0), count(0) {
}

template <class T>
LinkedList<T>::LinkedList(const LinkedList<T> & obj) {
    head = 0;
    tail = 0;
    count = 0;
    bool ok;
    for (int i=0; i<obj.size(); i++) {
        add(obj.get(i, ok));
    }
}

template <class T>
LinkedList<T> LinkedList<T>::operator= (const LinkedList<T> & obj) {
    while (count > 0) {
        bool ok;
        remove(0, ok);
    }
    bool ok;
    for (int i=0; i<obj.size(); i++) {
        add(obj.get(i, ok));
    }
    return *this;
}

template <class T>
LinkedList<T>::~LinkedList() {
    while (count > 0) {
        bool ok;
        remove(0, ok);
    }
}

template <class T>
bool LinkedList<T>::isIndexValid(int index) const {
    return index >= 0 && index < size();
}

template <class T>
int LinkedList<T>::size() const {
    return count;
}

template <class T>
void LinkedList<T>::add(T value) {
    Node<T> *n = new Node<T>();
    n->value = value;
    n->next = 0;

    if (head == 0) {
        head = n;
        tail = n;
    } else {
        tail->next = n;
        tail = n;
    }
    count++;
}

template <class T>
T LinkedList<T>::get(int index, bool & ok) const {
    if (!isIndexValid(index)) {
        ok = false;
    } else {
        Node<T> *tmp = head;
        for (int i=0; i<index; i++) {
            tmp = tmp->next;
        }
        ok = true;
        return tmp->value;
    }
}

template <class T>
void LinkedList<T>::set(int index, T value, bool & ok) {
    if (!isIndexValid(index)) {
        ok = false;
    } else {
        Node<T> *tmp = head;
        for (int i=0; i<index; i++) {
            tmp = tmp->next;
        }
        tmp->value = value;
        ok = true;
    }
}

template <class T>
void LinkedList<T>::remove(int index, bool & ok) {
    if (!isIndexValid(index)) {
        ok = false;
    } else {
        Node<T> *toDelete;
        if (index == 0) {
            toDelete = head;
            head = head->next;
            if (head == 0) {
                tail = 0;
            }
        } else {
            Node<T> *tmp = head;
            for (int i=0; i<index-1; i++) {
                tmp = tmp->next;
            }
            toDelete = tmp->next;
            if (toDelete == tail) {
                tail = tmp;
            }
            tmp->next = toDelete->next;
        }
        ok = true;
        delete toDelete;
        count--;
    }
}

template <class T>
void LinkedList<T>::deleteEvenNumber() {
    Node<T> *toDelete = head;
    Node<T> *tmp = head;

    for (int i=0; i<this->size()-1; i++) {
        if (tmp->value % 2 == true) {
            if (i == 0) {
                toDelete = head;
                head = head->next;
                if (head == 0) {
                    tail = 0;
                }
            }
//        cout << tmp->value << endl;
            toDelete = tmp->next;
            if (toDelete == tail) {
                tail = tmp;
            }
            tmp->next = toDelete->next;
            delete toDelete;
            count--;
        }
        tmp = tmp->next;
    }
}

template <class U>
std::ostream & operator<<(std::ostream & stream, const LinkedList<U> & obj) {
    stream << "Head: " << obj.head << endl;
    stream << "Tail: " << obj.tail << endl;
    stream << "=============================" << endl;
    int index = 0;

    for (Node<U> *tmp = obj.head; tmp != 0; tmp = tmp->next) {
        stream << "Index: " << index << endl;
        stream << "MyAddress: " << tmp << endl;
        stream << "Value: " << tmp->value << endl;
        stream << "Next: " << tmp->next << endl;
        stream << "--------" << endl;
        index++;
    }

    return stream;
}


int main() {
    bool ok = true;
    LinkedList<int> obj;

    obj.set(10, 1, ok);
    obj.get(1, ok);

    for (int i = 0; i < 10; ++i) {
        obj.add(i);
    }

    cout << obj << endl;

    cout << "================================================================================" << endl;

    obj.deleteEvenNumber();

    cout << obj << endl;


    return 0;
}
