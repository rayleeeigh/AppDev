const task = require("../models/task");

exports.createTask= async(req,res)=> {

    let data = await task.model.create(
        {taskDesc:req.body.taskdesc},
        {status:req.body.status}
    );
    res.redirect("/tasks/read_task");
}

exports.readTask = async(req,res)=>{
    let data = await task.model.findAll();
    res.render("taskIndex",{tasks:data});
}

exports.updateTask = async(req,res)=>{
    let data = await task.model.findByPk(req.params.id);

    data.taskDesc=req.body.taskdesc;
    data.status=req.body.status;
    data.completedAt=req.body.completedat;

    await data.save();

    res.redirect("/tasks/read_task");
}

exports.deleteTask = async(req,res)=>{
    let id = req.params.id;

    let data = await task.model.destroy({
            where: {
                taskID:req.params.id
            }
        })
    res.redirect("/tasks/read_task");
}
