# API Documentation
base route: [container_name]/api
## User
- **Base Path**: [container-name]/
-  **Functions**:
   -  GetUserFromId: GET/getUser
   -  UpdateUser: POST/updateUser
   -  Login: Post/login
   -  Register: Post/register
   -  Logout: Post/logout

## Catalog
- **Controller**: Items Controller
- **Base Path**: [container-name]/
-  **Functions**:
   -  GetItems: GET/getItems
   -  GetItem: GET/getItem/[id]
   -  PutItem: PUT/updateItem/[id]
   -  PostItem: POST/addItem
   -  DeleteItem: DELETE/deleteItem/[id]
   -  OrderItem: PUT/order/[id]/[itemQuantity]

## Cart
**Controller**: Cart Items Controller
- **Base Path**:[container-name]/
-  **Functions**:
   -  GetCartItems: GET/getCartItems
   -  GetCartItem: GET/getCartItem/[id]
   -  PutCartItem PUT/updateCartItem/[id]
   -  PostCartItem: POST/addCartItem
   -  DeleteCartItem: DELETE/removeCartItem/[id]
   -  GetCartItemsByUser: GET/getUserItems/[id]
   -  ClearCartItemsByUser: DELETE/clearUserCart/[id]

## Purchase
**Controller**: Purchase Controller
- **Base Path**:[container-name]/
-  **Functions**:
   -  GetPurchases: GET/getPurchases
   -  GetPurchase: GET/getPurchase/[id]
   -  GetPurchasesForUser: GET/getPurchases/[id]
   -  PostPurchases: POST/addPurchase

**Controller**: Purchase Item Controller
- **Base Path**:[container-name]/
-  **Functions**:
   -  GetPurchaseItems: GET/getPurchaseItems
   -  GetPurchaseItem: GET/getPurchaseItem/[id]
   -  GetItemsForPurchase: GET/getItemsForPurchase/[id]
   -  PostPurchaseItem: GET/addPruchaseItem
