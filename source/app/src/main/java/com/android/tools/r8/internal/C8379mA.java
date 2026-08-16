package com.android.tools.r8.internal;

public final class C8379mA implements InterfaceC8546nA {

    public final InterfaceC8212lA f50229a;

    public C8379mA(InterfaceC8212lA interfaceC8212lA) {
        this.f50229a = interfaceC8212lA;
    }

    @Override
    public final void a(boolean z10) {
        ((F) this.f50229a).a(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void a(int i10) {
        this.f50229a.a(i10);
    }

    @Override
    public final void a(float f10) {
        F f11 = (F) this.f50229a;
        f11.getClass();
        f11.a(Float.floatToRawIntBits(f10));
    }

    @Override
    public final void a(long j10) {
        this.f50229a.a(j10);
    }

    @Override
    public final void a(double d10) {
        F f10 = (F) this.f50229a;
        f10.getClass();
        f10.a(Double.doubleToRawLongBits(d10));
    }

    @Override
    public final void a(byte[] bArr) {
        this.f50229a.a(bArr);
    }

    @Override
    public final String a() {
        return this.f50229a.a().toString();
    }
}
