# xtamia-crawler
An open-source web crawler build on Electron for Windows, Mac OS X, and Linux.

## Making youtube-dl portable

Windows: 
```powershell
pyinstaller.exe youtube_dl\__main__.py --onefile --name youtube-dl
```

Unix: 
```bash
pyinstaller youtube_dl/__main__.py --onefile --name youtube-dl
```

The output will be found in `dist/` directory.
