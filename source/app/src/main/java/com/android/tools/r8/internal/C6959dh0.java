package com.android.tools.r8.internal;

public final class C6959dh0 extends AbstractC7345fz implements InterfaceC8596nW {
    public C6959dh0() {
        C7125eh0 c7125eh0 = C7125eh0.f47751c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6959dh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7125eh0 c7125eh0 = null;
        try {
            try {
                C7125eh0.f47752d.getClass();
                a(new C7125eh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7125eh0 c7125eh02 = (C7125eh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7125eh0 = c7125eh02;
                    if (c7125eh0 != null) {
                        a(c7125eh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7125eh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6959dh0) addRepeatedField(c5685Ol, obj);
    }

    public final C7125eh0 b() {
        C7125eh0 c7125eh0 = new C7125eh0(this);
        onBuilt();
        return c7125eh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7125eh0 c7125eh0 = new C7125eh0(this);
        onBuilt();
        if (c7125eh0.isInitialized()) {
            return c7125eh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c7125eh0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C7125eh0 c7125eh0 = new C7125eh0(this);
        onBuilt();
        return c7125eh0;
    }

    public final Object clone() {
        return (C6959dh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7125eh0.f47751c;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53251U;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53253V.a(C7125eh0.class, C6959dh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6959dh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6959dh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6959dh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7125eh0.f47751c;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6959dh0) super.setUnknownFields(c9002pv0);
    }

    public C6959dh0(C7011dz c7011dz) {
        super(c7011dz);
        C7125eh0 c7125eh0 = C7125eh0.f47751c;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7125eh0) {
            return a((C7125eh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C7125eh0 c7125eh0 = new C7125eh0(this);
        onBuilt();
        if (c7125eh0.isInitialized()) {
            return c7125eh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c7125eh0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7125eh0) {
            return a((C7125eh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6959dh0 a(C7125eh0 c7125eh0) {
        if (c7125eh0 == C7125eh0.f47751c) {
            return this;
        }
        onChanged();
        return this;
    }
}
