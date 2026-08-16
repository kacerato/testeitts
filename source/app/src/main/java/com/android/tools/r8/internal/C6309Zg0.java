package com.android.tools.r8.internal;

public final class C6309Zg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f46313b;

    public int f46314c;

    public C6309Zg0() {
        this.f46313b = "";
        this.f46314c = 0;
        C6626bh0 c6626bh0 = C6626bh0.f46827e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6309Zg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6626bh0 c6626bh0 = null;
        try {
            try {
                C6626bh0.f46828f.getClass();
                a(new C6626bh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6626bh0 c6626bh02 = (C6626bh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6626bh0 = c6626bh02;
                    if (c6626bh0 != null) {
                        a(c6626bh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6626bh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6309Zg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6626bh0 m1181buildPartial() {
        C6626bh0 c6626bh0 = new C6626bh0(this);
        c6626bh0.f46829b = this.f46313b;
        c6626bh0.f46830c = this.f46314c;
        onBuilt();
        return c6626bh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6626bh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6309Zg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6626bh0.f46827e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53271e0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53273f0.a(C6626bh0.class, C6309Zg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6309Zg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6309Zg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6309Zg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6626bh0.f46827e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6309Zg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6626bh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6626bh0) {
            return a((C6626bh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C6309Zg0(C7011dz c7011dz) {
        super(c7011dz);
        this.f46313b = "";
        this.f46314c = 0;
        C6626bh0 c6626bh0 = C6626bh0.f46827e;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6626bh0) {
            return a((C6626bh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6309Zg0 a(C6626bh0 c6626bh0) {
        if (c6626bh0 == C6626bh0.f46827e) {
            return this;
        }
        if (!c6626bh0.a().isEmpty()) {
            this.f46313b = c6626bh0.f46829b;
            onChanged();
        }
        int i10 = c6626bh0.f46830c;
        if (i10 != 0) {
            this.f46314c = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
