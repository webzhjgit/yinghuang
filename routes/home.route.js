const express=require("express")
const router=express.Router();
const pool=require("../pool");

router.get("/cc",(req,res)=>{
    var sql="select * from dl_carousel"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//环境 
router.get("/hj",(req,res)=>{
    var sql="select * from dl_surr";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

// 教练
router.get("/jl",(req,res)=>{
    var sql="select * from dl_coach";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})


router.get("/wz",(req,res)=>{
    var sql="select * from dl_article";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})


router.get("/start",(req,res)=>{
    var sql="select * from dl_start"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/stt",(req,res)=>{
    var sql="select * from dl_stt"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/st",(req,res)=>{
    var sql="select * from dl_banner"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/book",(req,res)=>{
    var sql="select * from dl_book"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

router.get("/boo",(req,res)=>{
    var sql="select aimg,atitle from dl_bookss"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
router.get("/bo",(req,res)=>{
    var aid=req.query.aid;
    var sql="select aimg,atitle from dl_bookss where aid=?"
    pool.query(sql,[aid],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
  
module.exports=router;
