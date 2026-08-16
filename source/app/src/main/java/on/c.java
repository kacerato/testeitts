package on;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipFile;

public class c extends b {
    public List<int[]> b(ZipFile file, String filename, j meta, int[] indexToNode) throws IOException {
        ArrayList arrayList = new ArrayList();
        ByteBuffer a10 = a(file, filename);
        while (a10.remaining() > 0) {
            int i10 = a10.getInt();
            int[] iArr = new int[i10];
            arrayList.add(iArr);
            for (int i11 = 0; i11 < i10; i11++) {
                iArr[i11] = indexToNode[a10.getInt()];
                a10.getInt();
                if (meta.c(j.f99730f)) {
                    a10.get();
                }
            }
        }
        return arrayList;
    }
}
