package com.android.tools.r8.internal;

public final class C5794Qh0 extends AbstractC7345fz implements InterfaceC8596nW {
    public C5794Qh0() {
        C5852Rh0 c5852Rh0 = C5852Rh0.f43965c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5794Qh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5852Rh0 c5852Rh0 = null;
        try {
            try {
                C5852Rh0.f43966d.getClass();
                a(new C5852Rh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5852Rh0 c5852Rh02 = (C5852Rh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5852Rh0 = c5852Rh02;
                    if (c5852Rh0 != null) {
                        a(c5852Rh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5852Rh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5794Qh0) addRepeatedField(c5685Ol, obj);
    }

    public final C5852Rh0 b() {
        C5852Rh0 c5852Rh0 = new C5852Rh0(this);
        onBuilt();
        return c5852Rh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5852Rh0 c5852Rh0 = new C5852Rh0(this);
        onBuilt();
        if (c5852Rh0.isInitialized()) {
            return c5852Rh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5852Rh0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5852Rh0 c5852Rh0 = new C5852Rh0(this);
        onBuilt();
        return c5852Rh0;
    }

    public final Object clone() {
        return (C5794Qh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5852Rh0.f43965c;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53279i0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53281j0.a(C5852Rh0.class, C5794Qh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5794Qh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5794Qh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5794Qh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5852Rh0.f43965c;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5794Qh0) super.setUnknownFields(c9002pv0);
    }

    public C5794Qh0(C7011dz c7011dz) {
        super(c7011dz);
        C5852Rh0 c5852Rh0 = C5852Rh0.f43965c;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5852Rh0) {
            return a((C5852Rh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5852Rh0 c5852Rh0 = new C5852Rh0(this);
        onBuilt();
        if (c5852Rh0.isInitialized()) {
            return c5852Rh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5852Rh0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5852Rh0) {
            return a((C5852Rh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5794Qh0 a(C5852Rh0 c5852Rh0) {
        if (c5852Rh0 == C5852Rh0.f43965c) {
            return this;
        }
        onChanged();
        return this;
    }
}
