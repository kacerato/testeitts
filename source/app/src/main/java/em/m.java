package em;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.encoders.DecoderException;
import org.bouncycastle.util.encoders.EncoderException;

public class m {

    public static final g f85924a = new n();

    public static int a(String str, OutputStream outputStream) throws IOException {
        return f85924a.d(str, outputStream);
    }

    public static int b(byte[] bArr, OutputStream outputStream) throws IOException {
        return f85924a.c(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] c(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85924a.d(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("exception decoding URL safe base64 string: " + e10.getMessage(), e10);
        }
    }

    public static byte[] d(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85924a.c(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new DecoderException("exception decoding URL safe base64 string: " + e10.getMessage(), e10);
        }
    }

    public static int e(byte[] bArr, OutputStream outputStream) throws IOException {
        return f85924a.b(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] f(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f85924a.b(bArr, 0, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e10) {
            throw new EncoderException("exception encoding URL safe base64 data: " + e10.getMessage(), e10);
        }
    }
}
