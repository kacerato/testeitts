package Vj;

import java.security.SecureRandom;

public class e implements Zi.e {

    public final SecureRandom f27135a;

    public final boolean f27136b;

    public class a implements d {

        public final int f27137a;

        public final int f27138b;

        public a(int i10) {
            this.f27138b = i10;
            this.f27137a = (i10 + 7) / 8;
        }

        @Override
        public byte[] a(long j10) throws InterruptedException {
            int i10;
            int i11 = this.f27137a;
            byte[] bArr = new byte[i11];
            int i12 = 0;
            while (true) {
                i10 = this.f27137a;
                if (i12 >= i10 / 8) {
                    break;
                }
                e.d(j10);
                byte[] generateSeed = e.this.f27135a.generateSeed(8);
                System.arraycopy(generateSeed, 0, bArr, i12 * 8, generateSeed.length);
                i12++;
            }
            int i13 = i10 - ((i10 / 8) * 8);
            if (i13 != 0) {
                e.d(j10);
                byte[] generateSeed2 = e.this.f27135a.generateSeed(i13);
                System.arraycopy(generateSeed2, 0, bArr, i11 - generateSeed2.length, generateSeed2.length);
            }
            return bArr;
        }

        @Override
        public byte[] b() {
            try {
                return a(0L);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException("initial entropy fetch interrupted");
            }
        }

        @Override
        public boolean c() {
            return e.this.f27136b;
        }

        @Override
        public int d() {
            return this.f27138b;
        }
    }

    public e(SecureRandom secureRandom, boolean z10) {
        this.f27135a = secureRandom;
        this.f27136b = z10;
    }

    public static void d(long j10) throws InterruptedException {
        if (j10 != 0) {
            Thread.sleep(j10);
        }
    }

    @Override
    public Zi.d get(int i10) {
        return new a(i10);
    }
}
