#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += device/lge/h324/overlay

LOCAL_PATH := device/lge/h324

# Packages
PRODUCT_PACKAGES += \
	audio_policy.default.so \
	audio_policy.stub.so \
	audio.primary.default.so \
	audio.r_submix.default.so \
	audio.usb.default.so

PRODUCT_PACKAGES += \
	libstagefright

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/mtk-ril.so \
	rild.libargs=-d /dev/ttyC0 \
	ro.mediatek.wlan.wsc=1 \
	ro.mediatek.wlan.p2p=1 \
	mediatek.wlan.ctia=0 \
	wifi.tethering.interface=ap0 \
	ro.telephony.default_network=0 \
	gsm.setPrefNetworkType=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=240
	ro.sdcrypto.syscall=380
	persist.data.sbp.update=0
	ro.carrier=unknown

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bg_apps_limit=12
	ro.sys.fw.bg_cached_ratio=0.33
	ro.sys.fw.mOomAdj1=0
	ro.sys.fw.mOomAdj2=1
	ro.sys.fw.mOomAdj3=2
	ro.sys.fw.mOomAdj4=3
	ro.sys.fw.mOomAdj5=9
	ro.sys.fw.mOomAdj6=15
	ro.sys.fw.mOomMinFree1=31424
	ro.sys.fw.mOomMinFree2=46512
	ro.sys.fw.mOomMinFree3=61600
	ro.sys.fw.mOomMinFree4=105488
	ro.sys.fw.mOomMinFree5=120576
	ro.sys.fw.mOomMinFree6=150624
	
# dvm
PRODUCT_PACKAGES += \
	dalvik.vm.isa.arm.features=div \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=96m \
	dalvik.vm.heapsize=256m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=2m \
	dalvik.vm.heapmaxfree=8m

PRODUCT_PACKAGES += \
	persist.service.main.enable=0 \
	persist.service.system.enable=0 \
	persist.service.radio.enable=0 \
	persist.service.events.enable=0 \
	persist.service.kernel.enable=0 \
	persist.service.packet.enable=0 \
	persist.service.crash.enable=0 \
	persist.service.power.enable=0

PRODUCT_PROPERTY_OVERRIDES += \
	wlan.chip.vendor=mtk \
	wlan.chip.version=mt6582 \
	wifi.lge.patch=true \
	dhcp.dlna.using=false \
	wifi.lge.sleeppolicy=0 \
	wifi.lge.offdelay=false \
	wlan.lge.concurrency=MCC \
	wlan.lge.supportsimaka=YES \
	wlan.lge.multisimaka=yes \
	wlan.lge.supportakaprime=YES \
	wifi.lge.hanglessid=false \
	wifi.interface=wlan0 \
	wifi.tethering.interface=wlan0 \
	wifi.direct.interface=p2p0 \
	wifi.lge.common_hotspot=true \
	wifi.lge.ftm_test=2 \
	wlan.lge.dcf.enable=true \
	wifi.lge.fcc=true

PRODUCT_PROPERTY_OVERRIDES += \
	log.tag.GpsLocationProvider=DEBUG \
	log.tag.LocationManagerService=DEBUG \
	ro.lge.mtk_dualsim=true \
	ro.lge.lcd_default_brightness=170 \
	persist.radio.multisim.config=dsds \
	persist.sys.strictmode.disable=true \
	ro.lge.chip.vendor=mtk \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.release=ALPS.L0.MP1.TC1SP.V1.4_MUSE6582.Y50.L_TMP2 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.version.sdk=1 \
	ro.telephony.sim.count=2 \
	persist.radio.default.sim=0 \
	net.tethering.noprovisioning=true \
	persist.lg.data.fd=-1 \
	persist.qcril.disable_retry=true \
	persist.data.netmgrd.qos.enable=false \
	persist.lg.data.fds_prop=0 \
	persist.md.perm.checked=to_upgrade \
	persist.gemini.sim_num=2 \
	ro.gemini.smart_sim_switch=false \
	ril.specific.sm_cause=1 \
	bgw.current3gband=0 \
	ril.external.md=0 \
	ro.btstack=blueangel \
	ro.sf.hwrotation=0 \
	ril.current.share_modem=2 \
	curlockscreen=1 \
	ro.mediatek.gemini_support=true \
	persist.radio.fd.counter=15 \
	persist.radio.fd.off.counter=5 \
	persist.radio.fd.r8.counter=15 \
	persist.radio.fd.off.r8.counter=5 \
	persist.mtk.wcn.combo.chipid=-1 \
	drm.service.enabled=true \
	fmradio.driver.enable=1 \
	ril.first.md=1 \
	ril.flightmode.poweroffMD=0 \
	ril.telephony.mode=0 \
	dalvik.vm.mtk-stack-trace-file=/data/anr/mtk_traces.txt \
	mediatek.wlan.chip=CONSYS_MT6582 \
	mediatek.wlan.module.postfix=_consys_mt6582 \
	ril.radiooff.poweroffMD=0 \
	ro.mediatek.version.branch=L0.MP1.TC1SP \
	ro.mtk_gemini_support=1 \
	ro.config.vc_call_vol_steps=6 \
	ro.config.vc_call_vol_default=3 \

# mtk
PRODUCT_PROPERTY_OVERRIDES += \
	ro.mtk_audio_profiles=1 \
	ro.mtk_audenh_support=1 \
	ro.mtk_gemini_enhancement=1 \
	ro.mtk_bt_support=1 \
	ro.mtk_wappush_support=1 \
	ro.mtk_agps_app=1 \
	ro.mtk_matv_analog_support=1 \
	ro.mtk_wlan_support=1 \
	ro.mtk_gps_support=1 \
	ro.mtk_omacp_support=1 \
	ro.mtk_search_db_support=1 \
	ro.mtk_dialer_search_support=1 \
	ro.mtk_dhcpv6c_wifi=1 \
	ro.have_aacencode_feature=1 \
	ro.mtk_phone_voice_recording=1 \
	ro.mtk_fd_support=1 \
	ro.mtk_widevine_drm_support=1 \
	ro.mtk_eap_sim_aka=1 \
	ro.mtk_fm_recording_support=1 \
	ro.mtk_audio_ape_support=1 \
	ro.mtk_flv_playback_support=1 \
	ro.mtk_fd_force_rel_support=1 \
	ro.mtk_wmv_playback_support=1 \
	ro.mtk_send_rr_support=1 \
	ro.mtk_rat_wcdma_preferred=1 \
	ro.mtk_emmc_support=1 \
	ro.mtk_bsp_package=1 \
	ro.mtk_tetheringipv6_support=1 \
	ro.mtk_phone_number_geo=1 \
	ro.mtk_enable_md1=1 \
	ro.mtk_wfd_support=1 \
	ro.mtk_sim_hot_swap=1 \
	ro.mtk_thumbnail_play_support=1 \
	ro.mtk_bip_scws=1 \
	ro.mtk_perfservice_support=1 \
	ro.mtk_cta_set=1 \
	ro.mtk_antibricking_level=2 \
	ro.mtk_live_photo_support=1 \
	ro.mtk_motion_track_support=1 \
	ro.mtk_privacy_protection_lock=1 \
	ro.mtk_tc1_feature=1 \
	ro.have_aee_feature=1 \
	ro.sim_me_lock_mode=0 \
	ro.mtk_plmn_list_wo_deact=0 \
	ro.mtk_voice_extension_support=1 \
	wfd.dummy.enable=1 \
	ro.mediatek.project.path=sys.knockon.knockoff.distance=10
	
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, vendor/lge/h324/vendor-h324.mk)
