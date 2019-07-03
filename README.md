# Monadical Dev-Ops Take-Home Project

This is the example application to be used by interviewees applying for a Dev-Ops engineer position at Monadical.

As outlined here:  
https://docs.zalad.io/s/monadical-study-guide#Dev-Ops-Project

## Quickstart

1. Purchase the cheapest $3.50/mo VPS with a public IP on Vultr.com (or DigitalOcean)
2. Buy a cheap domain via Google Domains, Namecheap, or another registrar and point it to your VPS
3. Fork this repo, and clone your version into `/opt/banana` on the VPS  
  `git clone https://github.com/<yourusername>/example-devops-app /opt/banana`
4. Begin setting up the server (paths below are relative to `/opt/banana`)  
  - Put all your config in `etc/` (e.g config for `nginx`, `supervisor`, etc)
  - Put all mutable data in `data/` (e.g. `nginx` certs, `postgres` database, logs)
  - Put all management scripts in `bin/` (e.g. `start`, `stop`, `deploy`, `backup`)
  - Put all application code in `code/` (e.g. django app code, python virtualenv)

Empty stub files are provided in the recommended directory structure to help speed up the process.  
Make sure to edit them with your code and commit all config, scripts, and code created during the setup process to your fork of this repo.

Follow the structure oulined in this post:
https://docs.zalad.io/s/an-intro-to-the-opt-directory
