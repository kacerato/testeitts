package pn;

import android.text.Spanned;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class b {
    public static int a(int i10) {
        return ((i10 << 24) & (-16777216)) | ((i10 >>> 24) & 255) | ((i10 >> 8) & 65280) | ((i10 << 8) & Spanned.SPAN_PRIORITY);
    }

    public static ByteBuffer b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
