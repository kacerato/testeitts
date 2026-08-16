package com.android.tools.r8.internal;

public final class C7128ei0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f47756b;

    public C7795ii0 f47757c;

    public C7128ei0() {
        C7295fi0 c7295fi0 = C7295fi0.f48069e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7128ei0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7295fi0 c7295fi0 = null;
        try {
            try {
                C7295fi0.f48070f.getClass();
                a(new C7295fi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7295fi0 c7295fi02 = (C7295fi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7295fi0 = c7295fi02;
                    if (c7295fi0 != null) {
                        a(c7295fi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7295fi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7128ei0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C7295fi0 m1181buildPartial() {
        C7295fi0 c7295fi0 = new C7295fi0(this);
        c7295fi0.f48071b = this.f47756b;
        c7295fi0.f48072c = this.f47757c;
        onBuilt();
        return c7295fi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7295fi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7128ei0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7295fi0.f48069e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53270e;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53272f.a(C7295fi0.class, C7128ei0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7128ei0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7128ei0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7128ei0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7295fi0.f48069e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7128ei0) super.setUnknownFields(c9002pv0);
    }

    public C7128ei0(C7011dz c7011dz) {
        super(c7011dz);
        C7295fi0 c7295fi0 = C7295fi0.f48069e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C7295fi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7295fi0) {
            return a((C7295fi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7295fi0) {
            return a((C7295fi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C7128ei0 a(C7295fi0 c7295fi0) {
        if (c7295fi0 == C7295fi0.f48069e) {
            return this;
        }
        int i10 = c7295fi0.f48071b;
        if (i10 != 0) {
            this.f47756b = i10;
            onChanged();
        }
        C7795ii0 c7795ii0 = c7295fi0.f48072c;
        if (c7795ii0 != null) {
            C7795ii0 c7795ii02 = this.f47757c;
            if (c7795ii02 != null) {
                this.f47757c = C7795ii0.f49025e.toBuilder().a(c7795ii02).a(c7795ii0).m1181buildPartial();
            } else {
                this.f47757c = c7795ii0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
