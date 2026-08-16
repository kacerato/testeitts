package com.android.tools.r8.internal;

public final class C6026Uh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f44839b;

    public C6026Uh0() {
        this.f44839b = "";
        C6083Vh0 c6083Vh0 = C6083Vh0.f45124d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6026Uh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6083Vh0 c6083Vh0 = null;
        try {
            try {
                C6083Vh0.f45125e.getClass();
                a(new C6083Vh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6083Vh0 c6083Vh02 = (C6083Vh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6083Vh0 = c6083Vh02;
                    if (c6083Vh0 != null) {
                        a(c6083Vh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6083Vh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6026Uh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6083Vh0 m1181buildPartial() {
        C6083Vh0 c6083Vh0 = new C6083Vh0(this);
        c6083Vh0.f45126b = this.f44839b;
        onBuilt();
        return c6083Vh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6083Vh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6026Uh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6083Vh0.f45124d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53259Y;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53261Z.a(C6083Vh0.class, C6026Uh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6026Uh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6026Uh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6026Uh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6083Vh0.f45124d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6026Uh0) super.setUnknownFields(c9002pv0);
    }

    public C6026Uh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f44839b = "";
        C6083Vh0 c6083Vh0 = C6083Vh0.f45124d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C6083Vh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6083Vh0) {
            return a((C6083Vh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6083Vh0) {
            return a((C6083Vh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C6026Uh0 a(C6083Vh0 c6083Vh0) {
        if (c6083Vh0 == C6083Vh0.f45124d) {
            return this;
        }
        String str = c6083Vh0.f45126b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c6083Vh0.f45126b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f44839b = c6083Vh0.f45126b;
            onChanged();
        }
        onChanged();
        return this;
    }
}
