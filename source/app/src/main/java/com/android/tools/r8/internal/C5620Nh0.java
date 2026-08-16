package com.android.tools.r8.internal;

public final class C5620Nh0 extends AbstractC7345fz implements InterfaceC8596nW {
    public C5620Nh0() {
        C5678Oh0 c5678Oh0 = C5678Oh0.f42955c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5620Nh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5678Oh0 c5678Oh0 = null;
        try {
            try {
                C5678Oh0.f42956d.getClass();
                a(new C5678Oh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5678Oh0 c5678Oh02 = (C5678Oh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5678Oh0 = c5678Oh02;
                    if (c5678Oh0 != null) {
                        a(c5678Oh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5678Oh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5620Nh0) addRepeatedField(c5685Ol, obj);
    }

    public final C5678Oh0 b() {
        C5678Oh0 c5678Oh0 = new C5678Oh0(this);
        onBuilt();
        return c5678Oh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5678Oh0 c5678Oh0 = new C5678Oh0(this);
        onBuilt();
        if (c5678Oh0.isInitialized()) {
            return c5678Oh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5678Oh0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5678Oh0 c5678Oh0 = new C5678Oh0(this);
        onBuilt();
        return c5678Oh0;
    }

    public final Object clone() {
        return (C5620Nh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5678Oh0.f42955c;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53283k0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53285l0.a(C5678Oh0.class, C5620Nh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5620Nh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5620Nh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5620Nh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5678Oh0.f42955c;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5620Nh0) super.setUnknownFields(c9002pv0);
    }

    public C5620Nh0(C7011dz c7011dz) {
        super(c7011dz);
        C5678Oh0 c5678Oh0 = C5678Oh0.f42955c;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5678Oh0) {
            return a((C5678Oh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5678Oh0 c5678Oh0 = new C5678Oh0(this);
        onBuilt();
        if (c5678Oh0.isInitialized()) {
            return c5678Oh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5678Oh0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5678Oh0) {
            return a((C5678Oh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5620Nh0 a(C5678Oh0 c5678Oh0) {
        if (c5678Oh0 == C5678Oh0.f42955c) {
            return this;
        }
        onChanged();
        return this;
    }
}
