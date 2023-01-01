import sharp from "sharp";

const FILE_NAME = "screenshot.png";

async function main() {
  const image = await sharp(FILE_NAME);
  const imageMetadata = await image.metadata();

  image
    .extract({ left: 0, top: 0, width: imageMetadata.width, height: 525 })
    .toFile("screenshot-cropped.png");
}

main();
