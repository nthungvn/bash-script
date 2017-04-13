function FindProxyForURL(url, host)
{
	var tor = "SOCKS5 127.0.0.1:9150";
	
	// Facebook
	if (shExpMatch(host, "*facebook.com") || shExpMatch(host, "*.facebook.net") || shExpMatch(url, "*.facebook.com*") || shExpMatch(url, "*.facebook.net*") || shExpMatch(host, "*.fbcdn.net") || shExpMatch(host, "*.fbcdn.com") || shExpMatch(host, "*.fbsbx.com") || shExpMatch(url, "*fbsbx.com*") || shExpMatch(host, "*.fb.com") || shExpMatch(host, "*.fb.me") || shExpMatch(host, "*.tfbnw.net") || shExpMatch(host, "*.messenger.com") || shExpMatch(host, "*.akamaihd.net")) {
		return tor;
	}
	
	// Google
	if (shExpMatch(url, "https://mail.google.com/*") || shExpMatch(url, "https://hangouts.google.com*") || shExpMatch(url, "https://drive.google.com/*") || shExpMatch(url, "https://photos.google.com/*") || shExpMatch(host, "*.googleusercontent.com")) {
		return tor;
	}
	
	// News
	if (shExpMatch(url, "*dantri.com.vn*") || shExpMatch(url, "*dantricdn.com*") || shExpMatch(url, "*channelvn.net*") || shExpMatch(url, "*admicro.vn*") || shExpMatch(url, "*tuoitre.vn*") || shExpMatch(host, "*vnexpress.net") || shExpMatch(host, "*.vnecdn.net") || shExpMatch(host, "*.eclick.vn") || shExpMatch(host, "*genkcdn.vn")) {
		return tor;
	}
	
	// News Opera
	if (shExpMatch(host, "*24h.com.vn") || shExpMatch(host, "*kenh14.vn") || shExpMatch(host, "*kenh14cdn.com") || shExpMatch(host, "*vietbao.vn") || shExpMatch(host, "*kienthuc.net.vn") || shExpMatch(host, "*tienphong.vn") || shExpMatch(host, "giadinh.net.vn") || shExpMatch(host, "*cafef.vn") || shExpMatch(host, "*laodong.com.vn") || shExpMatch(host, "*eva.vn")) {
		return tor;
	}
	
	// Yahoo Mail
	if (shExpMatch(host, "*.yahoo.com")) {
		return tor;
	}
	
	// Music
	if (shExpMatch(url, "*nhac.vn*") || shExpMatch(url, "*vegaid.vn") || shExpMatch(url, "*nhaccuatui.com*") || shExpMatch(host, "*.nixcdn.com") || shExpMatch(url, "*vegacdn.vn*") || shExpMatch(host, "*keeng.vn")) {
		return tor;
	}
	
	// Zing
	if (shExpMatch(host, "*.zing.vn") || shExpMatch(host, "*.zdn.vn")) {
		return tor;
	}
	
	// Cloud
	if (shExpMatch(host, "*dropbox.com") || shExpMatch(host, "*dropboxstatic.com") || shExpMatch(host, "*box.com") || shExpMatch(host, "*boxcdn.net") || shExpMatch(host, "*box.net") || shExpMatch(host, "*boxlocalhost.com") || shExpMatch(host, "*mediafire.com")) {
		return tor;
	}
	
	// Misc
	if (shExpMatch(host, "*upload.youtube.com") || shExpMatch(url, "*webtretho.com*") || shExpMatch(host, "*thegioididong.com") || shExpMatch(host, "*tgdd.vn") || shExpMatch(host, "*postimg.org") || shExpMatch(host, "*sourceforge.net") || shExpMatch(host, "*cellphones.com.vn") || shExpMatch(host, "*dmx.vn") || shExpMatch(host, "*adf.ly")) {
		return tor;
	}
	
	// Ads
	if (shExpMatch(host, "*.doubleclick.net") || shExpMatch(host, "*.googleadservices.com")) {
		return tor;
	}
	
	// Lazada
	if (shExpMatch(host, "*.lazada.vn") || shExpMatch(host, "*.slatic.net") || shExpMatch(host, "*.ants.vn")) {
		return tor;
	}
	
	// Sendo
	if (shExpMatch(host, "*.sendo.vn") || shExpMatch(host, "*.scdn.vn")) {
		return tor;
	}
	
	// Plane
	if (shExpMatch(host, "*.vietjetair.com")) {
		return tor;
	}
	
	// Forum
	if (shExpMatch(host, "*tinhte.vn")) {
		return tor;
	}
	
	if (shExpMatch(host, "*.skype.com") || shExpMatch(host, "*.skypeassets.com") || shExpMatch(host, "*.live.com") || shExpMatch(host, "*.trouter.io") || shExpMatch(host, "*.msecnd.net") || shExpMatch(host, "*.microsoft.com")) {
		return "DIRECT";
	}

	if (shExpMatch(host, "*.threatstop.com") || shExpMatch(host, "*.tma.com.vn") || shExpMatch(host, "localhost*") || isInNet(host, "192.168.0.0", "255.255.0.0") || shExpMatch(host, "*.xip.io")) {
		return "DIRECT";
	}

	return "PROXY proxy.tma.com.vn:8080";
}
