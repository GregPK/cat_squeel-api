#!/usr/bin/env ruby
sandi_stat_dir = File.expand_path('../../../project_stats/sandi_meter', __FILE__)
sandi_stat_file = Time.now.strftime("%Y-%m-%d_%H_%M_%S") + ".json"
`sandi_meter --json > "#{sandi_stat_dir}/#{sandi_stat_file}"`
