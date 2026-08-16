package com.android.tools.r8.internal;

public final class C5622Ni0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f42672b;

    public int f42673c;

    public int f42674d;

    public C5622Ni0() {
        this.f42672b = "";
        C5680Oi0 c5680Oi0 = C5680Oi0.f42961f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5622Ni0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5680Oi0 c5680Oi0 = null;
        try {
            try {
                C5680Oi0.f42962g.getClass();
                a(new C5680Oi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5680Oi0 c5680Oi02 = (C5680Oi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5680Oi0 = c5680Oi02;
                    if (c5680Oi0 != null) {
                        a(c5680Oi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5680Oi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5622Ni0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5680Oi0 c5680Oi0 = new C5680Oi0(this);
        c5680Oi0.f42963b = this.f42672b;
        c5680Oi0.f42964c = this.f42673c;
        c5680Oi0.f42965d = this.f42674d;
        onBuilt();
        if (c5680Oi0.isInitialized()) {
            return c5680Oi0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5680Oi0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5680Oi0 c5680Oi0 = new C5680Oi0(this);
        c5680Oi0.f42963b = this.f42672b;
        c5680Oi0.f42964c = this.f42673c;
        c5680Oi0.f42965d = this.f42674d;
        onBuilt();
        return c5680Oi0;
    }

    public final Object clone() {
        return (C5622Ni0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5680Oi0.f42961f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53267c0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53269d0.a(C5680Oi0.class, C5622Ni0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5622Ni0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5622Ni0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5622Ni0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5680Oi0.f42961f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5622Ni0) super.setUnknownFields(c9002pv0);
    }

    public C5622Ni0(C7011dz c7011dz) {
        super(c7011dz);
        this.f42672b = "";
        C5680Oi0 c5680Oi0 = C5680Oi0.f42961f;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5680Oi0) {
            return a((C5680Oi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5680Oi0) {
            return a((C5680Oi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5680Oi0 c5680Oi0 = new C5680Oi0(this);
        c5680Oi0.f42963b = this.f42672b;
        c5680Oi0.f42964c = this.f42673c;
        c5680Oi0.f42965d = this.f42674d;
        onBuilt();
        if (c5680Oi0.isInitialized()) {
            return c5680Oi0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5680Oi0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5622Ni0 a(C5680Oi0 c5680Oi0) {
        if (c5680Oi0 == C5680Oi0.f42961f) {
            return this;
        }
        String str = c5680Oi0.f42963b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5680Oi0.f42963b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f42672b = c5680Oi0.f42963b;
            onChanged();
        }
        int i10 = c5680Oi0.f42964c;
        if (i10 != 0) {
            this.f42673c = i10;
            onChanged();
        }
        int i11 = c5680Oi0.f42965d;
        if (i11 != 0) {
            this.f42674d = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
