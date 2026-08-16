package com.android.tools.r8.internal;

import java.nio.charset.Charset;

public final class C5109Em0 implements J0 {

    public J0 f40013a;

    public I0 f40014b;

    public K0 f40015c;

    public boolean f40016d;

    public C5109Em0(K0 k02, J0 j02, boolean z10) {
        Charset charset = YI.f45964a;
        k02.getClass();
        this.f40015c = k02;
        this.f40013a = j02;
        this.f40016d = z10;
    }

    public final void a(K0 k02) {
        if (this.f40014b == null) {
            InterfaceC7262fW interfaceC7262fW = this.f40015c;
            if (interfaceC7262fW == interfaceC7262fW.getDefaultInstanceForType()) {
                this.f40015c = k02;
                e();
            }
        }
        c().mergeFrom((InterfaceC7262fW) k02);
        e();
    }

    public final void b(K0 k02) {
        Charset charset = YI.f45964a;
        k02.getClass();
        this.f40015c = k02;
        I0 i02 = this.f40014b;
        if (i02 != null) {
            i02.dispose();
            this.f40014b = null;
        }
        e();
    }

    public final I0 c() {
        if (this.f40014b == null) {
            I0 i02 = (I0) this.f40015c.newBuilderForType(this);
            this.f40014b = i02;
            i02.mergeFrom((InterfaceC7262fW) this.f40015c);
            this.f40014b.markClean();
        }
        return this.f40014b;
    }

    public final K0 d() {
        if (this.f40015c == null) {
            this.f40015c = (K0) this.f40014b.m1181buildPartial();
        }
        return this.f40015c;
    }

    public final void e() {
        J0 j02;
        if (this.f40014b != null) {
            this.f40015c = null;
        }
        if (!this.f40016d || (j02 = this.f40013a) == null) {
            return;
        }
        j02.a();
        this.f40016d = false;
    }

    @Override
    public final void a() {
        e();
    }

    public final void b() {
        InterfaceC7262fW defaultInstanceForType;
        K0 k02 = this.f40015c;
        if (k02 != null) {
            defaultInstanceForType = k02.getDefaultInstanceForType();
        } else {
            defaultInstanceForType = this.f40014b.getDefaultInstanceForType();
        }
        this.f40015c = (K0) defaultInstanceForType;
        I0 i02 = this.f40014b;
        if (i02 != null) {
            i02.dispose();
            this.f40014b = null;
        }
        e();
    }
}
