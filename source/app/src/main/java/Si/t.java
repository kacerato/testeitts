package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Ii.V;
import Xi.C3360o0;
import Xi.K0;

public class t implements I {

    public static final int f23503b = 256;

    public static final int f23504c = 512;

    public static final int f23505d = 1024;

    public V f23506a;

    public t(int i10, int i11) {
        this.f23506a = new V(i10, i11);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        K0 a10;
        if (interfaceC2379k instanceof K0) {
            a10 = (K0) interfaceC2379k;
        } else {
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("Invalid parameter passed to Skein MAC init - " + interfaceC2379k.getClass().getName());
            }
            a10 = new K0.b().c(((C3360o0) interfaceC2379k).b()).a();
        }
        if (a10.b() == null) {
            throw new IllegalArgumentException("Skein MAC requires a key parameter.");
        }
        this.f23506a.i(a10);
    }

    @Override
    public String b() {
        return "Skein-MAC-" + (this.f23506a.f() * 8) + "-" + (this.f23506a.h() * 8);
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return this.f23506a.e(bArr, i10);
    }

    @Override
    public int d() {
        return this.f23506a.h();
    }

    @Override
    public void reset() {
        this.f23506a.n();
    }

    @Override
    public void update(byte b10) {
        this.f23506a.s(b10);
    }

    public t(t tVar) {
        this.f23506a = new V(tVar.f23506a);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f23506a.t(bArr, i10, i11);
    }
}
