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
    try {
      const result = (
        await db.query(
          "SELECT row_number() OVER(ORDER BY length DESC) index, name, (length / 1000) as length from addr.roads ORDER BY length DESC"
        )
      )[0];

      if (!result) return res.status(200).json([]);
      return res.status(200).json(result);
    } catch (error) {
      return res.status(501).json({
        message: "Error in processing the method",
      });
    }
  });

  return router;
};
