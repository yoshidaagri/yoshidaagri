# -*- coding: utf-8 -*-

worker_processes 2
app_path = "/var/www/yoshidaagri"

#zyuuyou!!
listen "/var/www/yoshidaagri/shared/tmp/sockets/unicorn.sock"
pid "/var/www/yoshidaagri/current/tmp/unicorn.pid"

#timeout
timeout 60

#down time
preload_app true

stdout_path "#{app_path}/current/log/production.log"# log
stderr_path "#{app_path}/current/log/production_err.log"# err_log

GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true
