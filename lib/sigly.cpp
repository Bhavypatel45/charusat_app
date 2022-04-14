#include <bits/stdc++.h>
using namespace std;
#define ll long long
#define FAST                     \
	ios::sync_with_stdio(false); \
	cin.tie(NULL);               \
	cout.tie(NULL);

struct LinkedList
{
	int value;
	struct LinkedList *next;
};

void PrintLinkedList(LinkedList *head)
{
	while (head != NULL)
	{
		cout << head->value << " ";
		head = head->next;
	}
}

LinkedList *DeletefromBegin(LinkedList *head)
{
	LinkedList *tmp;
	tmp = head;
	head = head->next;
	free(tmp);
	PrintLinkedList(head);
}

LinkedList *DeletefromEnd(LinkedList *head)
{
	LinkedList *prevNode, *tmp;
	tmp = head;
	while (tmp->next != NULL)
	{
		prevNode = tmp;
		tmp = tmp->next;
	}
	if (tmp == head)
	{
		head = NULL;
		free(tmp);
	}
	else
	{
		prevNode->next = NULL;
		free(tmp);
	}
	PrintLinkedList(head);
}

LinkedList *DeletefromPosition(LinkedList *head)
{
	LinkedList *tmp,*nextnode;
	int position,i=1;
	cin>>position;
	tmp = head;

	while(i<position-1)
	{
		tmp = tmp->next;
		i++;
	}
	
	nextnode = tmp->next;
	tmp->next = nextnode->next;
	free(nextnode);
	PrintLinkedList(head);
}

LinkedList *ReverseLinkedList(LinkedList *head)
{
	LinkedList *PreviousNode, *CurrentNode, *NextNode;
	PreviousNode = NULL;
	CurrentNode = NextNode = head;

	while (NextNode != NULL)
	{
		NextNode = NextNode->next;
		CurrentNode->next = PreviousNode;
		PreviousNode = CurrentNode;
		CurrentNode = NextNode;
	}

	head = PreviousNode;
	PrintLinkedList(head);
}

LinkedList *InsertatBegin(LinkedList *head)
{
	int data;
	cin >> data;
	LinkedList *newnode;
	newnode = (struct LinkedList *)malloc(sizeof(LinkedList));

	newnode->value = data;
	newnode->next = head;
	head = newnode;
	PrintLinkedList(head);
}

void InsertatEnd(LinkedList *head)
{
	int data;
	cin >> data;
	LinkedList *newnode;
	newnode = (struct LinkedList *)malloc(sizeof(LinkedList));
	LinkedList *tmp = head;

	newnode->next = NULL;
	newnode->value = data;

	if (head == NULL)
	{
		head = newnode;
		PrintLinkedList(head);
	}

	while (tmp->next != NULL)
	{
		tmp = tmp->next;
	}

	tmp->next = newnode;
	PrintLinkedList(head);
}

LinkedList *InsertatPosition(LinkedList *head)
{
	int position, data, count = 0;
	cin >> position >> data;

	// for calculating the length of LinkedList
	LinkedList *newnode, *tmp;
	newnode = (struct LinkedList *)malloc(sizeof(LinkedList));
	tmp = head;
	while (tmp != NULL)
	{
		count++;
		tmp = tmp->next;
	}
	cout << count << endl;

	if (position > count)
	{
		cout << "Invalid Position" << endl;
	}
	else
	{
		int i = 1;
		tmp = head;
		while (i < position)
		{
			tmp = tmp->next;
			i++;
		}

		newnode->next = tmp->next;
		newnode->value = data;
		tmp->next = newnode;
		PrintLinkedList(head);
	}
}

LinkedList *newNode(int value)
{
	LinkedList *temp = new LinkedList;
	temp->value = value;
	temp->next = NULL;
	return temp;
}

void solve()
{
	LinkedList *head = newNode(1);
	head->next = newNode(2);
	head->next->next = newNode(3);
	head->next->next->next = newNode(4);

	// InsertatBegin(head);
	// InsertatEnd(head);
	// InsertatPosition(head);
	// ReverseLinkedList(head);
	// DeletefromBegin(head);
	// DeletefromEnd(head);
	// DeletefromPosition(head);
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