package on;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipFile;

public class q {

    public static final String f99744g = "meta.json";

    public static final String f99745h = "graph_references.binary";

    public static final String f99746i = "node_link2.binary";

    public static final String f99747j = "graph%d.json";

    public static final String f99748k = "graph%d_extra.binary";

    public static final String f99749l = "graph%d_references.binary";

    public static final int f99750m = 3;

    public final k f99751a = new k();

    public final l f99752b = new l();

    public final h f99753c = new h();

    public final f f99754d = new f();

    public final c f99755e = new c();

    public final n f99756f = new n();

    public d a(File zipFile) throws Exception {
        ZipFile zipFile2 = new ZipFile(zipFile);
        j a10 = this.f99751a.a(zipFile2, f99744g);
        int[] b10 = this.f99752b.b(zipFile2, f99745h);
        m[] b11 = this.f99756f.b(zipFile2, f99746i, b10);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i10 = 0; i10 < a10.f99733b; i10++) {
            g a11 = this.f99753c.a(zipFile2, String.format(f99747j, Integer.valueOf(i10)));
            e c10 = this.f99754d.c(zipFile2, String.format(f99748k, Integer.valueOf(i10)), a11, 3);
            List<int[]> b12 = this.f99755e.b(zipFile2, String.format(f99749l, Integer.valueOf(i10)), a10, b10);
            arrayList.add(a11);
            arrayList2.add(c10);
            arrayList3.add(b12);
        }
        zipFile2.close();
        return new d(a10, b10, b11, arrayList, arrayList2, arrayList3);
    }
}
