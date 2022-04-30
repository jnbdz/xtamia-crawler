# Youtube-DL
Youtube-DL is the application that is used for downloading videos. It supports a very long list of websites and video formats.

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