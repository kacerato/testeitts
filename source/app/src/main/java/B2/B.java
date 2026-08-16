package B2;

import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

@k
@I2.j
public final class B extends AbstractC2343c {

    public final Mac f1326b;

    public final Key f1327c;

    public final String f1328d;

    public final int f1329e;

    public final boolean f1330f;

    public static final class b extends AbstractC2341a {

        public final Mac f1331b;

        public boolean f1332c;

        @Override
        public p h() {
            o();
            this.f1332c = true;
            return p.h(this.f1331b.doFinal());
        }

        @Override
        public void k(byte b10) {
            o();
            this.f1331b.update(b10);
        }

        @Override
        public void l(ByteBuffer byteBuffer) {
            o();
            w2.H.E(byteBuffer);
            this.f1331b.update(byteBuffer);
        }

        @Override
        public void m(byte[] bArr) {
            o();
            this.f1331b.update(bArr);
        }

        @Override
        public void n(byte[] bArr, int i10, int i11) {
            o();
            this.f1331b.update(bArr, i10, i11);
        }

        public final void o() {
            w2.H.h0(!this.f1332c, "Cannot re-use a Hasher after calling hash() on it");
        }

        public b(Mac mac) {
            this.f1331b = mac;
        }
    }

    public B(String str, Key key, String str2) {
        Mac l10 = l(str, key);
        this.f1326b = l10;
        this.f1327c = (Key) w2.H.E(key);
        this.f1328d = (String) w2.H.E(str2);
        this.f1329e = l10.getMacLength() * 8;
        this.f1330f = m(l10);
    }

    public static Mac l(String str, Key key) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            return mac;
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new IllegalStateException(e11);
        }
    }

    public static boolean m(Mac mac) {
        try {
            mac.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override
    public int h() {
        return this.f1329e;
    }

    @Override
    public r i() {
        if (this.f1330f) {
            try {
                return new b((Mac) this.f1326b.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new b(l(this.f1326b.getAlgorithm(), this.f1327c));
    }

    public String toString() {
        return this.f1328d;
    }
}
