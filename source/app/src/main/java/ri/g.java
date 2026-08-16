package Ri;

import Bi.P;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.security.auth.DestroyFailedException;

public class g implements P {

    public final AtomicBoolean f22831b = new AtomicBoolean(false);

    public final byte[] f22832c;

    public final byte[] f22833d;

    public g(byte[] bArr, byte[] bArr2) {
        this.f22832c = bArr;
        this.f22833d = bArr2;
    }

    public void a() {
        if (isDestroyed()) {
            throw new IllegalStateException("data has been destroyed");
        }
    }

    @Override
    public void destroy() throws DestroyFailedException {
        if (this.f22831b.getAndSet(true)) {
            return;
        }
        org.bouncycastle.util.a.n(this.f22832c);
        org.bouncycastle.util.a.n(this.f22833d);
    }

    @Override
    public byte[] e() {
        byte[] p10 = org.bouncycastle.util.a.p(this.f22833d);
        a();
        return p10;
    }

    @Override
    public byte[] f() {
        byte[] p10 = org.bouncycastle.util.a.p(this.f22832c);
        a();
        return p10;
    }

    @Override
    public boolean isDestroyed() {
        return this.f22831b.get();
    }
}
