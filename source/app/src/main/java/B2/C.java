package B2;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@k
@I2.j
public final class C extends AbstractC2343c implements Serializable {

    public final MessageDigest f1333b;

    public final int f1334c;

    public final boolean f1335d;

    public final String f1336e;

    public static final class b extends AbstractC2341a {

        public final MessageDigest f1337b;

        public final int f1338c;

        public boolean f1339d;

        private void o() {
            w2.H.h0(!this.f1339d, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override
        public p h() {
            o();
            this.f1339d = true;
            return this.f1338c == this.f1337b.getDigestLength() ? p.h(this.f1337b.digest()) : p.h(Arrays.copyOf(this.f1337b.digest(), this.f1338c));
        }

        @Override
        public void k(byte b10) {
            o();
            this.f1337b.update(b10);
        }

        @Override
        public void l(ByteBuffer byteBuffer) {
            o();
            this.f1337b.update(byteBuffer);
        }

        @Override
        public void n(byte[] bArr, int i10, int i11) {
            o();
            this.f1337b.update(bArr, i10, i11);
        }

        public b(MessageDigest messageDigest, int i10) {
            this.f1337b = messageDigest;
            this.f1338c = i10;
        }
    }

    public static final class c implements Serializable {

        public static final long f1340e = 0;

        public final String f1341b;

        public final int f1342c;

        public final String f1343d;

        public final Object a() {
            return new C(this.f1341b, this.f1342c, this.f1343d);
        }

        public c(String str, int i10, String str2) {
            this.f1341b = str;
            this.f1342c = i10;
            this.f1343d = str2;
        }
    }

    public C(String str, String str2) {
        MessageDigest l10 = l(str);
        this.f1333b = l10;
        this.f1334c = l10.getDigestLength();
        this.f1336e = (String) w2.H.E(str2);
        this.f1335d = m(l10);
    }

    public static MessageDigest l(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static boolean m(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override
    public int h() {
        return this.f1334c * 8;
    }

    @Override
    public r i() {
        if (this.f1335d) {
            try {
                return new b((MessageDigest) this.f1333b.clone(), this.f1334c);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(l(this.f1333b.getAlgorithm()), this.f1334c);
    }

    public Object n() {
        return new c(this.f1333b.getAlgorithm(), this.f1334c, this.f1336e);
    }

    public String toString() {
        return this.f1336e;
    }

    public C(String str, int i10, String str2) {
        this.f1336e = (String) w2.H.E(str2);
        MessageDigest l10 = l(str);
        this.f1333b = l10;
        int digestLength = l10.getDigestLength();
        w2.H.m(i10 >= 4 && i10 <= digestLength, "bytes (%s) must be >= 4 and < %s", i10, digestLength);
        this.f1334c = i10;
        this.f1335d = m(l10);
    }
}
