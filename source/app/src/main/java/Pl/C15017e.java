package pl;

import Bi.P;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.security.auth.DestroyFailedException;

public class C15017e implements P {

    public final AtomicBoolean f104151b = new AtomicBoolean(false);

    public final byte[] f104152c;

    public final byte[] f104153d;

    public C15017e(byte[] bArr, byte[] bArr2) {
        this.f104152c = bArr;
        this.f104153d = bArr2;
    }

    public void a() {
        if (isDestroyed()) {
            throw new IllegalStateException("data has been destroyed");
        }
    }

    @Override
    public void destroy() throws DestroyFailedException {
        if (this.f104151b.getAndSet(true)) {
            return;
        }
        org.bouncycastle.util.a.n(this.f104152c);
        org.bouncycastle.util.a.n(this.f104153d);
    }

    @Override
    public byte[] e() {
        byte[] p10 = org.bouncycastle.util.a.p(this.f104153d);
        a();
        return p10;
    }

    @Override
    public byte[] f() {
        byte[] p10 = org.bouncycastle.util.a.p(this.f104152c);
        a();
        return p10;
    }

    @Override
    public boolean isDestroyed() {
        return this.f104151b.get();
    }
}
