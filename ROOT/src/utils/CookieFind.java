package utils;

import javax.servlet.http.Cookie;

public class CookieFind {
	public static boolean Find(Cookie[] Cookie, String s) {
		if (Cookie != null) {
			for (Cookie c : Cookie) {
				String name = c.getName();
				if (name.equals(s))
					return true;
			}
			return false;
		} else {
			return false;
		}
	}

	public static String FindS(Cookie[] Cookie, String s) {
		String re = "";
		if (Cookie != null) {
			for (Cookie c : Cookie) {
				if (c.getName().equals(s))
					re = c.getValue();
			}
		}
		return re;
	}

}
