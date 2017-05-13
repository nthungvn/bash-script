function FindProxyForURL(url, host)
{
	var direct = "DIRECT";
	var tmaProxy = "PROXY 10.10.10.10:8080";

	// Facebook
	if (shExpMatch(host, "*facebook.com") || shExpMatch(host, "*.facebook.net") || shExpMatch(url, "*.facebook.com*") || shExpMatch(url, "*.facebook.net*") || shExpMatch(host, "*.fbcdn.net") || shExpMatch(host, "*.fbcdn.com") || shExpMatch(host, "*.fbsbx.com") || shExpMatch(url, "*fbsbx.com*") || shExpMatch(host, "*.fb.com") || shExpMatch(host, "*.fb.me") || shExpMatch(host, "*.tfbnw.net") || shExpMatch(host, "*.messenger.com") || shExpMatch(host, "*.akamaihd.net")) {
		return direct;
	}

	// Google
	if (shExpMatch(url, "https://mail.google.com/*") || shExpMatch(url, "https://hangouts.google.com*") || shExpMatch(url, "https://drive.google.com/*") || shExpMatch(url, "https://photos.google.com/*") || shExpMatch(host, "*.googleusercontent.com")) {
		return direct;
	}

	// Yahoo Mail
	if (shExpMatch(host, "*.yahoo.com")) {
		return direct;
	}

	// Cloud
	if (shExpMatch(host, "*dropbox.com") || shExpMatch(host, "*dropboxstatic.com") || shExpMatch(host, "*box.com") || shExpMatch(host, "*boxcdn.net") || shExpMatch(host, "*box.net") || shExpMatch(host, "*boxlocalhost.com") || shExpMatch(host, "*mediafire.com")) {
		return direct;
	}

	// Misc
	if (shExpMatch(host, "*upload.youtube.com") || shExpMatch(url, "*webtretho.com*") || shExpMatch(host, "*thegioididong.com") || shExpMatch(host, "*tgdd.vn") || shExpMatch(host, "*postimg.org") || shExpMatch(host, "*sourceforge.net") || shExpMatch(host, "*cellphones.com.vn") || shExpMatch(host, "*dmx.vn") || shExpMatch(host, "*adf.ly")) {
		return direct;
	}

	// Lazada
	if (shExpMatch(host, "*.lazada.vn") || shExpMatch(host, "*.slatic.net") || shExpMatch(host, "*.ants.vn")) {
		return direct;
	}

	if (shExpMatch(host, "*.skype.com") || shExpMatch(host, "*.skypeassets.com") || shExpMatch(host, "*.live.com") || shExpMatch(host, "*.trouter.io") || shExpMatch(host, "*.msecnd.net") || shExpMatch(host, "*.microsoft.com")) {
		return direct;
	}

	if (shExpMatch(host, "*.threatstop.com") || shExpMatch(host, "*.tma.com.vn") || shExpMatch(host, "localhost*") || isInNet(host, "192.168.0.0", "255.255.0.0") || shExpMatch(host, "*.xip.io")) {
		return direct;
	}

	return tmaProxy;
}
