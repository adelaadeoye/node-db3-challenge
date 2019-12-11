const db = require("../data/db-config");
module.exports = {
  find,
  findById,
  findSteps
  // add,
  // update,
  // remove,
};
function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes")
    .where({ id })
    .first();
}
function findSteps(id) {
  return db("steps as s")
    .select("s.id","schemes.scheme_name","s.step_number","s.instructions")
    .join("schemes", "s.scheme_id", "schemes.id")
    .where("s.id", id);
}
