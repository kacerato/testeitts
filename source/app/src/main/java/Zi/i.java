package Zi;

public class i implements h {

    public final h f31330a;

    public byte[] f31331b;

    public int f31332c;

    public i(h hVar, int i10) {
        if (hVar == null) {
            throw new IllegalArgumentException("generator cannot be null");
        }
        if (i10 < 2) {
            throw new IllegalArgumentException("windowSize must be at least 2");
        }
        this.f31330a = hVar;
        this.f31331b = new byte[i10];
    }

    @Override
    public void a(byte[] bArr, int i10, int i11) {
        d(bArr, i10, i11);
    }

    @Override
    public void b(long j10) {
        synchronized (this) {
            this.f31332c = 0;
            this.f31330a.b(j10);
        }
    }

    @Override
    public void c(byte[] bArr) {
        synchronized (this) {
            this.f31332c = 0;
            this.f31330a.c(bArr);
        }
    }

    public final void d(byte[] bArr, int i10, int i11) {
        synchronized (this) {
            for (int i12 = 0; i12 < i11; i12++) {
                try {
                    if (this.f31332c < 1) {
                        h hVar = this.f31330a;
                        byte[] bArr2 = this.f31331b;
                        hVar.a(bArr2, 0, bArr2.length);
                        this.f31332c = this.f31331b.length;
                    }
                    byte[] bArr3 = this.f31331b;
                    int i13 = this.f31332c - 1;
                    this.f31332c = i13;
                    bArr[i12 + i10] = bArr3[i13];
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void nextBytes(byte[] bArr) {
        d(bArr, 0, bArr.length);
    }
}
