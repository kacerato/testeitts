package org.bouncycastle.jce.provider;

import em.C13168c;
import java.io.IOException;
import java.io.InputStream;

public class C14744z {

    public final String f101854a;

    public final String f101855b;

    public final String f101856c;

    public final String f101857d;

    public C14744z(String str) {
        this.f101854a = gm.e.f90124b + str + "-----";
        this.f101855b = "-----BEGIN X509 " + str + "-----";
        this.f101856c = gm.e.f90125c + str + "-----";
        this.f101857d = "-----END X509 " + str + "-----";
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r0.length() == 0) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(InputStream inputStream) throws IOException {
        int read;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            read = inputStream.read();
            if (read == 13 || read == 10 || read < 0) {
                break;
            }
            if (read != 13) {
                stringBuffer.append((char) read);
            }
        }
        if (read < 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    public oh.E b(InputStream inputStream) throws IOException {
        String a10;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            a10 = a(inputStream);
            if (a10 == null || a10.startsWith(this.f101854a)) {
                break;
            }
        } while (!a10.startsWith(this.f101855b));
        while (true) {
            String a11 = a(inputStream);
            if (a11 == null || a11.startsWith(this.f101856c) || a11.startsWith(this.f101857d)) {
                break;
            }
            stringBuffer.append(a11);
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        oh.B k10 = new oh.r(C13168c.c(stringBuffer.toString())).k();
        if (k10 instanceof oh.E) {
            return (oh.E) k10;
        }
        throw new IOException("malformed PEM data encountered");
    }
}
