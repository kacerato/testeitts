package B2;

import java.io.Serializable;
import java.util.zip.Checksum;

@k
@I2.j
public final class C2349i extends AbstractC2343c implements Serializable {

    public static final long f1431e = 0;

    public final v<? extends Checksum> f1432b;

    public final int f1433c;

    public final String f1434d;

    public final class b extends AbstractC2341a {

        public final Checksum f1435b;

        @Override
        public p h() {
            long value = this.f1435b.getValue();
            return C2349i.this.f1433c == 32 ? p.i((int) value) : p.j(value);
        }

        @Override
        public void k(byte b10) {
            this.f1435b.update(b10);
        }

        @Override
        public void n(byte[] bArr, int i10, int i11) {
            this.f1435b.update(bArr, i10, i11);
        }

        public b(Checksum checksum) {
            this.f1435b = (Checksum) w2.H.E(checksum);
        }
    }

    public C2349i(v<? extends Checksum> vVar, int i10, String str) {
        this.f1432b = (v) w2.H.E(vVar);
        w2.H.k(i10 == 32 || i10 == 64, "bits (%s) must be either 32 or 64", i10);
        this.f1433c = i10;
        this.f1434d = (String) w2.H.E(str);
    }

    @Override
    public int h() {
        return this.f1433c;
    }

    @Override
    public r i() {
        return new b(this.f1432b.get());
    }

    public String toString() {
        return this.f1434d;
    }
}
