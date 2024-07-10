# Bot Discord Python Music

Bot Discord này được phát triển bằng Python để phát nhạc trong các kênh thoại của Discord. 

## Cấu trúc thư mục

```
bot-discord-python-music/
├── bin/
│   ├── ffmpeg.exe
│   └── ffprobe.exe
├── config/
│   ├── i18n/
│   │   ├── en.json
│   │   ├── es.json
│   │   ├── fr.json
│   │   ├── hin.json
│   │   ├── it.json
│   │   ├── ja.json
│   │   ├── kr.json
│   │   ├── pl.json
│   │   ├── ru.json
│   │   ├── sv.json
│   │   ├── th.json
│   │   ├── vi.json
│   │   └── zh_TW.json
│   ├── aliases.json
│   ├── autoplaylist.txt
│   ├── blacklist.txt
│   ├── Free List.txt
│   ├── options.ini
│   ├── permissions.ini
│   └── whitelist.txt
├── data/
│   ├── dcs_music_bot.log
│   ├── dcs_music_bot.log.last
│   ├── musicbot.log
│   └── musicbot.log.last
├── musicbot/
│   ├── lib/
│   │   ├── event_emitter.py
│   │   └── __init__.py
│   ├── __init__.py
│   ├── aliases.py
│   ├── bot.py
│   ├── config.py
│   ├── constants.py
│   ├── constructs.py
│   ├── downloader.py
│   ├── entry.py
│   ├── exceptions.py
│   ├── json.py
│   ├── opus_loader.py
│   ├── permissions.py
│   ├── player.py
│   ├── playlist.py
│   ├── spotify.py
│   ├── utils.py
│   ├── bootstrap.py
├── README.md
├── requirements.txt
├── run.py
└── Start.bat
```

## Hướng dẫn cài đặt

### Yêu cầu hệ thống

- Python 3.8 hoặc mới hơn
- Pip (đi kèm với Python)
- ffmpeg và ffprobe

### Bước 1: Tải và cài đặt Python

1. Tải Python từ [python.org](https://www.python.org/downloads/).
2. Cài đặt Python và đảm bảo rằng bạn đã thêm Python vào PATH trong quá trình cài đặt.

### Bước 2: Tải và đặt ffmpeg và ffprobe

1. Truy cập [ffmpeg.org](https://ffmpeg.org/download.html).
2. Tải về bản ffmpeg phù hợp với hệ điều hành của bạn.
3. Giải nén tệp đã tải về và lấy hai tệp `ffmpeg.exe` và `ffprobe.exe`.
4. Đặt hai tệp này vào thư mục `bin` trong dự án của bạn.

### Bước 3: Cài đặt các gói phụ thuộc

1. Mở terminal hoặc command prompt.
2. Điều hướng đến thư mục chứa tệp `requirements.txt`.
3. Chạy lệnh sau để cài đặt các gói phụ thuộc:

   ```bash
   pip install -r requirements.txt
   ```

### Bước 4: Chạy bot

1. Đảm bảo rằng bạn đã cấu hình tệp `config/options.ini` theo ý muốn.
2. Chạy bot bằng cách sử dụng lệnh sau trong terminal hoặc command prompt:

   ```bash
   python run.py
   ```

### Bước 5: Sử dụng bot

- Tham gia vào kênh thoại mà bạn muốn bot phát nhạc.
- Sử dụng các lệnh đã được cấu hình để bot bắt đầu phát nhạc trong kênh thoại.

## Tham khảo

- [Repository trên GitHub](https://github.com/vngctcreative/bot-discord-python-music)

Nếu bạn gặp bất kỳ vấn đề gì trong quá trình cài đặt hoặc sử dụng, vui lòng tạo một issue trên GitHub để được hỗ trợ.
