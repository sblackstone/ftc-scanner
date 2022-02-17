#!/usr/bin/env node

import commandLineArgs from 'command-line-args';
import colorize from 'json-colorizer';
import chalk from 'chalk';
import { readFileSync } from 'fs';
import path from 'path';
import {fileURLToPath} from 'url';

const FILENAME = fileURLToPath(import.meta.url);
const DIRNAME = path.dirname(FILENAME);

async function getTickerMapping() {
  const fn = path.join(DIRNAME, `ticker.txt`);
  const data = readFileSync(fn, "utf-8"); // todo make this async?
  const result = {};
  const rows = data.split("\n");
  for (const row of rows) {
    const [ticker, cik ] = row.split("\t");
    result[ticker] = cik.padStart(10, '0');
  }
  return result;
}

function readJSON(cik) {
  const fn = path.join(DIRNAME, 'companyfacts', `CIK${cik}.json`);
  const data = readFileSync(fn, "utf-8"); // todo make this async?
  return JSON.parse(data);
}

(async function() {

  let options = null;

  try {
    options = commandLineArgs([
      { name: 'cik', type: String, multiple: false },
      { name: 'ticker', type: String, multiple: false },
    ]);
  } catch (err) {
    usage(err);
  }

  const usage = (err) => {
    console.log(`Usage: $0 [ --cik <cik> | --ticker <ticker>]`);
    if (err) {
      console.log(chalk.red(err));
    }
    process.exit(-1);
  }

  if (options.cik && options.ticker) {
    usage("must provide CIK or ticker");
  }
  if (!options.cik && !options.ticker) {
    usage("must provide either CIK or ticker");
  }


  if (options.ticker) {
    const tickerMap = await getTickerMapping();
    if (!tickerMap[options.ticker]) {
      console.log(chalk.red(`Unknown ticker: ${options.ticker}`));
      process.exit(-1);
    } else {
      options.cik = tickerMap[options.ticker];
    }
  }
  options.cik = options.cik.padStart(10, '0');
  const data = readJSON(options.cik);
  console.log(colorize(JSON.stringify(data, null, 4)));

})();
