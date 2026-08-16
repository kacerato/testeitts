package org.bouncycastle.i18n;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

public class a extends d {

    public static final String f101114k = "summary";

    public static final String f101115l = "details";

    public a(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public String r(Locale locale) throws MissingEntryException {
        return e("details", locale, TimeZone.getDefault());
    }

    public String s(Locale locale, TimeZone timeZone) throws MissingEntryException {
        return e("details", locale, timeZone);
    }

    public String t(Locale locale) throws MissingEntryException {
        return e("summary", locale, TimeZone.getDefault());
    }

    public String u(Locale locale, TimeZone timeZone) throws MissingEntryException {
        return e("summary", locale, timeZone);
    }

    public a(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3);
    }

    public a(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3, objArr);
    }

    public a(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }
}
