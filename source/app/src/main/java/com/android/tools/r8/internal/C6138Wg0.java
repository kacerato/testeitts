package com.android.tools.r8.internal;

public final class C6138Wg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f45504b;

    public C6138Wg0() {
        C6195Xg0 c6195Xg0 = C6195Xg0.f45787d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6138Wg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6195Xg0 c6195Xg0 = null;
        try {
            try {
                C6195Xg0.f45788e.getClass();
                a(new C6195Xg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6195Xg0 c6195Xg02 = (C6195Xg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6195Xg0 = c6195Xg02;
                    if (c6195Xg0 != null) {
                        a(c6195Xg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6195Xg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6138Wg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6195Xg0 m1181buildPartial() {
        C6195Xg0 c6195Xg0 = new C6195Xg0(this);
        c6195Xg0.f45789b = this.f45504b;
        onBuilt();
        return c6195Xg0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6195Xg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6138Wg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6195Xg0.f45787d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53219E;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53221F.a(C6195Xg0.class, C6138Wg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6138Wg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6138Wg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6138Wg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6195Xg0.f45787d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6138Wg0) super.setUnknownFields(c9002pv0);
    }

    public C6138Wg0(C7011dz c7011dz) {
        super(c7011dz);
        C6195Xg0 c6195Xg0 = C6195Xg0.f45787d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C6195Xg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6195Xg0) {
            return a((C6195Xg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6195Xg0) {
            return a((C6195Xg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6138Wg0 a(C6195Xg0 c6195Xg0) {
        if (c6195Xg0 == C6195Xg0.f45787d) {
            return this;
        }
        int i10 = c6195Xg0.f45789b;
        if (i10 != 0) {
            this.f45504b = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
