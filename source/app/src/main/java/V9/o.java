package V9;

import id.C13696a;
import java.io.File;
import java.io.InputStream;

public class o {
    public static File a(InputStream inputStream) {
        File file = new File(W7.b.f27306f.f2458a.f() + "/fonts/tempFont" + Tc.b.L() + ".ttf");
        if (C13696a.d(inputStream, file)) {
            return file;
        }
        return null;
    }
}
