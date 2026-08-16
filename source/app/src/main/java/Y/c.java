package Y;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class c extends FilterInputStream {

    public static final String f29662d = "ContentLengthStream";

    public static final int f29663e = -1;

    public final long f29664b;

    public int f29665c;

    public c(@NonNull InputStream inputStream, long j10) {
        super(inputStream);
        this.f29664b = j10;
    }

    @NonNull
    public static InputStream b(@NonNull InputStream inputStream, long j10) {
        return new c(inputStream, j10);
    }

    @NonNull
    public static InputStream c(@NonNull InputStream inputStream, @Nullable String str) {
        return b(inputStream, d(str));
    }

    public static int d(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e10) {
                if (Log.isLoggable(f29662d, 3)) {
                    Log.d(f29662d, "failed to parse content length header: " + str, e10);
                }
            }
        }
        return -1;
    }

    public final int a(int i10) throws IOException {
        if (i10 >= 0) {
            this.f29665c += i10;
        } else if (this.f29664b - this.f29665c > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f29664b + ", but read: " + this.f29665c);
        }
        return i10;
    }

    @Override
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f29664b - this.f29665c, this.f92730in.available());
    }

    @Override
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        return a(super.read(bArr, i10, i11));
    }
}
