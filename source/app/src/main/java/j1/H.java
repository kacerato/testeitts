package j1;

import java.io.IOException;

public abstract class H {

    public static final H f92482a = new F("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    public static final H f92483b = new F("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    public static final H f92484c = new G("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    public static final H f92485d = new G("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    public static final H f92486e = new E("base16()", "0123456789ABCDEF");

    public static H c() {
        return f92486e;
    }

    public abstract void a(Appendable appendable, byte[] bArr, int i10, int i11) throws IOException;

    public abstract int b(int i10);

    public final String d(byte[] bArr, int i10, int i11) {
        C13790n.e(0, i11, bArr.length);
        StringBuilder sb2 = new StringBuilder(b(i11));
        try {
            a(sb2, bArr, 0, i11);
            return sb2.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
