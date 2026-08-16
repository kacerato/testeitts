package org.bouncycastle.jcajce.provider.asymmetric.x509;

import em.C13168c;
import java.io.IOException;
import java.io.InputStream;
import oh.E;

public class b {

    public final C1920b[] f101359a;

    public static class C1920b {

        public final String f101360a;

        public final String f101361b;

        public C1920b(String str) {
            this.f101360a = gm.e.f90124b + str + "-----";
            this.f101361b = gm.e.f90125c + str + "-----";
        }

        public boolean a(String str) {
            return str.startsWith(this.f101361b);
        }

        public boolean b(String str) {
            return str.startsWith(this.f101360a);
        }
    }

    public b(String str) {
        this.f101359a = new C1920b[]{new C1920b(str), new C1920b("X509 " + str), new C1920b(org.bouncycastle.openssl.i.f101877k)};
    }

    public final C1920b a(String str) {
        C1920b c1920b;
        int i10 = 0;
        while (true) {
            C1920b[] c1920bArr = this.f101359a;
            if (i10 == c1920bArr.length) {
                return null;
            }
            c1920b = c1920bArr[i10];
            if (c1920b.b(str) || c1920b.a(str)) {
                break;
            }
            i10++;
        }
        return c1920b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r0.length() == 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String b(InputStream inputStream) throws IOException {
        int read;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            read = inputStream.read();
            if (read == 13 || read == 10 || read < 0) {
                break;
            }
            stringBuffer.append((char) read);
        }
        if (read < 0) {
            if (stringBuffer.length() == 0) {
                return null;
            }
            return stringBuffer.toString();
        }
        if (read == 13) {
            inputStream.mark(1);
            int read2 = inputStream.read();
            if (read2 == 10) {
                inputStream.mark(1);
            }
            if (read2 > 0) {
                inputStream.reset();
            }
        }
        return stringBuffer.toString();
    }

    public E c(InputStream inputStream, boolean z10) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        C1920b c1920b = null;
        while (c1920b == null) {
            String b10 = b(inputStream);
            if (b10 == null) {
                break;
            }
            c1920b = a(b10);
            if (c1920b != null && !c1920b.b(b10)) {
                throw new IOException("malformed PEM data: found footer where header was expected");
            }
        }
        if (c1920b == null) {
            if (z10) {
                throw new IOException("malformed PEM data: no header found");
            }
            return null;
        }
        C1920b c1920b2 = null;
        while (c1920b2 == null) {
            String b11 = b(inputStream);
            if (b11 == null) {
                break;
            }
            c1920b2 = a(b11);
            if (c1920b2 == null) {
                stringBuffer.append(b11);
            } else if (!c1920b.a(b11)) {
                throw new IOException("malformed PEM data: header/footer mismatch");
            }
        }
        if (c1920b2 == null) {
            throw new IOException("malformed PEM data: no footer found");
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        try {
            return E.G(C13168c.c(stringBuffer.toString()));
        } catch (Exception unused) {
            throw new IOException("malformed PEM data encountered");
        }
    }
}
