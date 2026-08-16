package fd;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import okhttp3.D;
import okhttp3.x;

public class e extends D {

    public final File f86224a;

    public final String f86225b;

    public final a f86226c;

    public interface a {
        void a(long count, long max, double percent);
    }

    public e(File file, String contentType, a listener) {
        this.f86224a = file;
        this.f86225b = contentType;
        this.f86226c = listener;
    }

    @Override
    public long a() {
        return this.f86224a.length();
    }

    @Override
    public x b() {
        return x.d(this.f86225b);
    }

    @Override
    public void h(Tg.d sink) throws IOException {
        long length = this.f86224a.length();
        byte[] bArr = new byte[8192];
        FileInputStream fileInputStream = new FileInputStream(this.f86224a);
        long j10 = 0;
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    return;
                }
                sink.write(bArr, 0, read);
                long j11 = j10 + read;
                this.f86226c.a(j11, length, (j11 * 100.0d) / length);
                j10 = j11;
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
