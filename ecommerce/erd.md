# Base de données

```mermaid
%%{init: { 'theme': 'default' } }%%

erDiagram
    Customer || -- }o Payment : "has"
    Customer || -- }o Purchase  : "makes"
    Purchase || -- || Payment : "has"
    Purchase || -- }| PurchaseItem : "is made of"
    Item || -- }o PurchaseItem : "is in"
    Item || -- }o CartItem : "is in"
    Customer || -- }o CartItem : "has"

    Customer {
        integer id PK
        VARCHAR256 email
        VARCHAR100 username
        VARCHAR20 password
        VARCHAR100 firstName
        VARCHAR100 lastName
        VARCHAR256 address
        VARCHAR20 phoneNumber
        integer role
        text image
    }

    Payment {
        integer id PK
        integer customer_id FK
        integer cardNumber
        integer expMonth
        integer expYear
        integer cvv
    }

    Item {
        integer id PK
        text name
        text description
        text image
        decimal price
        integer stock
    }

    CartItem {
        integer id PK
        integer customer_id FK
        integer item_id FK
        integer item_quantity
    }

    Purchase {
        integer id PK
        integer customer_id FK
        integer payment_id FK
        decimal purchase_cost
        timestamp purchase_date
    }

    PurchaseItem {
        integer id PK
        integer purchase_id FK
        integer item_id FK
        integer quantity
    }
```
