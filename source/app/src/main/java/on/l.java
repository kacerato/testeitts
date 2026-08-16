package on;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipFile;

public class l extends b {
    public int[] b(ZipFile file, String filename) throws IOException {
        ByteBuffer a10 = a(file, filename);
        int[] iArr = new int[a10.getInt() + 1];
        int i10 = 0;
        while (a10.remaining() > 0) {
            iArr[a10.getInt()] = i10;
            i10++;
        }
        return iArr;
    }
}
