/*
    in this example we use async/await es6 features to loop through results returned by a mongodb query
    (∩｀-´)⊃━☆ﾟ.*･｡ﾟ
*/
const mongodb = require("mongodb");
test();

async () => {
    const db = await mongodb.MongoClient.connect("mongodb://localhost:27001");
    await db.collection("Movies").drop();
    await db.collection("Movies").insetMany([
        {name: "Sammy Jean, the geny in an apprtment"},
        {name: "IPs gone wild"},
        {name: "Kenzy McKennzy, the real Gendy"}
    ]);

    const cursor = db.collection("Movies").find();
    for (let doc = await cursor.next(); doc != null; doc = await cursor.next()) {
        console.log(doc.name);
    }
}
