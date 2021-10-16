/**
 * Routes for receiving commands
 */

const express = require("express");

/**
 * longestRoadsRouter
 * @param {import("sequelize").Sequelize} db
 * @returns {import("express").Router}
 */
module.exports = function (db) {
  const router = (exports.router = express.Router());

  router.get("/", async (req, res, next) => {
    /* TODO: Вернуть самые длинные дороги в виде JSON массива формата:
        - Порядковый номер (1 - у самой длинной, 2 - у той, что короче 1 и т.д.)
        - Название
        - Длина в км
    */
    // Для запросов к базе использовать методы объекта db, например, db.query()

    const result = (
      await db.query("SELECT name, length FROM addr.roads ORDER BY length DESC")
    )[0].map((value, i, array) => {
      return {
        index: i + 1,
        name: value.name,
        length: value.length / 1000,
      };
    });

    if (!result)
      return res.status(501).json({
        message: "Method is not currently implemented!",
      });

    return res.status(200).json(result);
  });

  return router;
};
