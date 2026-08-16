package org.bouncycastle.i18n;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

public class d extends e {

    public static final String f101133j = "title";

    public d(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public String p(Locale locale) throws MissingEntryException {
        return e("title", locale, TimeZone.getDefault());
    }

    public String q(Locale locale, TimeZone timeZone) throws MissingEntryException {
        return e("title", locale, timeZone);
    }

    public d(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3);
    }

    public d(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3, objArr);
    }

    public d(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }
}
