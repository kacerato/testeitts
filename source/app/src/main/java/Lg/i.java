package Lg;

import java.net.Proxy;
import okhttp3.C;
import okhttp3.v;
import w2.C15883c;

public final class i {
    public static String a(C c10, Proxy.Type type) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c10.g());
        sb2.append(C15883c.f126249O);
        if (b(c10, type)) {
            sb2.append((Object) c10.k());
        } else {
            sb2.append(c(c10.k()));
        }
        sb2.append(" HTTP/1.1");
        return sb2.toString();
    }

    public static boolean b(C c10, Proxy.Type type) {
        return !c10.f() && type == Proxy.Type.HTTP;
    }

    public static String c(v vVar) {
        String h10 = vVar.h();
        String j10 = vVar.j();
        if (j10 == null) {
            return h10;
        }
        return h10 + '?' + j10;
    }
}
