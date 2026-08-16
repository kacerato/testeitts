package Zi;

import java.security.SecureRandom;

public class o extends SecureRandom {

    public final boolean f31372b;

    public final SecureRandom f31373c;

    public final n f31374d;

    public o(SecureRandom secureRandom, n nVar, boolean z10) {
        this.f31373c = secureRandom;
        this.f31374d = nVar;
        this.f31372b = z10;
    }

    @Override
    public byte[] generateSeed(int i10) {
        return f.a(this.f31374d.b(), i10);
    }

    @Override
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            try {
                if (this.f31374d.a(bArr, this.f31372b) < 0) {
                    this.f31374d.f();
                    this.f31374d.a(bArr, this.f31372b);
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
                SecureRandom secureRandom = this.f31373c;
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
                SecureRandom secureRandom = this.f31373c;
                if (secureRandom != null) {
                    secureRandom.setSeed(bArr);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
