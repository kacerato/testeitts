package on;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.ZipFile;

public abstract class b {
    public ByteBuffer a(ZipFile file, String filename) throws IOException {
        ByteBuffer b10 = pn.b.b(file.getInputStream(file.getEntry(filename)));
        b10.order(ByteOrder.LITTLE_ENDIAN);
        return b10;
    }
}
