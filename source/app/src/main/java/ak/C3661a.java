package ak;

import Bi.InterfaceC2379k;
import Bi.L;
import Xi.C3360o0;
import Xi.w0;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import javax.security.auth.Destroyable;
import oh.C14549x;

public class C3661a implements PBEKey, Destroyable {

    public final AtomicBoolean f32306b;

    public String f32307c;

    public C14549x f32308d;

    public int f32309e;

    public int f32310f;

    public int f32311g;

    public int f32312h;

    public final char[] f32313i;

    public final byte[] f32314j;

    public final int f32315k;

    public final InterfaceC2379k f32316l;

    public boolean f32317m;

    public C3661a(String str, InterfaceC2379k interfaceC2379k) {
        this.f32306b = new AtomicBoolean(false);
        this.f32317m = false;
        this.f32307c = str;
        this.f32316l = interfaceC2379k;
        this.f32313i = null;
        this.f32315k = -1;
        this.f32314j = null;
    }

    public static void a(Destroyable destroyable) {
        if (destroyable.isDestroyed()) {
            throw new IllegalStateException("key has been destroyed");
        }
    }

    public int b() {
        int i10 = this.f32310f;
        a(this);
        return i10;
    }

    public int c() {
        int i10 = this.f32312h;
        a(this);
        return i10;
    }

    public int d() {
        int i10 = this.f32311g;
        a(this);
        return i10;
    }

    @Override
    public void destroy() {
        if (this.f32306b.getAndSet(true)) {
            return;
        }
        char[] cArr = this.f32313i;
        if (cArr != null) {
            org.bouncycastle.util.a.g0(cArr, (char) 0);
        }
        byte[] bArr = this.f32314j;
        if (bArr != null) {
            org.bouncycastle.util.a.e0(bArr, (byte) 0);
        }
    }

    public C14549x g() {
        C14549x c14549x = this.f32308d;
        a(this);
        return c14549x;
    }

    @Override
    public String getAlgorithm() {
        String str = this.f32307c;
        a(this);
        return str;
    }

    @Override
    public byte[] getEncoded() {
        byte[] a10;
        InterfaceC2379k interfaceC2379k = this.f32316l;
        if (interfaceC2379k != null) {
            if (interfaceC2379k instanceof w0) {
                interfaceC2379k = ((w0) interfaceC2379k).b();
            }
            a10 = ((C3360o0) interfaceC2379k).b();
        } else {
            int i10 = this.f32309e;
            a10 = i10 == 2 ? L.a(this.f32313i) : i10 == 5 ? L.c(this.f32313i) : L.b(this.f32313i);
        }
        a(this);
        return a10;
    }

    @Override
    public String getFormat() {
        a(this);
        return "RAW";
    }

    @Override
    public int getIterationCount() {
        int i10 = this.f32315k;
        a(this);
        return i10;
    }

    @Override
    public char[] getPassword() {
        char[] r10 = org.bouncycastle.util.a.r(this.f32313i);
        a(this);
        if (r10 != null) {
            return r10;
        }
        throw new IllegalStateException("no password available");
    }

    @Override
    public byte[] getSalt() {
        byte[] p10 = org.bouncycastle.util.a.p(this.f32314j);
        a(this);
        return p10;
    }

    public InterfaceC2379k h() {
        InterfaceC2379k interfaceC2379k = this.f32316l;
        a(this);
        return interfaceC2379k;
    }

    public int i() {
        int i10 = this.f32309e;
        a(this);
        return i10;
    }

    @Override
    public boolean isDestroyed() {
        return this.f32306b.get();
    }

    public void j(boolean z10) {
        this.f32317m = z10;
    }

    public boolean k() {
        return this.f32317m;
    }

    public C3661a(String str, C14549x c14549x, int i10, int i11, int i12, int i13, PBEKeySpec pBEKeySpec, InterfaceC2379k interfaceC2379k) {
        this.f32306b = new AtomicBoolean(false);
        this.f32317m = false;
        this.f32307c = str;
        this.f32308d = c14549x;
        this.f32309e = i10;
        this.f32310f = i11;
        this.f32311g = i12;
        this.f32312h = i13;
        this.f32313i = pBEKeySpec.getPassword();
        this.f32315k = pBEKeySpec.getIterationCount();
        this.f32314j = pBEKeySpec.getSalt();
        this.f32316l = interfaceC2379k;
    }
}
