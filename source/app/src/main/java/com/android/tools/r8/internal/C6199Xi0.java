package com.android.tools.r8.internal;

public final class C6199Xi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f45807b;

    public C6199Xi0() {
        C6256Yi0 c6256Yi0 = C6256Yi0.f46066d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6199Xi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6256Yi0 c6256Yi0 = null;
        try {
            try {
                C6256Yi0.f46067e.getClass();
                a(new C6256Yi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6256Yi0 c6256Yi02 = (C6256Yi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6256Yi0 = c6256Yi02;
                    if (c6256Yi0 != null) {
                        a(c6256Yi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6256Yi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6199Xi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6256Yi0 m1181buildPartial() {
        C6256Yi0 c6256Yi0 = new C6256Yi0(this);
        c6256Yi0.f46068b = this.f45807b;
        onBuilt();
        return c6256Yi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6256Yi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6199Xi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6256Yi0.f46066d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53294q;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53296r.a(C6256Yi0.class, C6199Xi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6199Xi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6199Xi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6199Xi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6256Yi0.f46066d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6199Xi0) super.setUnknownFields(c9002pv0);
    }

    public C6199Xi0(C7011dz c7011dz) {
        super(c7011dz);
        C6256Yi0 c6256Yi0 = C6256Yi0.f46066d;
    }

    @Override
    public final InterfaceC8095kW build() {
        C6256Yi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6256Yi0) {
            return a((C6256Yi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6256Yi0) {
            return a((C6256Yi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6199Xi0 a(C6256Yi0 c6256Yi0) {
        if (c6256Yi0 == C6256Yi0.f46066d) {
            return this;
        }
        int i10 = c6256Yi0.f46068b;
        if (i10 != 0) {
            this.f45807b = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
