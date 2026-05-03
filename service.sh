#!/system/bin/sh
# Frost-Gaming Spoofing
resetprop ro.product.model "Pixel 8 Pro"
resetprop ro.product.brand "google"
resetprop ro.product.manufacturer "Google"
resetprop ro.build.fingerprint "google/cheetah/cheetah:14/UP1A.231005.007/10754064:user/release-keys"

# Gaming Tweaks
setprop persist.sys.game.spoof 1
setprop debug.performance.tuning 1

# --- [ FITUR BARU: NETWORK OPTIMIZER ] ---
setprop net.tcp.2ms_active 1
setprop net.tcp.buffersize.wifi 4096,87380,110208,4096,16384,110208

# --- [ FITUR BARU: AUDIO LATENCY ] ---
setprop audio.offload.buffer.size.kb 32

# --- [ GRAPHICS & RENDERING ] ---
# Maksa GPU buat render UI
setprop gr.debug.working_format 0
# Ningkatin kualitas visual tapi tetep ringan
setprop persist.sys.use_dithering 1
# Disable statistik GPU buat hemat resource
setprop debug.egl.hw 1
setprop debug.egl.profiler 0

# --- [ LOGGING DISABLE ] ---
setprop logcat.live disable
# Matiin error reporting
setprop persist.sys.purgeable_assets 1

# --- [ GRAPHICS ACCELERATION ] ---
setprop debug.hwui.renderer skia
setprop debug.renderengine.backend skiagl

# --- [ THERMAL BYPASS - FROST EXTREME ] ---
# Menghentikan layanan thermal bawaan agar tidak throttling
stop thermal-engine
stop thermald
stop vendor.thermal-engine

# Menghapus batasan suhu di level sistem
setprop dalvik.vm.boot-optimizations 3
setprop persist.sys.thermal.config 0
setprop ro.config.hw_quickpoweron true

# Memaksa sistem mengabaikan limit panas untuk performa maksimal
setprop debug.performance.tuning 1
