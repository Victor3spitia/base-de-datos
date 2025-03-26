const { connection } = require("mongoose");

const config = {
  db: {
    /* don't expose password or any sensitive info, done only for demo */
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "restapitest123",
  },
  listPerPage: 20,
};

/* config.connect(function(err) {
  if (err) throw err;
  config.query("SELECT * FROM programming_languages", function (err, result, fields)
{
  if (err) throw err;
  console.log(result); 
});
});  */

module.exports = config;
