const express = require("express");
const app = express();
const port = 3353;

const { sequelize } = require("./models");
//sequelize.sync({ force: true });

const routerUser = require("./controllers/user/userRouter")
const routerBook = require("./controllers/book/bookRouter")
const routerOrder = require("./controllers/order/orderRouter")
app.use(express.json());

app.use("/users", routerUser);
app.use("/books", routerBook);
app.use("/orders", routerOrder);

app.listen(port, ()=>{
    console.log(`listen at http:/localhost:${port}`)
});

