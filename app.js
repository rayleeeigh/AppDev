const express = require ("express");
const app = express();
const taskRoutes = require("./routes/taskRoutes");
const accountRoutes = require("./routes/accountRoutes");
const bodyParser = require("body-parser");

app.use('/css',express.static(__dirname + '/public/css'));
app.use('/js',express.static(__dirname + '/public/js'));
app.use('/img',express.static(__dirname + '/public/img'));
app.use('/assets',express.static(__dirname + '/assets'));

app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


//routes
app.use("/accounts",accountRoutes);
app.use("/tasks",taskRoutes);

app.listen(3000);