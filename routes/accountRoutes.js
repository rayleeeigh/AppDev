const express = require ("express");
const router = express.Router();
const auth = require("../auth");
const accountController = require("../controller/accountController");

router.post("/create_account",accountController.createAccount);
router.get("/read_account",accountController.readAccount);
router.post("/update_account/:id",accountController.updateAccount);
router.get("/delete_account/:id",accountController.deleteAccount);
router.post("/delete_account/:id",accountController.deleteAccount);

module.exports = router;