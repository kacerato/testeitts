package Hc;

import Ic.C2633l;
import android.content.Context;
import id.C13696a;
import java.io.File;

public class a {
    public static File a(String path) {
        Context t10 = N7.c.t();
        String o10 = Tc.b.o(W7.b.f27306f.f2458a.g(t10) + "/sounds/" + Tc.b.v(path));
        File file = new File(Tc.b.u(o10));
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(o10);
        String replace = path.replace("@@ASSET@@", "");
        if (!replace.startsWith("/")) {
            replace = "/" + replace;
        }
        if (file2.exists() || C13696a.c(t10, replace, file2)) {
            return file2;
        }
        return null;
    }

    public static File b(String path) {
        if (path == null || path.isEmpty()) {
            return null;
        }
        if (!C2633l.b(path, ".sound")) {
            path = Tc.b.O(path) + ".sound";
        }
        return a(path);
    }
}
