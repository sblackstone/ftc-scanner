import commandLineArgs from 'command-line-args';
import colorize from 'json-colorizer';
import chalk from 'chalk';
import { readFileSync } from 'fs';
import path from 'path';
import {fileURLToPath} from 'url';


function readJSON(cik) {
  const __filename = fileURLToPath(import.meta.url);
  const fn = path.join(path.dirname(__filename), 'companyfacts', `CIK${cik}.json`);
  const data = readFileSync(fn, "utf-8"); // todo make this async?
  return JSON.parse(data);
}

(async function() {

  const options = commandLineArgs([
    { name: 'cik', type: String, multiple: false, defaultOption: true },
  ]);

  const usage = (err) => {
    console.log(`Usage: $0 <cik>`);
    if (err) {
      console.log(chalk.red(err));
    }
    process.exit(-1);
  }

  if (!options.cik) {
    usage("must provide CIK");
  }

  options.cik = options.cik.padStart(10, '0');
  const data = readJSON(options.cik);
  console.log(colorize(JSON.stringify(data, null, 4)));

})();
