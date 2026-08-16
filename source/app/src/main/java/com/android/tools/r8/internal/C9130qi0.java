package com.android.tools.r8.internal;

public final class C9130qi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public AbstractC8373m8 f51859b;

    public C9130qi0() {
        this.f51859b = AbstractC8373m8.f50204c;
        C9296ri0 c9296ri0 = C9296ri0.f52111d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9130qi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9296ri0 c9296ri0 = null;
        try {
            try {
                C9296ri0.f52112e.getClass();
                a(new C9296ri0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9296ri0 c9296ri02 = (C9296ri0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9296ri0 = c9296ri02;
                    if (c9296ri0 != null) {
                        a(c9296ri0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9296ri0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9130qi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C9296ri0 m1181buildPartial() {
        C9296ri0 c9296ri0 = new C9296ri0(this);
        c9296ri0.f52113b = this.f51859b;
        onBuilt();
        return c9296ri0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9296ri0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9130qi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9296ri0.f52111d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53262a;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53264b.a(C9296ri0.class, C9130qi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9130qi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9130qi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9130qi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9296ri0.f52111d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9130qi0) super.setUnknownFields(c9002pv0);
    }

    public C9130qi0(C7011dz c7011dz) {
        super(c7011dz);
        this.f51859b = AbstractC8373m8.f50204c;
        C9296ri0 c9296ri0 = C9296ri0.f52111d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C9296ri0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9296ri0) {
            return a((C9296ri0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9296ri0) {
            return a((C9296ri0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C9130qi0 a(C9296ri0 c9296ri0) {
        if (c9296ri0 == C9296ri0.f52111d) {
            return this;
        }
        AbstractC8373m8 abstractC8373m8 = c9296ri0.f52113b;
        if (abstractC8373m8 != AbstractC8373m8.f50204c) {
            abstractC8373m8.getClass();
            this.f51859b = abstractC8373m8;
            onChanged();
        }
        onChanged();
        return this;
    }
}
