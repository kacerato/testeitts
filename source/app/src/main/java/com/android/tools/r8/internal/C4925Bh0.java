package com.android.tools.r8.internal;

public final class C4925Bh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f38980b;

    public C4925Bh0() {
        C4983Ch0 c4983Ch0 = C4983Ch0.f39315d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C4925Bh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C4983Ch0 c4983Ch0 = null;
        try {
            try {
                C4983Ch0.f39316e.getClass();
                a(new C4983Ch0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C4983Ch0 c4983Ch02 = (C4983Ch0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c4983Ch0 = c4983Ch02;
                    if (c4983Ch0 != null) {
                        a(c4983Ch0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c4983Ch0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C4925Bh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C4983Ch0 m1181buildPartial() {
        C4983Ch0 c4983Ch0 = new C4983Ch0(this);
        c4983Ch0.f39317b = this.f38980b;
        onBuilt();
        return c4983Ch0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C4983Ch0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C4925Bh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C4983Ch0.f39315d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53286m;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53288n.a(C4983Ch0.class, C4925Bh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C4925Bh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C4925Bh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C4925Bh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C4983Ch0.f39315d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C4925Bh0) super.setUnknownFields(c9002pv0);
    }

    public C4925Bh0(C7011dz c7011dz) {
        super(c7011dz);
        C4983Ch0 c4983Ch0 = C4983Ch0.f39315d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C4983Ch0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C4983Ch0) {
            return a((C4983Ch0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C4983Ch0) {
            return a((C4983Ch0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C4925Bh0 a(C4983Ch0 c4983Ch0) {
        if (c4983Ch0 == C4983Ch0.f39315d) {
            return this;
        }
        int i10 = c4983Ch0.f39317b;
        if (i10 != 0) {
            this.f38980b = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
