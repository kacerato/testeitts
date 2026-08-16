package em;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.encoders.DecoderException;
import org.bouncycastle.util.encoders.EncoderException;
import org.bouncycastle.util.w;

public class h {

    public static final i f85898a = new i();

    public static int a(String str, OutputStream outputStream) throws IOException {
        return f85898a.d(str, outputStream);
    }

    public static byte[] b(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85898a.d(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] c(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85898a.c(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex data: " + e10.getMessage(), e10);
        }
    }

    public static byte[] d(String str) {
        try {
            return f85898a.f(str, 0, str.length());
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] e(String str, int i10, int i11) {
        try {
            return f85898a.f(str, i10, i11);
        } catch (Exception e10) {
            throw new DecoderException("exception decoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static int f(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        return f85898a.b(bArr, i10, i11, outputStream);
    }

    public static int g(byte[] bArr, OutputStream outputStream) throws IOException {
        return f85898a.b(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] h(byte[] bArr) {
        return i(bArr, 0, bArr.length);
    }

    public static byte[] i(byte[] bArr, int i10, int i11) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85898a.b(bArr, i10, i11, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException("exception encoding Hex string: " + e10.getMessage(), e10);
        }
    }

    public static String j(byte[] bArr) {
        return k(bArr, 0, bArr.length);
    }

    public static String k(byte[] bArr, int i10, int i11) {
        return w.c(i(bArr, i10, i11));
    }
}
