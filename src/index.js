const express = require("express");
const app = express();

const PORT = 2000;

const cors = require("cors");

app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.send("<h1>Welcome to PWDK x PUPR API</h1>");
});

const {
  sequelize,
  SectionData,
  Homepage,
  SectionBanner,
} = require("./db/sequelize");

app.patch("/section/banner", async (req, res) => {
  try {
    const { banner_title, banner_caption, banner_image, banner_id } = req.body;

    await SectionBanner.update(
      {
        banner_caption,
        banner_image,
        banner_title,
      },
      {
        where: {
          id: banner_id,
        },
      }
    );

    return res.status(200).json({
      message: "Data updated",
    });
  } catch (err) {
    console.log(err);
    return res.status(500).json({
      message: "Server error",
    });
  }
});

app.patch("/section/data/:id", async (req, res) => {
  try {
    console.log(req.body);
    await SectionData.update(
      {
        ...req.body,
      },
      {
        where: {
          id: req.params.id,
        },
      }
    );

    return res.status(200).json({
      message: "Data updated",
    });
  } catch (err) {
    console.log(err);
    return res.status(500).json({
      message: "Server error",
    });
  }
});

app.patch("/homepage", async (req, res) => {
  try {
    await Homepage.update(
      {
        ...req.body,
      },
      {
        where: {
          id: 1,
        },
      }
    );

    return res.status(200).json({
      message: "Homepage updated",
    });
  } catch (err) {
    console.log(err);
    return res.status(500).json({
      message: "Server error",
    });
  }
});

app.get("/section/banner", async (req, res) => {
  try {
    const findBannerData = await SectionBanner.findOne({
      where: {
        ...req.query,
      },
    });

    return res.status(200).json(findBannerData);
  } catch (err) {
    return res.status(500).json({
      message: "Server error",
    });
  }
});

app.get("/section/data", async (req, res) => {
  try {
    const findSectionData = await SectionData.findAll({
      where: {
        ...req.query,
      },
    });

    return res.status(200).json(findSectionData);
  } catch (err) {
    return res.status(500).json({
      message: "Server error",
    });
  }
});

app.get("/homepage", async (req, res) => {
  try {
    const findHomepage = await Homepage.findByPk(1);

    return res.status(200).send(findHomepage)
  } catch (err) {
    return res.status(500).json({
      message: "Server error",
    });
  }
})

app.listen(PORT, () => {
  sequelize.sync({ alter: true });
  console.log("Listening in port", PORT);
});
