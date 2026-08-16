package F2;

import java.net.InetAddress;
import java.text.ParseException;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@a
public final class c {

    public final String f6143a;

    public c(String str) {
        this.f6143a = str;
    }

    @I2.a
    public static c a(String str) throws ParseException {
        try {
            return b(str);
        } catch (IllegalArgumentException e10) {
            String valueOf = String.valueOf(str);
            ParseException parseException = new ParseException(valueOf.length() != 0 ? "Invalid host specifier: ".concat(valueOf) : new String("Invalid host specifier: "), 0);
            parseException.initCause(e10);
            throw parseException;
        }
    }

    public static c b(String str) {
        InetAddress inetAddress;
        b c10 = b.c(str);
        H.d(!c10.h());
        String d10 = c10.d();
        try {
            inetAddress = e.g(d10);
        } catch (IllegalArgumentException unused) {
            inetAddress = null;
        }
        if (inetAddress != null) {
            return new c(e.O(inetAddress));
        }
        f d11 = f.d(d10);
        if (d11.f()) {
            return new c(d11.toString());
        }
        String valueOf = String.valueOf(d10);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Domain name does not have a recognized public suffix: ".concat(valueOf) : new String("Domain name does not have a recognized public suffix: "));
    }

    public static boolean c(String str) {
        try {
            b(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f6143a.equals(((c) obj).f6143a);
        }
        return false;
    }

    public int hashCode() {
        return this.f6143a.hashCode();
    }

    public String toString() {
        return this.f6143a;
    }
}
