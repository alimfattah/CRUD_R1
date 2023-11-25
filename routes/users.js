const express = require('express');
const router = express.Router();
const db = require('../database');

router.get('/user-list', (req, res) => {
  const sql = 'SELECT * FROM final'; //handlin http get req
  db.query(sql, (err, data) => {
    if (err) throw err; 
    res.render('user-list', { title: 'User List', userData: data });
  });
});

module.exports = router;