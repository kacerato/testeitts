package com.android.tools.r8.internal;

public final class C8128ki0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f49731b;

    public int f49732c;

    public C8128ki0() {
        C8295li0 c8295li0 = C8295li0.f50069e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8128ki0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8295li0 c8295li0 = null;
        try {
            try {
                C8295li0.f50070f.getClass();
                a(new C8295li0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8295li0 c8295li02 = (C8295li0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8295li0 = c8295li02;
                    if (c8295li0 != null) {
                        a(c8295li0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8295li0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8128ki0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C8295li0 m1181buildPartial() {
        C8295li0 c8295li0 = new C8295li0(this);
        c8295li0.f50071b = this.f49731b;
        c8295li0.f50072c = this.f49732c;
        onBuilt();
        return c8295li0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8295li0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8128ki0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8295li0.f50069e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53215C;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53217D.a(C8295li0.class, C8128ki0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8128ki0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8128ki0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8128ki0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8295li0.f50069e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8128ki0) super.setUnknownFields(c9002pv0);
    }

    public C8128ki0(C7011dz c7011dz) {
        super(c7011dz);
        C8295li0 c8295li0 = C8295li0.f50069e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C8295li0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8295li0) {
            return a((C8295li0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8295li0) {
            return a((C8295li0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C8128ki0 a(C8295li0 c8295li0) {
        if (c8295li0 == C8295li0.f50069e) {
            return this;
        }
        C7295fi0 c7295fi0 = c8295li0.f50071b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f49731b;
            if (c7295fi02 != null) {
                this.f49731b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f49731b = c7295fi0;
            }
            onChanged();
        }
        int i10 = c8295li0.f50072c;
        if (i10 != 0) {
            this.f49732c = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
