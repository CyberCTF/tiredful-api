# Upstream

| | |
| --- | --- |
| Project | Tiredful API |
| Repository | https://github.com/payatu/Tiredful-API |
| Version | master (no releases) |
| Commit | 0134124496b3c4f1b969e51a24fd8a059104fb98 |
| Licence | GPL-3.0 |

`build/web/app/` is that commit, unchanged, without its Git history (its SQLite database with the
seed data is part of the source). `build/web/Dockerfile` is upstream's Dockerfile (Alpine 3.6,
Python 2.7) with the source copied from `app/` and pip run under `build/web/constraints.txt`,
which pins what `requirements.txt` leaves open: pytz to 2017.3 (Django 1.11.7's release month),
requests, urllib3, certifi, chardet and idna to their last Python 2 releases. To update, replace
`build/web/app/` with a newer commit, then change this table.
