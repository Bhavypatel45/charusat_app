#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define FAST                     \
    ios::sync_with_stdio(false); \
    cin.tie(NULL);               \
    cout.tie(NULL);

struct DoublyLinkedList
{
    int value;
    struct DoublyLinkedList *next;
    struct DoublyLinkedList *previous;
};

struct DoublyLinkedList *head = NULL, *tail;

void PrintDoublyLinkedList(DoublyLinkedList *head)
{
    while (head != NULL)
    {
        cout << head->value << " ";
        head = head->next;
    }
}

void CreateDoublyLinkedList(int data)
{
    DoublyLinkedList *newNode;
    newNode = (struct DoublyLinkedList *)malloc(sizeof(DoublyLinkedList));

    newNode->value = data;
    newNode->previous = NULL;
    newNode->next = NULL;

    if (head == NULL)
    {
        head = tail = newNode;
    }
    else
    {
        tail->next = newNode;
        newNode->previous = tail;
        tail = newNode;
    }
}

void InsertAtBegin(int data)
{
    DoublyLinkedList *newnode;
    newnode = (struct DoublyLinkedList *)malloc(sizeof(DoublyLinkedList));

    newnode->value = data;
    newnode->previous = NULL;
    newnode->next = NULL;

    head->previous = newnode;
    newnode->next = head;
    head = newnode;
}

void InsertAtEnd(int data)
{
    DoublyLinkedList *newnode;
    newnode = (struct DoublyLinkedList *)malloc(sizeof(DoublyLinkedList));

    newnode->value = data;
    newnode->previous = NULL;
    newnode->next = NULL;

    tail->next = newnode;
    newnode->previous = tail;
    tail = newnode;
}

void InsertAtPosition(int data)
{
    int position;
    cin >> position;

    DoublyLinkedList *tmp = head;
    int count = 0;
    while (tmp != NULL)
    {
        count++;
        tmp = tmp->next;
    }
    if (position < 1 || position > count)
    {
        cout << "Invalid Position" << endl;
    }
    else if (position == 1)
    {
        InsertAtBegin(data);
    }
    else
    {
        DoublyLinkedList *newnode, *tmp;
        newnode = (struct DoublyLinkedList *)malloc(sizeof(DoublyLinkedList));

        newnode->value = data;
        int i = 1;
        tmp = head;
        while (i < position - 1)
        {
            tmp = tmp->next;
            i++;
        }

        newnode->previous = tmp;
        newnode->next = tmp->next;
        tmp->next = newnode;
        newnode->next->previous = newnode;
    }
}

void InsertAfterPosition(int data)
{
    int position;
    cin >> position;

    DoublyLinkedList *tmp = head;
    int count = 0;
    while (tmp != NULL)
    {
        count++;
        tmp = tmp->next;
    }
    if (position < 1 || position > count)
    {
        cout << "Invalid Position" << endl;
    }
    else
    {
        DoublyLinkedList *newnode, *tmp;
        newnode = (struct DoublyLinkedList *)malloc(sizeof(DoublyLinkedList));

        newnode->value = data;
        int i = 1;
        tmp = head;
        while (i < position)
        {
            tmp = tmp->next;
            i++;
        }

        newnode->previous = tmp;
        newnode->next = tmp->next;
        tmp->next = newnode;
        newnode->next->previous = newnode;
    }
}

void DeleteFromBegin(DoublyLinkedList *head)
{
    DoublyLinkedList *tmp = head;
    if(head == NULL)
    {
        cout<<"Doubly Linked List is Empty!"<<endl;
    }
    else if (head->next == NULL)
    {
        tail = NULL;
    }
    else
    {
        head->next->previous = NULL;
    }

    head = head->next;
    free(tmp);
    
}

void solve()
{
    CreateDoublyLinkedList(1);
    CreateDoublyLinkedList(2);
    CreateDoublyLinkedList(3);
    CreateDoublyLinkedList(4);
    PrintDoublyLinkedList(head);
    cout << endl;
    InsertAtBegin(5);
    PrintDoublyLinkedList(head);
    cout << endl;
    InsertAtEnd(6);
    PrintDoublyLinkedList(head);
    cout << endl;
    InsertAtPosition(7);
    PrintDoublyLinkedList(head);
    cout << endl;
    InsertAfterPosition(9);
    PrintDoublyLinkedList(head);
    cout << endl;
    /*DeleteFromBegin(head);
    PrintDoublyLinkedList(head);
    cout<<endl;*/

}

int main()
{

#ifndef ONLINE_JUDGE
    freopen("input", "r", stdin);
    freopen("output", "w", stdout);
#endif

    solve();

    return 0;
}