package com.android.tools.r8.internal;

public final class C9133qj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f51863b;

    public String f51864c;

    public C7795ii0 f51865d;

    public C9133qj0() {
        this.f51863b = "";
        this.f51864c = "";
        C9299rj0 c9299rj0 = C9299rj0.f52116f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9133qj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9299rj0 c9299rj0 = null;
        try {
            try {
                C9299rj0.f52117g.getClass();
                a(new C9299rj0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9299rj0 c9299rj02 = (C9299rj0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9299rj0 = c9299rj02;
                    if (c9299rj0 != null) {
                        a(c9299rj0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9299rj0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9133qj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C9299rj0 c9299rj0 = new C9299rj0(this);
        c9299rj0.f52118b = this.f51863b;
        c9299rj0.f52119c = this.f51864c;
        c9299rj0.f52120d = this.f51865d;
        onBuilt();
        if (c9299rj0.isInitialized()) {
            return c9299rj0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c9299rj0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C9299rj0 c9299rj0 = new C9299rj0(this);
        c9299rj0.f52118b = this.f51863b;
        c9299rj0.f52119c = this.f51864c;
        c9299rj0.f52120d = this.f51865d;
        onBuilt();
        return c9299rj0;
    }

    public final Object clone() {
        return (C9133qj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9299rj0.f52116f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53232K0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53234L0.a(C9299rj0.class, C9133qj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9133qj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9133qj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9133qj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9299rj0.f52116f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9133qj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9299rj0) {
            return a((C9299rj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C9133qj0(C7011dz c7011dz) {
        super(c7011dz);
        this.f51863b = "";
        this.f51864c = "";
        C9299rj0 c9299rj0 = C9299rj0.f52116f;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9299rj0) {
            return a((C9299rj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C9299rj0 c9299rj0 = new C9299rj0(this);
        c9299rj0.f52118b = this.f51863b;
        c9299rj0.f52119c = this.f51864c;
        c9299rj0.f52120d = this.f51865d;
        onBuilt();
        if (c9299rj0.isInitialized()) {
            return c9299rj0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c9299rj0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9133qj0 a(C9299rj0 c9299rj0) {
        if (c9299rj0 == C9299rj0.f52116f) {
            return this;
        }
        String str = c9299rj0.f52118b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c9299rj0.f52118b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f51863b = c9299rj0.f52118b;
            onChanged();
        }
        String str3 = c9299rj0.f52119c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            c9299rj0.f52119c = c11;
            str4 = c11;
        }
        if (!str4.isEmpty()) {
            this.f51864c = c9299rj0.f52119c;
            onChanged();
        }
        C7795ii0 c7795ii0 = c9299rj0.f52120d;
        if (c7795ii0 != null) {
            C7795ii0 c7795ii02 = this.f51865d;
            if (c7795ii02 != null) {
                this.f51865d = C7795ii0.f49025e.toBuilder().a(c7795ii02).a(c7795ii0).m1181buildPartial();
            } else {
                this.f51865d = c7795ii0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
