package fm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.util.io.StreamOverflowException;

public final class C13260d {

    public static int f86594a = 4096;

    public static void a(InputStream inputStream) throws IOException {
        int i10 = f86594a;
        do {
        } while (inputStream.read(new byte[i10], 0, i10) >= 0);
    }

    public static void b(InputStream inputStream, OutputStream outputStream) throws IOException {
        c(inputStream, outputStream, f86594a);
    }

    public static void c(InputStream inputStream, OutputStream outputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        while (true) {
            int read = inputStream.read(bArr, 0, i10);
            if (read < 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public static long d(InputStream inputStream, long j10, OutputStream outputStream) throws IOException {
        int i10 = f86594a;
        byte[] bArr = new byte[i10];
        long j11 = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, i10);
            if (read < 0) {
                return j11;
            }
            long j12 = read;
            if (j10 - j11 < j12) {
                throw new StreamOverflowException("Data Overflow");
            }
            j11 += j12;
            outputStream.write(bArr, 0, read);
        }
    }

    public static byte[] e(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        b(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] f(InputStream inputStream, int i10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d(inputStream, i10, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int g(InputStream inputStream, byte[] bArr) throws IOException {
        return h(inputStream, bArr, 0, bArr.length);
    }

    public static int h(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int read = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (read < 0) {
                break;
            }
            i12 += read;
        }
        return i12;
    }

    public static void i(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        int length = bArr.length - i10;
        if ((length | i10 | i11 | (length - i11)) < 0) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, OutputStream outputStream) throws IOException {
        byteArrayOutputStream.writeTo(outputStream);
    }
}
