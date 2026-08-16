package en;

import ag.C3629k;
import java.nio.ByteBuffer;

public class a {

    public static final char[] f85925a = C3629k.f32105a.toCharArray();

    public static String a(byte[] data) {
        return b(data, 0, data.length);
    }

    public static String b(byte[] data, int offset, int length) {
        StringBuilder sb2 = new StringBuilder(length * 2);
        for (int i10 = 0; i10 < length; i10++) {
            byte b10 = data[offset + i10];
            char[] cArr = f85925a;
            sb2.append(cArr[(b10 >>> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }

    public static String c(ByteBuffer data) {
        return b(data.array(), data.arrayOffset() + data.position(), data.remaining());
    }
}
