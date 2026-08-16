package ed;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import okhttp3.D;
import okhttp3.x;

public class s extends D {

    public final Context f85534a;

    public final Uri f85535b;

    public final String f85536c;

    public final long f85537d;

    public final a f85538e;

    public interface a {
        void a(long count, long max, double percent);
    }

    public s(Context context, Uri uri, String contentType, long contentLength, a listener) {
        this.f85534a = context;
        this.f85535b = uri;
        this.f85536c = contentType;
        this.f85537d = contentLength;
        this.f85538e = listener;
    }

    @Override
    public long a() {
        return this.f85537d;
    }

    @Override
    public x b() {
        return x.d(this.f85536c);
    }

    @Override
    public void h(Tg.d sink) {
        byte[] bArr = new byte[8192];
        try {
            InputStream openInputStream = this.f85534a.getContentResolver().openInputStream(this.f85535b);
            long j10 = 0;
            while (true) {
                try {
                    int read = openInputStream.read(bArr);
                    if (read == -1) {
                        openInputStream.close();
                        return;
                    }
                    sink.write(bArr, 0, read);
                    j10 += read;
                    a aVar = this.f85538e;
                    if (aVar != null) {
                        long j11 = this.f85537d;
                        aVar.a(j10, j11, (j10 * 100.0d) / j11);
                    }
                } finally {
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
