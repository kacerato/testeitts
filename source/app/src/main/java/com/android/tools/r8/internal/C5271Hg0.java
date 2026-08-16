package com.android.tools.r8.internal;

public final class C5271Hg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public boolean f40835b;

    public C5271Hg0() {
        C5329Ig0 c5329Ig0 = C5329Ig0.f41166d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5271Hg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5329Ig0 c5329Ig0 = null;
        try {
            try {
                C5329Ig0.f41167e.getClass();
                a(new C5329Ig0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5329Ig0 c5329Ig02 = (C5329Ig0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5329Ig0 = c5329Ig02;
                    if (c5329Ig0 != null) {
                        a(c5329Ig0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5329Ig0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5271Hg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5329Ig0 m1181buildPartial() {
        C5329Ig0 c5329Ig0 = new C5329Ig0(this);
        c5329Ig0.f41168b = this.f40835b;
        onBuilt();
        return c5329Ig0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5329Ig0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5271Hg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5329Ig0.f41166d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53243Q;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53245R.a(C5329Ig0.class, C5271Hg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5271Hg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5271Hg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5271Hg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5329Ig0.f41166d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5271Hg0) super.setUnknownFields(c9002pv0);
    }

    public C5271Hg0(C7011dz c7011dz) {
        super(c7011dz);
        C5329Ig0 c5329Ig0 = C5329Ig0.f41166d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5329Ig0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5329Ig0) {
            return a((C5329Ig0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5329Ig0) {
            return a((C5329Ig0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5271Hg0 a(C5329Ig0 c5329Ig0) {
        if (c5329Ig0 == C5329Ig0.f41166d) {
            return this;
        }
        boolean z10 = c5329Ig0.f41168b;
        if (z10) {
            this.f40835b = z10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
