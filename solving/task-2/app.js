const express = require("express");
const path = require("path");
const cookieParser = require("cookie-parser");
const cors = require("cors");

// Конфиг
const config = require("./config/config");

// Инициализация подключения к БД
const Sequelize = require("sequelize");
/** @type {import("sequelize").Options} */
const sequelize_defaults = {
  dialect: "postgres",
  define: {
    timestamps: false,
    freezeTableName: true,
  },
  logging: false,
};
const db = new Sequelize(config.dbConnectionString, sequelize_defaults);

// Роуты
const longestRoadsRouter = require("./routes/roads/longestRoads")(db);

// Инициализация Middleware
const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cors());

// Статика
app.use(express.static(path.join(__dirname, "public")));

// API
app.use("/api/roads/longest", longestRoadsRouter);

module.exports = app;
