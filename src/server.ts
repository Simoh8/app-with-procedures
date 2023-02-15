import express ,{Request,json,Response} from 'express';

const app= express();
 app.use(json())




 app.listen(5000,()=>{
console.log('the server is working');

    // res.status(200).json({message :"app is runnning"})
 })