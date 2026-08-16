package org.bouncycastle.i18n;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

public class e extends c {

    public static final String f101134i = "text";

    public e(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public String n(Locale locale) throws MissingEntryException {
        return e("text", locale, TimeZone.getDefault());
    }

    public String o(Locale locale, TimeZone timeZone) throws MissingEntryException {
        return e("text", locale, timeZone);
    }

    public e(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3);
    }

    public e(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        super(str, str2, str3, objArr);
    }

    public e(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }
}
