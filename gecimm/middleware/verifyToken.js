const jwt = require('jsonwebtoken');

// // Middleware to verify JWT tokens
// const verifyToken = (req, res, next) => {
//     // Get the token from query parameters
//     const token = req.query.token;

//     // Check if the token is provided
//     if (!token) {
//         return res.status(403).json({ message: 'No token provided' });
//     }

//     // Verify the token
//     jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
//         if (err) {
//             console.error('Token verification failed:', err); // Log error for debugging
//             return res.status(500).json({ message: 'Failed to authenticate token' });
//         }

//         // Attach the decoded user information to the request object
//         req.user = decoded;
//         console.log('JWT_SECRET:', process.env.JWT_SECRET);
//         next(); // Proceed to the next middleware or route handler
//     });
// };


// Middleware to verify token
const verifyToken = (req, res, next) => {
    const token = req.headers['authorization']?.split(' ')[1];
    if (!token) return res.status(401).send('Access Denied');
  
    jwt.verify(token, 'your_jwt_secret', (err, decoded) => {
        if (err) return res.status(500).send('Failed to authenticate token.');
        req.userId = decoded.id;
        next();
    });
  };
  module.exports = { verifyToken };
  