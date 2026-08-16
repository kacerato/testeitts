package org.bouncycastle.i18n;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.text.Format;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.TimeZone;
import kj.C13992d;
import kj.C13993e;
import kj.C13994f;
import kj.InterfaceC13989a;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class c {

    public static final String f101116h = "ISO-8859-1";

    public final String f101117a;

    public final String f101118b;

    public String f101119c;

    public a f101120d;

    public a f101121e;

    public InterfaceC13989a f101122f;

    public ClassLoader f101123g;

    public static class a {

        public static final int f101124g = 0;

        public static final int f101125h = 1;

        public static final int f101126i = 2;

        public InterfaceC13989a f101127a;

        public boolean[] f101128b;

        public int[] f101129c;

        public Object[] f101130d;

        public Object[] f101131e;

        public Object[] f101132f;

        public a() {
            this(new Object[0]);
        }

        public final Object a(int i10, Object obj) {
            InterfaceC13989a interfaceC13989a = this.f101127a;
            if (interfaceC13989a != null) {
                if (obj == null) {
                    obj = "null";
                }
                if (i10 != 0) {
                    if (i10 == 1) {
                        return interfaceC13989a.a(obj.toString());
                    }
                    if (i10 != 2) {
                        return null;
                    }
                    return interfaceC13989a.b(obj.toString());
                }
            }
            return obj;
        }

        public Object[] b() {
            return this.f101130d;
        }

        public InterfaceC13989a c() {
            return this.f101127a;
        }

        public Object[] d(Locale locale) {
            Object[] objArr = new Object[this.f101131e.length];
            int i10 = 0;
            while (true) {
                Object[] objArr2 = this.f101131e;
                if (i10 >= objArr2.length) {
                    return objArr;
                }
                Object obj = this.f101132f[i10];
                if (obj == null) {
                    Object obj2 = objArr2[i10];
                    if (this.f101128b[i10]) {
                        obj = a(this.f101129c[i10], ((b) obj2).n(locale));
                    } else {
                        obj = a(this.f101129c[i10], obj2);
                        this.f101132f[i10] = obj;
                    }
                }
                objArr[i10] = obj;
                i10++;
            }
        }

        public boolean e() {
            return this.f101131e.length == 0;
        }

        public void f(InterfaceC13989a interfaceC13989a) {
            if (interfaceC13989a != this.f101127a) {
                for (int i10 = 0; i10 < this.f101131e.length; i10++) {
                    this.f101132f[i10] = null;
                }
            }
            this.f101127a = interfaceC13989a;
        }

        public a(Object[] objArr) {
            this.f101127a = null;
            this.f101130d = objArr;
            this.f101131e = new Object[objArr.length];
            this.f101132f = new Object[objArr.length];
            this.f101128b = new boolean[objArr.length];
            this.f101129c = new int[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof C13992d) {
                    this.f101131e[i10] = ((C13992d) obj).a();
                    this.f101129c[i10] = 0;
                } else if (obj instanceof C13993e) {
                    this.f101131e[i10] = ((C13993e) obj).a();
                    if (objArr[i10] instanceof C13994f) {
                        this.f101129c[i10] = 2;
                    } else {
                        this.f101129c[i10] = 1;
                    }
                } else {
                    this.f101131e[i10] = obj;
                    this.f101129c[i10] = 1;
                }
                this.f101128b[i10] = this.f101131e[i10] instanceof b;
            }
        }
    }

    public c(String str, String str2) throws NullPointerException {
        this.f101119c = "ISO-8859-1";
        this.f101121e = null;
        this.f101122f = null;
        this.f101123g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        this.f101117a = str2;
        this.f101118b = str;
        this.f101120d = new a();
    }

    public String a(String str, Locale locale) {
        if (this.f101121e == null) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        Object[] d10 = this.f101121e.d(locale);
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
        return this.f101120d.b();
    }

    public ClassLoader d() {
        return this.f101123g;
    }

    public String e(String str, Locale locale, TimeZone timeZone) throws MissingEntryException {
        String str2 = this.f101117a;
        if (str != null) {
            str2 = str2 + "." + str;
        }
        String str3 = str2;
        try {
            ClassLoader classLoader = this.f101123g;
            String string = (classLoader == null ? ResourceBundle.getBundle(this.f101118b, locale) : ResourceBundle.getBundle(this.f101118b, locale, classLoader)).getString(str3);
            if (!this.f101119c.equals("ISO-8859-1")) {
                string = new String(string.getBytes("ISO-8859-1"), this.f101119c);
            }
            if (!this.f101120d.e()) {
                string = b(string, this.f101120d.d(locale), locale, timeZone);
            }
            return a(string, locale);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        } catch (MissingResourceException unused) {
            String str4 = "Can't find entry " + str3 + " in resource file " + this.f101118b + ".";
            String str5 = this.f101118b;
            ClassLoader classLoader2 = this.f101123g;
            if (classLoader2 == null) {
                classLoader2 = d();
            }
            throw new MissingEntryException(str4, str5, str3, locale, classLoader2);
        }
    }

    public Object[] f() {
        a aVar = this.f101121e;
        if (aVar == null) {
            return null;
        }
        return aVar.b();
    }

    public InterfaceC13989a g() {
        return this.f101122f;
    }

    public String h() {
        return this.f101117a;
    }

    public String i() {
        return this.f101118b;
    }

    public void j(ClassLoader classLoader) {
        this.f101123g = classLoader;
    }

    public void k(Object obj) {
        l(new Object[]{obj});
    }

    public void l(Object[] objArr) {
        if (objArr == null) {
            this.f101121e = null;
            return;
        }
        a aVar = new a(objArr);
        this.f101121e = aVar;
        aVar.f(this.f101122f);
    }

    public void m(InterfaceC13989a interfaceC13989a) {
        this.f101120d.f(interfaceC13989a);
        a aVar = this.f101121e;
        if (aVar != null) {
            aVar.f(interfaceC13989a);
        }
        this.f101122f = interfaceC13989a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Resource: \"");
        stringBuffer.append(this.f101118b);
        stringBuffer.append("\" Id: \"");
        stringBuffer.append(this.f101117a);
        stringBuffer.append(JavadocConstants.ANCHOR_PREFIX_END);
        stringBuffer.append(" Arguments: ");
        stringBuffer.append(this.f101120d.b().length);
        stringBuffer.append(" normal");
        a aVar = this.f101121e;
        if (aVar != null && aVar.b().length > 0) {
            stringBuffer.append(", ");
            stringBuffer.append(this.f101121e.b().length);
            stringBuffer.append(" extra");
        }
        stringBuffer.append(" Encoding: ");
        stringBuffer.append(this.f101119c);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append((Object) this.f101123g);
        return stringBuffer.toString();
    }

    public c(String str, String str2, String str3) throws NullPointerException, UnsupportedEncodingException {
        this.f101119c = "ISO-8859-1";
        this.f101121e = null;
        this.f101122f = null;
        this.f101123g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        this.f101117a = str2;
        this.f101118b = str;
        this.f101120d = new a();
        if (Charset.isSupported(str3)) {
            this.f101119c = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public c(String str, String str2, String str3, Object[] objArr) throws NullPointerException, UnsupportedEncodingException {
        this.f101119c = "ISO-8859-1";
        this.f101121e = null;
        this.f101122f = null;
        this.f101123g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        if (objArr == null) {
            throw null;
        }
        this.f101117a = str2;
        this.f101118b = str;
        this.f101120d = new a(objArr);
        if (Charset.isSupported(str3)) {
            this.f101119c = str3;
            return;
        }
        throw new UnsupportedEncodingException("The encoding \"" + str3 + "\" is not supported.");
    }

    public c(String str, String str2, Object[] objArr) throws NullPointerException {
        this.f101119c = "ISO-8859-1";
        this.f101121e = null;
        this.f101122f = null;
        this.f101123g = null;
        if (str == null) {
            throw null;
        }
        if (str2 == null) {
            throw null;
        }
        if (objArr == null) {
            throw null;
        }
        this.f101117a = str2;
        this.f101118b = str;
        this.f101120d = new a(objArr);
    }
}
