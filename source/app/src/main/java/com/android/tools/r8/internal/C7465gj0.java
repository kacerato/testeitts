package com.android.tools.r8.internal;

public final class C7465gj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f48341b;

    public C7295fi0 f48342c;

    public String f48343d;

    public boolean f48344e;

    public C7465gj0() {
        this.f48341b = 0;
        this.f48343d = "";
        C7798ij0 c7798ij0 = C7798ij0.f49034g;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7465gj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7798ij0 c7798ij0 = null;
        try {
            try {
                C7798ij0.f49035h.getClass();
                a(new C7798ij0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7798ij0 c7798ij02 = (C7798ij0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7798ij0 = c7798ij02;
                    if (c7798ij0 != null) {
                        a(c7798ij0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7798ij0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7465gj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C7798ij0 m1181buildPartial() {
        C7798ij0 c7798ij0 = new C7798ij0(this);
        c7798ij0.f49036b = this.f48341b;
        c7798ij0.f49037c = this.f48342c;
        c7798ij0.f49038d = this.f48343d;
        c7798ij0.f49039e = this.f48344e;
        onBuilt();
        return c7798ij0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C7798ij0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7465gj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7798ij0.f49034g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53302u;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53304v.a(C7798ij0.class, C7465gj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7465gj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7465gj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7465gj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7798ij0.f49034g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7465gj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7798ij0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7798ij0) {
            return a((C7798ij0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C7465gj0(C7011dz c7011dz) {
        super(c7011dz);
        this.f48341b = 0;
        this.f48343d = "";
        C7798ij0 c7798ij0 = C7798ij0.f49034g;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7798ij0) {
            return a((C7798ij0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C7465gj0 a(C7798ij0 c7798ij0) {
        if (c7798ij0 == C7798ij0.f49034g) {
            return this;
        }
        int i10 = c7798ij0.f49036b;
        if (i10 != 0) {
            this.f48341b = i10;
            onChanged();
        }
        C7295fi0 c7295fi0 = c7798ij0.f49037c;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f48342c;
            if (c7295fi02 != null) {
                this.f48342c = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f48342c = c7295fi0;
            }
            onChanged();
        }
        String str = c7798ij0.f49038d;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c7798ij0.f49038d = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f48343d = c7798ij0.f49038d;
            onChanged();
        }
        boolean z10 = c7798ij0.f49039e;
        if (z10) {
            this.f48344e = z10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
