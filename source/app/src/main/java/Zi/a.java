package Zi;

import java.security.SecureRandom;

public class a implements e {

    public final SecureRandom f31317a;

    public final boolean f31318b;

    public class C0824a implements d {

        public final int f31319a;

        public C0824a(int i10) {
            this.f31319a = i10;
        }

        @Override
        public byte[] b() {
            if (!(a.this.f31317a instanceof j) && !(a.this.f31317a instanceof o)) {
                return a.this.f31317a.generateSeed((this.f31319a + 7) / 8);
            }
            byte[] bArr = new byte[(this.f31319a + 7) / 8];
            a.this.f31317a.nextBytes(bArr);
            return bArr;
        }

        @Override
        public boolean c() {
            return a.this.f31318b;
        }

        @Override
        public int d() {
            return this.f31319a;
        }
    }

    public a(SecureRandom secureRandom, boolean z10) {
        this.f31317a = secureRandom;
        this.f31318b = z10;
    }

    @Override
    public d get(int i10) {
        return new C0824a(i10);
    }
}
