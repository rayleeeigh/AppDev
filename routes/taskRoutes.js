const express = require ("express");
const router = express.Router();
const auth = require("../auth");
const taskController = require("../controller/taskController");

router.post("/create_task",taskController.createTask);
router.get("/read_task",taskController.readTask);
router.post("/update_task/:id",taskController.updateTask);
router.get("/delete_task/:id",taskController.deleteTask);
router.post("/delete_task/:id",taskController.deleteTask);

module.exports = router;