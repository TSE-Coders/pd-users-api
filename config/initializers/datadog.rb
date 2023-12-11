
# require 'ddtrace'

# ------------------------ TRACER CONFIGURATION -------------------------
##### https://docs.datadoghq.com/tracing/trace_collection/custom_instrumentation/ruby/?tab=activespan
##### https://github.com/DataDog/dd-trace-rb/blob/master/docs/GettingStarted.md#additional-configuration



# Datadog.configure do |c|

#   c.tracing.instrument :rails
#   c.service = '<YOUR_SERVICE NAME>'
#   c.env = '<YOUR_ENV_NAME>'
#
#   c.tracing.report_hostname = true
#   # c.tracing.test_mode.enabled = (ENV['RACK_ENV'] == 'dev')

####(traces and logs correlation)
#   c.tracing.log_injection = false

####(runtime metrics)
#   c.runtime_metrics.enabled = false
#   # c.runtime_metrics.statsd = Datadog::Statsd.new

####(Startup logs)
#   c.diagnostics.startup_logs.enabled = false
#   c.diagnostics.debug = false
# end
