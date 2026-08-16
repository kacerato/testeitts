package rk;

import java.math.BigInteger;
import org.bouncycastle.util.k;

public class C15194e implements InterfaceC15196g {

    public final InterfaceC15191b f109080a;

    public final InterfaceC15195f f109081b;

    public C15194e(InterfaceC15191b interfaceC15191b, InterfaceC15195f interfaceC15195f) {
        this.f109080a = interfaceC15191b;
        this.f109081b = interfaceC15195f;
    }

    @Override
    public int a() {
        return this.f109081b.a();
    }

    @Override
    public BigInteger b() {
        return this.f109080a.b();
    }

    @Override
    public InterfaceC15191b c() {
        return this.f109080a;
    }

    @Override
    public InterfaceC15195f d() {
        return this.f109081b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C15194e)) {
            return false;
        }
        C15194e c15194e = (C15194e) obj;
        return this.f109080a.equals(c15194e.f109080a) && this.f109081b.equals(c15194e.f109081b);
    }

    @Override
    public int getDimension() {
        return this.f109080a.getDimension() * this.f109081b.a();
    }

    public int hashCode() {
        return this.f109080a.hashCode() ^ k.h(this.f109081b.hashCode(), 16);
    }
}
