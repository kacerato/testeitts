package org.bouncycastle.pkix.util;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class c {

    public static final String f102088h = "ISO-8859-1";

    public final String f102089a;

    public final String f102090b;

    public String f102091c;

    public a f102092d;

    public a f102093e;

    public Wk.a f102094f;

    public ClassLoader f102095g;

    public static class a {

        public static final int f102096g = 0;

        public static final int f102097h = 1;

        public static final int f102098i = 2;

        public Wk.a f102099a;

        public boolean[] f102100b;

        public int[] f102101c;

        public Object[] f102102d;

        public Object[] f102103e;

        public Object[] f102104f;

        public a() {
            this(new Object[0]);
        }

        public final Object a(int i10, Object obj) {
            Wk.a aVar = this.f102099a;
            if (aVar != null) {
                if (obj == null) {
                    obj = "null";
                }
                if (i10 != 0) {
                    if (i10 == 1) {
                        return aVar.a(obj.toString());
                    }
                    if (i10 != 2) {
                        return null;
                    }
                    return aVar.b(obj.toString());
                }
            }
            return obj;
        }

        public Object[] b() {
            return this.f102102d;
        }

        public Wk.a c() {
            return this.f102099a;
        }

        public Object[] d(Locale locale) {
            Object[] objArr = new Object[this.f102103e.length];
            int i10 = 0;
            while (true) {
                Object[] objArr2 = this.f102103e;
                if (i10 >= objArr2.length) {
                    return objArr;
                }
                Object obj = this.f102104f[i10];
                if (obj == null) {
                    Object obj2 = objArr2[i10];
                    if (this.f102100b[i10]) {
                        obj = a(this.f102101c[i10], ((b) obj2).n(locale));
                    } else {
                        obj = a(this.f102101c[i10], obj2);
                        this.f102104f[i10] = obj;
                    }
                }
                objArr[i10] = obj;
                i10++;
            }
        }

        public boolean e() {
            return this.f102103e.length == 0;
        }

        public void f(Wk.a aVar) {
            if (aVar != this.f102099a) {
                for (int i10 = 0; i10 < this.f102103e.length; i10++) {
                    this.f102104f[i10] = null;
                }
            }
            this.f102099a = aVar;
        }

        public a(Object[] objArr) {
            this.f102099a = null;
            this.f102102d = objArr;
            this.f102103e = new Object[objArr.length];
            this.f102104f = new Object[objArr.length];
            this.f102100b = new boolean[objArr.length];
            this.f102101c = new int[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof Wk.d) {
                    this.f102103e[i10] = ((Wk.d) obj).a();
                    this.f102101c[i10] = 0;
                } else if (obj instanceof Wk.e) {
                    this.f102103e[i10] = ((Wk.e) obj).a();
                    if (objArr[i10] instanceof Wk.f) {
                        this.f102101c[i10] = 2;
                    } else {
                        this.f102101c[i10] = 1;
                    }
                } else {
                    this.f102103e[i10] = obj;
                    this.f102101c[i10] = 1;
                }
                this.f102100b[i10] = this.f102103e[i10] instanceof b;
            }
        }
    }

    public c(String str, String str2) throws NullPointerException {
        this.f102091c = "ISO-8859-1";
        this.f102093e = null;
        this.f102094f = null;
        this.f102095g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        this.f102089a = str2;
        this.f102090b = str;
        this.f102092d = new a();
    }

    public String a(String str, Locale locale) {
        if (this.f102093e == null) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        Object[] d10 = this.f102093e.d(locale);
        for (Object obj : d10) {
            stringBuffer.append(obj);
        }
        return stringBuffer.toString();
    }

    public String b(String str, Object[] objArr, Locale locale, TimeZone timeZone) {
        MessageFormat messageFormat = new MessageFormat(" ");
        messageFormat.setLocale(locale);
        messageFormat.applyPattern(str);
        if (!timeZone.equals(TimeZone.getDefault())) {
            Format[] formats = messageFormat.getFormats();
            for (int i10 = 0; i10 < formats.length; i10++) {
                Format format = formats[i10];
                if (format instanceof DateFormat) {
                    DateFormat dateFormat = (DateFormat) format;
                    dateFormat.setTimeZone(timeZone);
                    messageFormat.setFormat(i10, dateFormat);
                }
            }
        }
        return messageFormat.format(objArr);
    }

    public Object[] c() {
        return this.f102092d.b();
    }

    public ClassLoader d() {
        return this.f102095g;
    }

    public String e(String str, Locale locale, TimeZone timeZone) throws MissingEntryException {
        String str2 = this.f102089a;
        if (str != null) {
            str2 = str2 + "." + str;
        }
        String str3 = str2;
        try {
            ClassLoader classLoader = this.f102095g;
            String string = (classLoader == null ? ResourceBundle.getBundle(this.f102090b, locale) : ResourceBundle.getBundle(this.f102090b, locale, classLoader)).getString(str3);
            if (!this.f102091c.equals("ISO-8859-1")) {
                string = new String(string.getBytes("ISO-8859-1"), this.f102091c);
            }
            if (!this.f102092d.e()) {
                string = b(string, this.f102092d.d(locale), locale, timeZone);
            }
            return a(string, locale);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        } catch (MissingResourceException unused) {
            String str4 = "Can't find entry " + str3 + " in resource file " + this.f102090b + ".";
            String str5 = this.f102090b;
            ClassLoader classLoader2 = this.f102095g;
            if (classLoader2 == null) {
                classLoader2 = d();
            }
            throw new MissingEntryException(str4, str5, str3, locale, classLoader2);
        }
    }

    public Object[] f() {
        a aVar = this.f102093e;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public Wk.a g() {
        return this.f102094f;
    }

    public String h() {
        return this.f102089a;
    }

    public String i() {
        return this.f102090b;
    }

    public void j(ClassLoader classLoader) {
        this.f102095g = classLoader;
    }

    public void k(Object obj) {
        l(new Object[]{obj});
    }

    public void l(Object[] objArr) {
        if (objArr == null) {
            this.f102093e = null;
            return;
        }
        a aVar = new a(objArr);
        this.f102093e = aVar;
        aVar.f(this.f102094f);
    }

    public void m(Wk.a aVar) {
        this.f102092d.f(aVar);
        a aVar2 = this.f102093e;
        if (aVar2 != null) {
            aVar2.f(aVar);
        }
        this.f102094f = aVar;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Resource: \"");
        stringBuffer.append(this.f102090b);
        stringBuffer.append("\" Id: \"");
        stringBuffer.append(this.f102089a);
        stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        stringBuffer.append(" Arguments: ");
        stringBuffer.append(this.f102092d.b().length);
        stringBuffer.append(" normal");
        a aVar = this.f102093e;
        if (aVar != null && aVar.b().length > 0) {
            stringBuffer.append(", ");
            stringBuffer.append(this.f102093e.b().length);
            stringBuffer.append(" extra");
        }
        stringBuffer.append(" Encoding: ");
        stringBuffer.append(this.f102091c);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append((Object) this.f102095g);
        return stringBuffer.toString();
    }

    public c(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        this.f102091c = "ISO-8859-1";
        this.f102093e = null;
        this.f102094f = null;
        this.f102095g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        this.f102089a = str2;
        this.f102090b = str;
        this.f102092d = new a();
        if (Charset.isSupported(str3)) {
            this.f102091c = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public c(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        this.f102091c = "ISO-8859-1";
        this.f102093e = null;
        this.f102094f = null;
        this.f102095g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        if (objArr == null) {
            throw null;
        }
        this.f102089a = str2;
        this.f102090b = str;
        this.f102092d = new a(objArr);
        if (Charset.isSupported(str3)) {
            this.f102091c = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public c(String str, String str2, Object[] objArr) throws NullPointerException {
        this.f102091c = "ISO-8859-1";
        this.f102093e = null;
        this.f102094f = null;
        this.f102095g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        if (objArr == null) {
            throw null;
        }
        this.f102089a = str2;
        this.f102090b = str;
        this.f102092d = new a(objArr);
    }
}
