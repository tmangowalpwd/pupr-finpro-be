const { Sequelize, DataTypes } = require("sequelize");

const sequelize = new Sequelize({
  database: "pwdk_pupr",
  username: "root",
  password: "password",
  dialect: "mysql",
  port: 3306,
});

const SectionBanner = sequelize.define("SectionBanner", {
  banner_title: {
    type: DataTypes.STRING,
  },
  banner_caption: {
    type: DataTypes.TEXT,
  },
  banner_image: {
    type: DataTypes.STRING,
  },
});

const SectionData = sequelize.define("SectionData", {
  order: {
    type: DataTypes.INTEGER,
  },
  title: {
    type: DataTypes.STRING,
  },
  data_number: {
    type: DataTypes.DOUBLE,
  },
  data_unit: {
    type: DataTypes.STRING,
  },
  section_type: {
    type: DataTypes.ENUM("perumahan", "sda", "apbn", "sdm"),
  },
});

SectionBanner.hasMany(SectionData);
SectionData.belongsTo(SectionBanner);

const Homepage = sequelize.define("Homepage", {
  title: {
    type: DataTypes.STRING,
  },
  description: {
    type: DataTypes.STRING,
  },
  image_url: {
    type: DataTypes.STRING,
  },
});

module.exports = {
  sequelize,
  SectionData,
  Homepage,
  SectionBanner
};
