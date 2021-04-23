const account = require("../models/account");

exports.createAccount= async(req,res)=> {
    let codes = generateCode();

    let data = await account.model.create(
        {code:codes,
        username:req.body.username},
        {password:req.body.password}
    );
    res.redirect("/accounts/read_account");
}

exports.readAccount = async(req,res)=>{
    let data = await account.model.findAll();
    res.render("accountIndex",{accounts:data});
}

exports.updateAccount = async(req,res)=>{
    let data = await account.model.findByPk(req.params.id);

    data.username=req.body.username;
    data.password=req.body.password;
    data.updatedAt=true;

    await data.save();

    res.redirect("/accounts/read_account");
}

exports.deleteAccount = async(req,res)=>{
    let id = req.params.id; 

    let data = await account.model.destroy({
            where: {
                id:req.params.id
            }
        })
    res.redirect("/accounts/read_account");
}


generateCode = () => {
    let generate = "";
    const char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const length = 32;
    for ( var i = 0; i < length; i++ ) {
        generate += char.charAt(Math.floor(Math.random() * char.length));
    }
    return generate;
}