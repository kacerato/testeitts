package hm;

import java.security.SecureRandom;

public class h implements Zi.e {

    public final SecureRandom f91155a = new SecureRandom();

    public final boolean f91156b;

    public class a implements Zi.d {

        public final int f91157a;

        public a(int i10) {
            this.f91157a = i10;
        }

        @Override
        public byte[] b() {
            byte[] bArr = new byte[(this.f91157a + 7) / 8];
            h.this.f91155a.nextBytes(bArr);
            return bArr;
        }

        @Override
        public boolean c() {
            return h.this.f91156b;
        }

        @Override
        public int d() {
            return this.f91157a;
        }
    }

    public h(boolean z10) {
        this.f91156b = z10;
    }

    @Override
    public Zi.d get(int i10) {
        return new a(i10);
    }
}
