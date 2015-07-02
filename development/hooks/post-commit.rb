#!/usr/bin/env ruby
sandi_dir = '../../../project_stats/sandi_meter'
sandi_stat_dir = File.expand_path(sandi_dir, __FILE__)
sandi_stat_file = Time.zone.now.strftime('%Y-%m-%d_%H_%M_%S') + '.json'
`sandi_meter --json > "#{sandi_stat_dir}/#{sandi_stat_file}"`
