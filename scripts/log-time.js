const fs = require('fs');
const path = require('path');

// Get current date and time
const now = new Date();
const timeString = now.toLocaleString();

// Ensure data directory exists
const dataDir = path.join(__dirname, '..', 'data');
if (!fs.existsSync(dataDir)) {
  fs.mkdirSync(dataDir, { recursive: true });
}

// Write time to file
const filePath = path.join(dataDir, 'time.txt');
fs.appendFileSync(filePath, `${timeString}\n`);

console.log(`Time logged: ${timeString}`); 