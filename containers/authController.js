const db = require('../config/db');
const { validationResult } = require('express-validator');
const bcrypt = require('bcrypt');

const registerUser = async (req, res,err) => {
  // Check for validation errors
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    return res.status(400).json({ errors: errors.array() });
  }
  try {
    const { firstname, lastname, email, username, password } = req.body;

    // Check if the user already exists
    const query = 'SELECT * FROM users WHERE email = ?';
    const existingUser = await db.promise().query(query, [email]);

    if (existingUser[0].length > 0) {
      return res.status(400).json({ msg: 'User already exists' });
    }
    // Hash the password
    const hashedPassword = await bcrypt.hash(password, 10); // 10 is the number of salt rounds
    

    // Create a new user
    const insertQuery = `
      INSERT INTO users (firstname, lastname, email, username, password)
      VALUES (?, ?, ?, ?, ?)
    `;

    await db.promise().query(insertQuery, [firstname, lastname, email, username, hashedPassword]);
    res.send(`
      <html>
      <head> 
      <link rel="stylesheet" href="style.css">
      </head>
      <body>
      <div class="signup-container" >
        <h1>Registration Successful</h1>
        <p>You have successfully registered as a user.</p>
        <p>Firstname: ${firstname}</p>
        <p>Lastname: ${lastname}</p>
        <p>Email: ${email}</p>
        <p>Username: ${username}</p>
        <p>Redirecting back to registration...</p>
        </div>
        <script>
          setTimeout(function() {
            window.location.href = '${req.headers.referer || "/"}';// Redirect back to registration form after a delay
          }, 3000); // Redirect after 3 seconds
        </script>
      </body>
      </html>
    `);
      if (!err) {
        console.error('Error inserting user:', err);
      } else {
        console.log('User inserted successfully');
      }
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  } 
};
module.exports = {
    registerUser,
  };  