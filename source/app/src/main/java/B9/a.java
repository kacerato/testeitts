package B9;

import android.content.Context;
import id.C13696a;
import java.io.File;

public class a {
    public static File a(String file) {
        Context t10 = N7.c.t();
        String o10 = Tc.b.o(W7.b.f27306f.f2458a.g(t10) + "/" + file.replace("@@ASSET@@", ""));
        File file2 = new File(Tc.b.u(o10));
        if (!file2.exists()) {
            file2.mkdirs();
        }
        File file3 = new File(o10);
        String replace = file.replace("@@ASSET@@", "");
        if (!replace.startsWith("/")) {
            replace = "/" + replace;
        }
        if (file3.exists() || C13696a.c(t10, replace, file3)) {
            return file3;
        }
        return null;
    }
}
