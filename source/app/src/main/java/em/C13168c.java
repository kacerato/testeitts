package em;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.encoders.DecoderException;
import org.bouncycastle.util.encoders.EncoderException;
import org.bouncycastle.util.w;

public class C13168c {

    public static final g f85888a = new C13169d();

    public static int a(String str, OutputStream outputStream) throws IOException {
        return f85888a.d(str, outputStream);
    }

    public static int b(byte[] bArr, int i10, int i11, OutputStream outputStream) {
        try {
            return f85888a.c(bArr, i10, i11, outputStream);
        } catch (Exception e10) {
            throw new DecoderException("unable to decode base64 data: " + e10.getMessage(), e10);
        }
    }

    public static byte[] c(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() / 4) * 3);
        try {
            f85888a.d(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("unable to decode base64 string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] d(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((bArr.length / 4) * 3);
        try {
            f85888a.c(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("unable to decode base64 data: " + e10.getMessage(), e10);
        }
    }

    public static int e(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        return f85888a.b(bArr, i10, i11, outputStream);
    }

    public static int f(byte[] bArr, OutputStream outputStream) throws IOException {
        return f85888a.b(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] g(byte[] bArr) {
        return h(bArr, 0, bArr.length);
    }

    public static byte[] h(byte[] bArr, int i10, int i11) {
        g gVar = f85888a;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(gVar.a(i11));
        try {
            gVar.b(bArr, i10, i11, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException("exception encoding base64 string: " + e10.getMessage(), e10);
        }
    }

    public static String i(byte[] bArr) {
        return j(bArr, 0, bArr.length);
    }

    public static String j(byte[] bArr, int i10, int i11) {
        return w.c(h(bArr, i10, i11));
    }
}
