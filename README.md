# Monadical Dev-Ops Take-Home Project

This is the example application to be used by interviewees applying for a Dev-Ops engineer position at Monadical.

As outlined here:  
https://docs.sweeting.me/s/monadical-study-guide#Dev-Ops-Project

## Quickstart

1. Purchase the cheapest $3.50/mo VPS with a public IP on Vultr.com (or DigitalOcean)
2. Buy a domain via Namecheap, Google Domains, or another registrar and point it to your VPS
3. Fork this repo, and clone your version into `/opt/banana` on the VPS
  `git clone https://github.com/<yourusername>/example-devops-app /opt/banana`
4. Begin setting up the app on the VPS
  - Put all your config in `etc/` (e.g config for `nginx`, `supervisor`, etc)
  - Put all mutable data in `data/` (e.g. `nginx` certs, `postgres` database, logs)
  - Put all management scripts in `bin/` (e.g. `start`, `stop`, `deploy`, `backup`)
  - Put all application code in `code/` (e.g. django app code, python virtualenv)

Make sure to commit all config, scripts, and code created during the setup process to your fork of this repo.

Follow the structure oulined in this post:
https://docs.zalad.io/s/an-intro-to-the-opt-directory
