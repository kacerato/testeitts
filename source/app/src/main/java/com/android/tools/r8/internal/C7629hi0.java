package com.android.tools.r8.internal;

public final class C7629hi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f48682b;

    public int f48683c;

    public C7629hi0() {
        C7795ii0 c7795ii0 = C7795ii0.f49025e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7629hi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7795ii0 c7795ii0 = null;
        try {
            try {
                C7795ii0.f49026f.getClass();
                a(new C7795ii0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7795ii0 c7795ii02 = (C7795ii0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7795ii0 = c7795ii02;
                    if (c7795ii0 != null) {
                        a(c7795ii0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7795ii0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7629hi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C7795ii0 m1181buildPartial() {
        C7795ii0 c7795ii0 = new C7795ii0(this);
        c7795ii0.f49027b = this.f48682b;
        c7795ii0.f49028c = this.f48683c;
        onBuilt();
        return c7795ii0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7795ii0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7629hi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7795ii0.f49025e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53266c;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53268d.a(C7795ii0.class, C7629hi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7629hi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7629hi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7629hi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7795ii0.f49025e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7629hi0) super.setUnknownFields(c9002pv0);
    }

    public C7629hi0(C7011dz c7011dz) {
        super(c7011dz);
        C7795ii0 c7795ii0 = C7795ii0.f49025e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C7795ii0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7795ii0) {
            return a((C7795ii0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7795ii0) {
            return a((C7795ii0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C7629hi0 a(C7795ii0 c7795ii0) {
        if (c7795ii0 == C7795ii0.f49025e) {
            return this;
        }
        int i10 = c7795ii0.f49027b;
        if (i10 != 0) {
            this.f48682b = i10;
            onChanged();
        }
        int i11 = c7795ii0.f49028c;
        if (i11 != 0) {
            this.f48683c = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
