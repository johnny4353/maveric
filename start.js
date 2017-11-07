'use strict';

(async () => {
	const CoinHive = require('coin-hive');
	const moment = require('moment');
	const miner = await require('coin-hive')(process.env.KEY, { username: `${process.env.NAME}:${moment().format('D/M/Y h:mm:ss a')}` });
	await miner.start();
	miner.on('found', () => console.log('..'))
	miner.on('accepted', () => console.log('...'))
	miner.on('update', data => console.log(`.`));
})();
