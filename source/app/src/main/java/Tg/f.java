package Tg;

import android.security.keystore.KeyProperties;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.lang3.StringUtils;
import u8.C15580b;
import yd.C16181m;

public class f implements Serializable, Comparable<f> {

    public static final long f24996f = 1;

    public final byte[] f24998b;

    public transient int f24999c;

    public transient String f25000d;

    public static final char[] f24995e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final f f24997g = J(new byte[0]);

    public f(byte[] bArr) {
        this.f24998b = bArr;
    }

    public static f I(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("data == null");
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return new f(bArr);
    }

    public static f J(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f K(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        B.b(bArr.length, i10, i11);
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        return new f(bArr2);
    }

    public static f N(InputStream inputStream, int i10) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i10);
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int read = inputStream.read(bArr, i11, i10 - i11);
            if (read == -1) {
                throw new EOFException();
            }
            i11 += read;
        }
        return new f(bArr);
    }

    public static int d(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            if (i12 == i10) {
                return i11;
            }
            int codePointAt = str.codePointAt(i11);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i12++;
            i11 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    @Nullable
    public static f g(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] a10 = C3088b.a(str);
        if (a10 != null) {
            return new f(a10);
        }
        return null;
    }

    public static f h(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((i(str.charAt(i11)) << 4) + i(str.charAt(i11 + 1)));
        }
        return J(bArr);
    }

    public static int i(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        if (c10 >= 'A' && c10 <= 'F') {
            return c10 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c10);
    }

    public static f k(String str, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        if (charset != null) {
            return new f(str.getBytes(charset));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public static f m(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(B.f24968a));
        fVar.f25000d = str;
        return fVar;
    }

    public final int A(byte[] bArr) {
        return B(bArr, 0);
    }

    public int B(byte[] bArr, int i10) {
        int length = this.f24998b.length - bArr.length;
        for (int max = Math.max(i10, 0); max <= length; max++) {
            if (B.a(this.f24998b, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    public byte[] C() {
        return this.f24998b;
    }

    public final int D(f fVar) {
        return G(fVar.C(), S());
    }

    public final int E(f fVar, int i10) {
        return G(fVar.C(), i10);
    }

    public final int F(byte[] bArr) {
        return G(bArr, S());
    }

    public int G(byte[] bArr, int i10) {
        for (int min = Math.min(i10, this.f24998b.length - bArr.length); min >= 0; min--) {
            if (B.a(this.f24998b, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public f H() {
        return j(KeyProperties.DIGEST_MD5);
    }

    public boolean L(int i10, f fVar, int i11, int i12) {
        return fVar.M(i11, this.f24998b, i10, i12);
    }

    public boolean M(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.f24998b;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && B.a(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    public final void O(ObjectInputStream objectInputStream) throws IOException {
        f N10 = N(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = f.class.getDeclaredField(C15580b.f118629u);
            declaredField.setAccessible(true);
            declaredField.set(this, N10.f24998b);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    public f P() {
        return j("SHA-1");
    }

    public f Q() {
        return j("SHA-256");
    }

    public f R() {
        return j("SHA-512");
    }

    public int S() {
        return this.f24998b.length;
    }

    public final boolean T(f fVar) {
        return L(0, fVar, 0, fVar.S());
    }

    public final boolean U(byte[] bArr) {
        return M(0, bArr, 0, bArr.length);
    }

    public String V(Charset charset) {
        if (charset != null) {
            return new String(this.f24998b, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public f W(int i10) {
        return X(i10, this.f24998b.length);
    }

    public f X(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f24998b;
        if (i11 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f24998b.length + ")");
        }
        int i12 = i11 - i10;
        if (i12 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i10 == 0 && i11 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return new f(bArr2);
    }

    public f Y() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f24998b;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArr2[i11] = (byte) (b11 + 32);
                    }
                }
                return new f(bArr2);
            }
            i10++;
        }
    }

    public f Z() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f24998b;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        bArr2[i11] = (byte) (b11 - 32);
                    }
                }
                return new f(bArr2);
            }
            i10++;
        }
    }

    public ByteBuffer a() {
        return ByteBuffer.wrap(this.f24998b).asReadOnlyBuffer();
    }

    public byte[] a0() {
        return (byte[]) this.f24998b.clone();
    }

    public String b() {
        return C3088b.b(this.f24998b);
    }

    public String b0() {
        String str = this.f25000d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f24998b, B.f24968a);
        this.f25000d = str2;
        return str2;
    }

    public String c() {
        return C3088b.d(this.f24998b);
    }

    public void c0(C3089c c3089c) {
        byte[] bArr = this.f24998b;
        c3089c.write(bArr, 0, bArr.length);
    }

    public void d0(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        outputStream.write(this.f24998b);
    }

    @Override
    public int compareTo(f fVar) {
        int S10 = S();
        int S11 = fVar.S();
        int min = Math.min(S10, S11);
        for (int i10 = 0; i10 < min; i10++) {
            int r10 = r(i10) & 255;
            int r11 = fVar.r(i10) & 255;
            if (r10 != r11) {
                return r10 < r11 ? -1 : 1;
            }
        }
        if (S10 == S11) {
            return 0;
        }
        return S10 < S11 ? -1 : 1;
    }

    public final void e0(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f24998b.length);
        objectOutputStream.write(this.f24998b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int S10 = fVar.S();
            byte[] bArr = this.f24998b;
            if (S10 == bArr.length && fVar.M(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.f24999c;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = Arrays.hashCode(this.f24998b);
        this.f24999c = hashCode;
        return hashCode;
    }

    public final f j(String str) {
        try {
            return J(MessageDigest.getInstance(str).digest(this.f24998b));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public final boolean o(f fVar) {
        return L(S() - fVar.S(), fVar, 0, fVar.S());
    }

    public final boolean q(byte[] bArr) {
        return M(S() - bArr.length, bArr, 0, bArr.length);
    }

    public byte r(int i10) {
        return this.f24998b[i10];
    }

    public String s() {
        byte[] bArr = this.f24998b;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f24995e;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public String toString() {
        if (this.f24998b.length == 0) {
            return "[size=0]";
        }
        String b02 = b0();
        int d10 = d(b02, 64);
        if (d10 == -1) {
            if (this.f24998b.length <= 64) {
                return "[hex=" + s() + "]";
            }
            return "[size=" + this.f24998b.length + " hex=" + X(0, 64).s() + "\u2026]";
        }
        String replace = b02.substring(0, d10).replace(C16181m.f130232i, "\\\\").replace("\n", "\\n").replace(StringUtils.CR, "\\r");
        if (d10 >= b02.length()) {
            return "[text=" + replace + "]";
        }
        return "[size=" + this.f24998b.length + " text=" + replace + "\u2026]";
    }

    public final f u(String str, f fVar) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(fVar.a0(), str));
            return J(mac.doFinal(this.f24998b));
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new AssertionError(e11);
        }
    }

    public f v(f fVar) {
        return u("HmacSHA1", fVar);
    }

    public f w(f fVar) {
        return u(KeyProperties.KEY_ALGORITHM_HMAC_SHA256, fVar);
    }

    public f x(f fVar) {
        return u(KeyProperties.KEY_ALGORITHM_HMAC_SHA512, fVar);
    }

    public final int y(f fVar) {
        return B(fVar.C(), 0);
    }

    public final int z(f fVar, int i10) {
        return B(fVar.C(), i10);
    }
}
