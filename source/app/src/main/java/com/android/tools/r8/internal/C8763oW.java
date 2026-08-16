package com.android.tools.r8.internal;

public final class C8763oW implements InterfaceC9097qW {

    public final I0 f51266a;

    public C8763oW(I0 i02) {
        this.f51266a = i02;
    }

    @Override
    public final int a() {
        return 1;
    }

    @Override
    public final InterfaceC9097qW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        this.f51266a.addRepeatedField(c5685Ol, obj);
        return this;
    }

    @Override
    public final InterfaceC7262fW b(AbstractC4916Be abstractC4916Be, C10670zv c10670zv, C5685Ol c5685Ol) {
        InterfaceC7262fW interfaceC7262fW;
        InterfaceC7095eW newBuilderForField = this.f51266a.newBuilderForField(c5685Ol);
        if (!c5685Ol.k() && (interfaceC7262fW = (InterfaceC7262fW) this.f51266a.getField(c5685Ol)) != null) {
            newBuilderForField.mergeFrom(interfaceC7262fW);
        }
        abstractC4916Be.a(c5685Ol.f43017c.f39995d, newBuilderForField, c10670zv);
        return newBuilderForField.m1181buildPartial();
    }

    @Override
    public final InterfaceC9097qW setField(C5685Ol c5685Ol, Object obj) {
        this.f51266a.setField(c5685Ol, obj);
        return this;
    }

    @Override
    public final void a(C10002vv c10002vv, C4990Cl c4990Cl, int i10) {
        if (c10002vv.f53374d.get(new C9835uv(c4990Cl, i10)) != null) {
            throw new ClassCastException();
        }
    }

    @Override
    public final InterfaceC7262fW a(AbstractC4916Be abstractC4916Be, C10670zv c10670zv, C5685Ol c5685Ol) {
        InterfaceC7262fW interfaceC7262fW;
        InterfaceC7095eW newBuilderForField = this.f51266a.newBuilderForField(c5685Ol);
        if (!c5685Ol.k() && (interfaceC7262fW = (InterfaceC7262fW) this.f51266a.getField(c5685Ol)) != null) {
            newBuilderForField.mergeFrom(interfaceC7262fW);
        }
        abstractC4916Be.a(newBuilderForField, c10670zv);
        return newBuilderForField.m1181buildPartial();
    }

    @Override
    public final int a(C5685Ol c5685Ol) {
        if (c5685Ol.l()) {
            return 2;
        }
        c5685Ol.k();
        return 1;
    }
}
