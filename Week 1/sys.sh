# For reading laptop battery power level
# Typicall found under /sys/class/power_supply/

cat /sys/class/power_supply/BAT0/capacity

# Exact directory name can vary, but usually BAT0 or BAT1

# For reading desktop CPU temperature
# Typically found under /sys/class/thermal/thermal_zone*/

cat /sys/class/thermal/thermal_zone0/temp

# Usually reported in millidegrees celcius; to get the temp in degree celcius, divide output by 1000

cat "/sys/class/thermal/thermal_zone0/temp / 1000" | bc

# Note that the exact path may differ, based on how your Linux system is set up. You might need to explore under sys/class/.

