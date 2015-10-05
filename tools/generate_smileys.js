"use strict";

const Fs    = require("fs");
const Path  = require("path");

let SMILEY_LIST = [];

let count_categories = 0;
let count_smileys = 0;

const SMILEY_DIR = Path.join(__dirname, "..", "smileys");

Fs.readdirSync(SMILEY_DIR).forEach(directoryName => {
    const DIR_PATH = Path.join(SMILEY_DIR, directoryName);
    if (Fs.lstatSync(DIR_PATH).isDirectory()) {

        count_categories++;

        let category = {
            name: directoryName,
            notice: null,
            smileys: []
        };

        Fs.readdirSync(DIR_PATH).forEach(fileName => {
            if (fileName === "notice.txt") {
                category.notice = Fs.readFileSync(Path.join(SMILEY_DIR, directoryName, fileName), {encoding: "utf8"}).trim();
                return;
            }
            count_smileys++;
            category.smileys.push({
                file: fileName,
                path: Path.join("smileys", directoryName, fileName),
                name: Path.basename(fileName, Path.extname(fileName))
            });
        });

        SMILEY_LIST.push(category);
    }
});

Fs.writeFile(Path.join(SMILEY_DIR, "smileys.json"), JSON.stringify(SMILEY_LIST, null, 4), error => {
    if (error) {
        throw error;
    }
});

console.log(`smileys.json generiert mit ${count_smileys} smileys in ${count_categories} kategorien.`);
