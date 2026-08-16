package Ii;

import Bi.InterfaceC2392y;
import fm.C13258b;

public class E implements InterfaceC2392y {

    public final String f9483a;

    public final C13258b f9484b;

    public E(InterfaceC2392y interfaceC2392y) {
        this.f9483a = interfaceC2392y.b();
        this.f9484b = new C13258b(interfaceC2392y.f());
    }

    public static E a(InterfaceC2392y interfaceC2392y) {
        return new E(interfaceC2392y);
    }

    @Override
    public String b() {
        return this.f9483a;
    }

    @Override
    public int c(byte[] bArr, int i10) {
        try {
            if (f() == this.f9484b.e()) {
                return this.f9484b.a(bArr, i10);
            }
            throw new IllegalStateException("Incorrect prehash size");
        } finally {
            reset();
        }
    }

    @Override
    public int f() {
        return this.f9484b.c();
    }

    @Override
    public void reset() {
        this.f9484b.d();
    }

    @Override
    public void update(byte b10) {
        this.f9484b.write(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.f9484b.write(bArr, i10, i11);
    }
}
