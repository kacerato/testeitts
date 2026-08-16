package T0;

import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;

@G0.F
@C0.a
@Deprecated
public final class q {
    @C0.a
    public static void a(@Nullable ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    @C0.a
    public static void b(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @C0.a
    @Deprecated
    public static long c(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        return d(inputStream, outputStream, false, 1024);
    }

    @C0.a
    @Deprecated
    public static long d(@NonNull InputStream inputStream, @NonNull OutputStream outputStream, boolean z10, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        long j10 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i10);
                if (read == -1) {
                    break;
                }
                j10 += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th2) {
                if (z10) {
                    b(inputStream);
                    b(outputStream);
                }
                throw th2;
            }
        }
        if (z10) {
            b(inputStream);
            b(outputStream);
        }
        return j10;
    }

    @C0.a
    public static boolean e(@NonNull byte[] bArr) {
        if (bArr.length > 1) {
            if ((((bArr[1] & 255) << 8) | (bArr[0] & 255)) == 35615) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @C0.a
    @Deprecated
    public static byte[] f(@NonNull InputStream inputStream) throws IOException {
        return g(inputStream, true);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static byte[] g(@NonNull InputStream inputStream, boolean z10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d(inputStream, byteArrayOutputStream, z10, 1024);
        return byteArrayOutputStream.toByteArray();
    }

    @NonNull
    @C0.a
    @Deprecated
    public static byte[] h(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        G0.A.r(inputStream);
        G0.A.r(byteArrayOutputStream);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
