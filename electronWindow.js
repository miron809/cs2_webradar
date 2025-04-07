const { app, BrowserWindow, screen } = require('electron');

app.on('ready', () => {
    const { width, height } = screen.getPrimaryDisplay().workAreaSize;
    const win = new BrowserWindow({
        width: 450,
        height: 450,
        x: width - 450,
        y: 100,
        transparent: true,
        frame: false,
        // alwaysOnTop: true,
        webPreferences: {
            nodeIntegration: false,
        },
    });

    win.loadURL('http://localhost:5173/');
});
