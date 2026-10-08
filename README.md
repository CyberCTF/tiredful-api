# Tiredful API

[Tiredful API](https://github.com/payatu/Tiredful-API) by Payatu: an intentionally broken REST
API built with Django REST Framework, to teach the flaws insecure coding leaves in web services:
information disclosure, insecure direct object references, access control, throttling, SQL
injection and cross-site scripting. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and the
upstream source in [`build/web/app/`](build/web/app) builds with its own Dockerfile, with the
dependencies requirements.txt leaves open pinned.

| Machine | Service |
| --- | --- |
| web | Tiredful API (Django development server) on port 8000, published on 8030 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8030/. The Scenarios page lists the exercises; the Token Manager page
gives the users (`batman` / `Batman@123`, `superman` / `Superman@123`) and how to get a bearer
token. The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM (`cloud-docker`)
or on Kubernetes. Lab guide: the Scenarios page and
[Payatu's solutions](https://payatu.com/tiredful-api-solution/).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

GPL-3.0, as Tiredful API ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep
it isolated.
