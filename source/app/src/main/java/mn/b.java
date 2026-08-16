package mn;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import jn.C13901s;
import jn.C13904v;
import jn.G;
import jn.r;

public class b {
    public void a(C13904v mesh) throws IOException {
        r rVar;
        FileWriter fileWriter = new FileWriter(new File("/home/piotr/workspaces/recast/recastnavigation/RecastDemo/Bin/astar.obj"));
        for (int i10 = 0; i10 < mesh.N(); i10++) {
            C13901s I10 = mesh.I(i10);
            if (I10 != null) {
                for (int i11 = 0; i11 < I10.f94321c.f94282a.f94305h; i11++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("v ");
                    int i12 = i11 * 3;
                    sb2.append(I10.f94321c.f94283b[i12]);
                    sb2.append(" ");
                    sb2.append(I10.f94321c.f94283b[i12 + 1]);
                    sb2.append(" ");
                    sb2.append(I10.f94321c.f94283b[i12 + 2]);
                    sb2.append("\n");
                    fileWriter.write(sb2.toString());
                }
            }
        }
        int i13 = 1;
        for (int i14 = 0; i14 < mesh.N(); i14++) {
            C13901s I11 = mesh.I(i14);
            if (I11 != null) {
                int i15 = 0;
                while (true) {
                    rVar = I11.f94321c.f94282a;
                    if (i15 >= rVar.f94304g) {
                        break;
                    }
                    fileWriter.write("f ");
                    G g10 = I11.f94321c.f94284c[i15];
                    for (int i16 = 0; i16 < g10.f94180e; i16++) {
                        fileWriter.write((g10.f94177b[i16] + i13) + " ");
                    }
                    fileWriter.write("\n");
                    i15++;
                }
                i13 += rVar.f94305h;
            }
        }
        fileWriter.close();
    }
}
