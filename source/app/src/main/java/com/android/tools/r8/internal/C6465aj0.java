package com.android.tools.r8.internal;

public final class C6465aj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public long f46594b;

    public long f46595c;

    public C6465aj0() {
        C6632bj0 c6632bj0 = C6632bj0.f46846e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6465aj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6632bj0 c6632bj0 = null;
        try {
            try {
                C6632bj0.f46847f.getClass();
                a(new C6632bj0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6632bj0 c6632bj02 = (C6632bj0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6632bj0 = c6632bj02;
                    if (c6632bj0 != null) {
                        a(c6632bj0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6632bj0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6465aj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C6632bj0 c6632bj0 = new C6632bj0(this);
        c6632bj0.f46848b = this.f46594b;
        c6632bj0.f46849c = this.f46595c;
        onBuilt();
        if (c6632bj0.isInitialized()) {
            return c6632bj0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c6632bj0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C6632bj0 c6632bj0 = new C6632bj0(this);
        c6632bj0.f46848b = this.f46594b;
        c6632bj0.f46849c = this.f46595c;
        onBuilt();
        return c6632bj0;
    }

    public final Object clone() {
        return (C6465aj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6632bj0.f46846e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53256W0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53258X0.a(C6632bj0.class, C6465aj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6465aj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6465aj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6465aj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6632bj0.f46846e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6465aj0) super.setUnknownFields(c9002pv0);
    }

    public C6465aj0(C7011dz c7011dz) {
        super(c7011dz);
        C6632bj0 c6632bj0 = C6632bj0.f46846e;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6632bj0) {
            return a((C6632bj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C6632bj0 c6632bj0 = new C6632bj0(this);
        c6632bj0.f46848b = this.f46594b;
        c6632bj0.f46849c = this.f46595c;
        onBuilt();
        if (c6632bj0.isInitialized()) {
            return c6632bj0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c6632bj0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6632bj0) {
            return a((C6632bj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C6465aj0 a(C6632bj0 c6632bj0) {
        if (c6632bj0 == C6632bj0.f46846e) {
            return this;
        }
        long j10 = c6632bj0.f46848b;
        if (j10 != 0) {
            this.f46594b = j10;
            onChanged();
        }
        long j11 = c6632bj0.f46849c;
        if (j11 != 0) {
            this.f46595c = j11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
