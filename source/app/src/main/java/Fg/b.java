package Fg;

import Dg.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.CRC32;
import net.lingala.zip4j.exception.ZipException;

public class b {

    public static final int f6796a = 16384;

    public static long a(File file, Dg.a aVar) throws IOException {
        if (file == null || !file.exists() || !file.canRead()) {
            throw new ZipException("input file is null or does not exist or cannot read. Cannot calculate CRC for the file");
        }
        byte[] bArr = new byte[16384];
        CRC32 crc32 = new CRC32();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    long value = crc32.getValue();
                    fileInputStream.close();
                    return value;
                }
                crc32.update(bArr, 0, read);
                if (aVar != null) {
                    aVar.x(read);
                    if (aVar.l()) {
                        aVar.u(a.EnumC0097a.CANCELLED);
                        aVar.v(a.b.READY);
                        fileInputStream.close();
                        return 0L;
                    }
                }
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
