package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class C6170Ww0 {

    public static final C6170Ww0 f45582c;

    public static final boolean f45583d = true;

    public final String f45584a;

    public final String f45585b;

    static {
        C6170Ww0 c6170Ww0;
        try {
            InputStream resourceAsStream = C6170Ww0.class.getClassLoader().getResourceAsStream("r8-version.properties");
            try {
                c6170Ww0 = resourceAsStream == null ? new C6170Ww0() : new C6170Ww0(resourceAsStream);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
            } finally {
            }
        } catch (IOException unused) {
            c6170Ww0 = new C6170Ww0();
        }
        f45582c = c6170Ww0;
    }

    public C6170Ww0() {
    }

    public final String a() {
        String str;
        String b10 = b();
        String str2 = this.f45585b;
        if (str2 != null) {
            str = " from " + str2;
        } else {
            str = "";
        }
        return "build " + b10 + str;
    }

    public String b() {
        return c() ? "engineering" : this.f45584a;
    }

    public final boolean c() {
        String str = this.f45584a;
        return str == null || str.trim().isEmpty();
    }

    public final String toString() {
        return this.f45584a + " from " + this.f45585b;
    }

    public C6170Ww0(InputStream inputStream) {
        Properties properties = new Properties();
        properties.load(inputStream);
        long parseLong = Long.parseLong(properties.getProperty("version-file.version.code"));
        if (!f45583d && parseLong < 1) {
            throw new AssertionError();
        }
        this.f45584a = properties.getProperty("version.sha");
        this.f45585b = properties.getProperty("releaser");
    }
}
