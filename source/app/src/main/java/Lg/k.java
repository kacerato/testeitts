package Lg;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.A;
import okhttp3.E;
import w2.C15883c;

public final class k {

    public static final int f13448d = 307;

    public static final int f13449e = 308;

    public static final int f13450f = 100;

    public final A f13451a;

    public final int f13452b;

    public final String f13453c;

    public k(A a10, int i10, String str) {
        this.f13451a = a10;
        this.f13452b = i10;
        this.f13453c = str;
    }

    public static k a(E e10) {
        return new k(e10.u(), e10.g(), e10.p());
    }

    public static k b(String str) throws IOException {
        A a10;
        int i10;
        String str2;
        if (str.startsWith("HTTP/1.")) {
            i10 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                a10 = A.HTTP_1_0;
            } else {
                if (charAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                a10 = A.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            a10 = A.HTTP_1_0;
            i10 = 4;
        }
        int i11 = i10 + 3;
        if (str.length() < i11) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i10, i11));
            if (str.length() <= i11) {
                str2 = "";
            } else {
                if (str.charAt(i11) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                str2 = str.substring(i10 + 4);
            }
            return new k(a10, parseInt, str2);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f13451a == A.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb2.append(C15883c.f126249O);
        sb2.append(this.f13452b);
        if (this.f13453c != null) {
            sb2.append(C15883c.f126249O);
            sb2.append(this.f13453c);
        }
        return sb2.toString();
    }
}
