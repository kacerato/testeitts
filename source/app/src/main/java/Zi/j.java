package Zi;

import java.security.SecureRandom;

public class j extends SecureRandom {

    public final b f31333b;

    public final boolean f31334c;

    public final SecureRandom f31335d;

    public final d f31336e;

    public aj.f f31337f;

    public j(SecureRandom secureRandom, d dVar, b bVar, boolean z10) {
        this.f31335d = secureRandom;
        this.f31336e = dVar;
        this.f31333b = bVar;
        this.f31334c = z10;
    }

    public void a(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.f31337f == null) {
                    this.f31337f = this.f31333b.a(this.f31336e);
                }
                this.f31337f.b(bArr);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public byte[] generateSeed(int i10) {
        return f.a(this.f31336e, i10);
    }

    @Override
    public String getAlgorithm() {
        return this.f31333b.getAlgorithm();
    }

    @Override
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.f31337f == null) {
                    this.f31337f = this.f31333b.a(this.f31336e);
                }
                if (this.f31337f.a(bArr, null, this.f31334c) < 0) {
                    this.f31337f.b(null);
                    this.f31337f.a(bArr, null, this.f31334c);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void setSeed(long j10) {
        synchronized (this) {
            try {
                SecureRandom secureRandom = this.f31335d;
                if (secureRandom != null) {
                    secureRandom.setSeed(j10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void setSeed(byte[] bArr) {
        synchronized (this) {
            try {
                SecureRandom secureRandom = this.f31335d;
                if (secureRandom != null) {
                    secureRandom.setSeed(bArr);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
