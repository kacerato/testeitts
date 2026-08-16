package ck;

import java.security.spec.AlgorithmParameterSpec;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.security.auth.Destroyable;

public class m implements AlgorithmParameterSpec, Destroyable {

    public final AtomicBoolean f34924b;

    public final boolean f34925c;

    public volatile byte[] f34926d;

    public volatile AlgorithmParameterSpec f34927e;

    public m(byte[] bArr, AlgorithmParameterSpec algorithmParameterSpec) {
        this(bArr, false, algorithmParameterSpec);
    }

    public final void a() {
        if (isDestroyed()) {
            throw new IllegalStateException("spec has been destroyed");
        }
    }

    public AlgorithmParameterSpec b() {
        AlgorithmParameterSpec algorithmParameterSpec = this.f34927e;
        a();
        return algorithmParameterSpec;
    }

    public byte[] c() {
        byte[] bArr = this.f34926d;
        a();
        return bArr;
    }

    public boolean d() {
        return this.f34925c;
    }

    @Override
    public void destroy() {
        if (this.f34924b.getAndSet(true)) {
            return;
        }
        org.bouncycastle.util.a.n(this.f34926d);
        this.f34926d = null;
        this.f34927e = null;
    }

    @Override
    public boolean isDestroyed() {
        return this.f34924b.get();
    }

    public m(byte[] bArr, boolean z10, AlgorithmParameterSpec algorithmParameterSpec) {
        this.f34924b = new AtomicBoolean(false);
        this.f34926d = bArr;
        this.f34927e = algorithmParameterSpec;
        this.f34925c = z10;
    }
}
