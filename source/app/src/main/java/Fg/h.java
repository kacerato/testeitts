package Fg;

import com.tonyodev.fetch2core.FetchCoreDefaults;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.util.Calendar;
import net.lingala.zip4j.exception.ZipException;

public class h {

    public static final long f6829a = 2162688;

    public static final int f6830b = 15;

    public static byte[] a(char[] cArr, boolean z10) {
        return z10 ? c(cArr) : b(cArr);
    }

    public static byte[] b(char[] cArr) {
        byte[] bArr = new byte[cArr.length];
        for (int i10 = 0; i10 < cArr.length; i10++) {
            bArr[i10] = (byte) cArr[i10];
        }
        return bArr;
    }

    public static byte[] c(char[] cArr) {
        try {
            ByteBuffer encode = d.f6822w.encode(CharBuffer.wrap(cArr));
            byte[] bArr = new byte[encode.limit()];
            encode.get(bArr);
            return bArr;
        } catch (Exception unused) {
            return b(cArr);
        }
    }

    public static boolean d(File file) throws ZipException {
        if (file == null) {
            throw new ZipException("output path is null");
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            throw new ZipException("output directory is not valid");
        }
        if (file.mkdirs()) {
            return true;
        }
        throw new ZipException("Cannot create output directories");
    }

    public static long e(long j10) {
        int i10 = (int) ((j10 << 1) & 62);
        int i11 = (int) ((j10 >> 5) & 63);
        int i12 = (int) ((j10 >> 11) & 31);
        int i13 = (int) ((j10 >> 16) & 31);
        int i14 = (int) (((j10 >> 21) & 15) - 1);
        int i15 = (int) (((j10 >> 25) & 127) + 1980);
        Calendar calendar = Calendar.getInstance();
        calendar.set(i15, i14, i13, i12, i11, i10);
        calendar.set(14, 0);
        return calendar.getTime().getTime();
    }

    public static long f(long j10) {
        return e(j10) + (j10 >> 32);
    }

    public static long g(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        if (calendar.get(1) < 1980) {
            return f6829a;
        }
        return (calendar.get(13) >> 1) | ((r5 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
    }

    public static long h(long j10) {
        if (j10 < 0) {
            return f6829a;
        }
        long g10 = g(j10);
        return g10 != f6829a ? g10 + ((j10 % FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS) << 32) : f6829a;
    }

    public static Cg.d i(Bg.b bVar) throws ZipException {
        if (bVar.e() != Cg.d.AES_INTERNAL_ONLY) {
            return bVar.e();
        }
        if (bVar.c() != null) {
            return bVar.c().e();
        }
        throw new ZipException("AesExtraDataRecord not present in local header for aes encrypted data");
    }

    public static boolean j(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean k(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static int l(InputStream inputStream, byte[] bArr) throws IOException {
        int read = inputStream.read(bArr);
        if (read == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (read == bArr.length || (read = n(inputStream, bArr, read)) == bArr.length) {
            return read;
        }
        throw new IOException("Cannot read fully into byte buffer");
    }

    public static int m(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IllegalArgumentException("Negative offset");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (i10 + i11 > bArr.length) {
            throw new IllegalArgumentException("Length greater than buffer size");
        }
        while (i12 != i11) {
            int read = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (read == -1) {
                if (i12 == 0) {
                    return -1;
                }
                return i12;
            }
            i12 += read;
        }
        return i12;
    }

    public static int n(InputStream inputStream, byte[] bArr, int i10) throws IOException {
        if (i10 < 0) {
            throw new IOException("Invalid readLength");
        }
        int i11 = 0;
        if (i10 == 0) {
            return 0;
        }
        int length = bArr.length - i10;
        for (int i12 = 1; i10 < bArr.length && i11 != -1 && i12 < 15; i12++) {
            i11 = inputStream.read(bArr, i10, length);
            if (i11 > 0) {
                i10 += i11;
                length -= i11;
            }
        }
        return i10;
    }
}
