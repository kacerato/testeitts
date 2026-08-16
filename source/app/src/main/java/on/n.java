package on;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipFile;

public class n extends b {
    public m[] b(ZipFile file, String filename, int[] indexToNode) throws IOException {
        ByteBuffer a10 = a(file, filename);
        int i10 = a10.getInt();
        m[] mVarArr = new m[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = a10.getLong();
            int i12 = indexToNode[a10.getInt()];
            int i13 = indexToNode[a10.getInt()];
            a10.getInt();
            a10.getInt();
            mn.d dVar = new mn.d();
            dVar.f97542a = a10.getFloat();
            dVar.f97543b = a10.getFloat();
            dVar.f97544c = a10.getFloat();
            mn.d dVar2 = new mn.d();
            dVar2.f97542a = a10.getFloat();
            dVar2.f97543b = a10.getFloat();
            dVar2.f97544c = a10.getFloat();
            a10.get();
            mVarArr[i11] = new m(j10, i12, i13, dVar, dVar2);
        }
        return mVarArr;
    }
}
