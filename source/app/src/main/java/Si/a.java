package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Ii.C2650h;
import Xi.C3337d;
import Xi.C3360o0;

public class a implements I {

    public final C2650h f23375a;

    public a(C2650h c2650h) {
        this.f23375a = c2650h;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        InterfaceC2379k e10 = interfaceC2379k instanceof C3360o0 ? C3337d.e(((C3360o0) interfaceC2379k).b()) : interfaceC2379k;
        if (!(e10 instanceof C3337d)) {
            throw new IllegalArgumentException("Invalid parameter passed to Blake3Mac init - " + interfaceC2379k.getClass().getName());
        }
        C3337d c3337d = (C3337d) e10;
        if (c3337d.d() == null) {
            throw new IllegalArgumentException("Blake3Mac requires a key parameter.");
        }
        this.f23375a.o(c3337d);
    }

    @Override
    public String b() {
        return this.f23375a.b() + "Mac";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return this.f23375a.c(bArr, i10);
    }

    @Override
    public int d() {
        return this.f23375a.f();
    }

    @Override
    public void reset() {
        this.f23375a.reset();
    }

    @Override
    public void update(byte b10) {
        this.f23375a.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f23375a.update(bArr, i10, i11);
    }
}
