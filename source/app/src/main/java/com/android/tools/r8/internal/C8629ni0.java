package com.android.tools.r8.internal;

public final class C8629ni0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f51038b;

    public C8629ni0() {
        this.f51038b = "";
        C8796oi0 c8796oi0 = C8796oi0.f51321d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8629ni0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8796oi0 c8796oi0 = null;
        try {
            try {
                C8796oi0.f51322e.getClass();
                a(new C8796oi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8796oi0 c8796oi02 = (C8796oi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8796oi0 = c8796oi02;
                    if (c8796oi0 != null) {
                        a(c8796oi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8796oi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8629ni0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C8796oi0 m1181buildPartial() {
        C8796oi0 c8796oi0 = new C8796oi0(this);
        c8796oi0.f51323b = this.f51038b;
        onBuilt();
        return c8796oi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8796oi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8629ni0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8796oi0.f51321d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53255W;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53257X.a(C8796oi0.class, C8629ni0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8629ni0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8629ni0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8629ni0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8796oi0.f51321d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8629ni0) super.setUnknownFields(c9002pv0);
    }

    public C8629ni0(C7011dz c7011dz) {
        super(c7011dz);
        this.f51038b = "";
        C8796oi0 c8796oi0 = C8796oi0.f51321d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C8796oi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8796oi0) {
            return a((C8796oi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8796oi0) {
            return a((C8796oi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8629ni0 a(C8796oi0 c8796oi0) {
        if (c8796oi0 == C8796oi0.f51321d) {
            return this;
        }
        String str = c8796oi0.f51323b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c8796oi0.f51323b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f51038b = c8796oi0.f51323b;
            onChanged();
        }
        onChanged();
        return this;
    }
}
