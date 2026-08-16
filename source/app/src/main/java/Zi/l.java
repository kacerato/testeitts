package Zi;

public class l {

    public static class b implements Runnable {

        public volatile int f31356b;

        public volatile boolean f31357c;

        public b() {
            this.f31356b = 0;
            this.f31357c = false;
        }

        public byte[] a(int i10, boolean z10) {
            Thread thread = new Thread(this);
            byte[] bArr = new byte[i10];
            this.f31356b = 0;
            this.f31357c = false;
            thread.start();
            if (!z10) {
                i10 *= 8;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                while (this.f31356b == i11) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                    }
                }
                i11 = this.f31356b;
                if (z10) {
                    bArr[i12] = (byte) (i11 & 255);
                } else {
                    int i13 = i12 / 8;
                    bArr[i13] = (byte) ((bArr[i13] << 1) | (i11 & 1));
                }
            }
            this.f31357c = true;
            return bArr;
        }

        @Override
        public void run() {
            while (!this.f31357c) {
                this.f31356b++;
            }
        }
    }

    public byte[] a(int i10, boolean z10) {
        return new b().a(i10, z10);
    }
}
