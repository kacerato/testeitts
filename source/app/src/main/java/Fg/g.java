package Fg;

import Bg.j;
import Bg.r;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import net.lingala.zip4j.exception.ZipException;
import zg.k;
import zg.m;

public class g {
    public static void a(j jVar, File file) {
        try {
            Path path = file.toPath();
            c.D(path, jVar.P());
            c.E(path, jVar.m());
        } catch (NoSuchMethodError unused) {
            c.F(file, jVar.m());
        }
    }

    public static zg.h b(r rVar) throws IOException {
        return rVar.k().getName().endsWith(d.f6824y) ? new zg.f(rVar.k()) : new m(rVar.k(), rVar.m(), rVar.e().d());
    }

    public static k c(r rVar, j jVar, char[] cArr) throws IOException {
        zg.h hVar;
        try {
            hVar = b(rVar);
        } catch (IOException e10) {
            e = e10;
            hVar = null;
        }
        try {
            hVar.a(jVar);
            k kVar = new k(hVar, cArr);
            if (kVar.k(jVar, false) != null) {
                return kVar;
            }
            throw new ZipException("Could not locate local file header for corresponding file header");
        } catch (IOException e11) {
            e = e11;
            if (hVar != null) {
                hVar.close();
            }
            throw e;
        }
    }
}
