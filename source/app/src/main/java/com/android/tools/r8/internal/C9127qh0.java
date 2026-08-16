package com.android.tools.r8.internal;

public final class C9127qh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f51852b;

    public C7295fi0 f51853c;

    public String f51854d;

    public C9127qh0() {
        this.f51852b = "";
        this.f51854d = "";
        C9293rh0 c9293rh0 = C9293rh0.f52100f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9127qh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9293rh0 c9293rh0 = null;
        try {
            try {
                C9293rh0.f52101g.getClass();
                a(new C9293rh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9293rh0 c9293rh02 = (C9293rh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9293rh0 = c9293rh02;
                    if (c9293rh0 != null) {
                        a(c9293rh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9293rh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9127qh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C9293rh0 c9293rh0 = new C9293rh0(this);
        c9293rh0.f52102b = this.f51852b;
        c9293rh0.f52103c = this.f51853c;
        c9293rh0.f52104d = this.f51854d;
        onBuilt();
        if (c9293rh0.isInitialized()) {
            return c9293rh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c9293rh0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C9293rh0 c9293rh0 = new C9293rh0(this);
        c9293rh0.f52102b = this.f51852b;
        c9293rh0.f52103c = this.f51853c;
        c9293rh0.f52104d = this.f51854d;
        onBuilt();
        return c9293rh0;
    }

    public final Object clone() {
        return (C9127qh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9293rh0.f52100f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53310y;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53312z.a(C9293rh0.class, C9127qh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9127qh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9127qh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9127qh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9293rh0.f52100f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9127qh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9293rh0) {
            return a((C9293rh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C9127qh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f51852b = "";
        this.f51854d = "";
        C9293rh0 c9293rh0 = C9293rh0.f52100f;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9293rh0) {
            return a((C9293rh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C9293rh0 c9293rh0 = new C9293rh0(this);
        c9293rh0.f52102b = this.f51852b;
        c9293rh0.f52103c = this.f51853c;
        c9293rh0.f52104d = this.f51854d;
        onBuilt();
        if (c9293rh0.isInitialized()) {
            return c9293rh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c9293rh0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9127qh0 a(C9293rh0 c9293rh0) {
        if (c9293rh0 == C9293rh0.f52100f) {
            return this;
        }
        String str = c9293rh0.f52102b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c9293rh0.f52102b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f51852b = c9293rh0.f52102b;
            onChanged();
        }
        C7295fi0 c7295fi0 = c9293rh0.f52103c;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f51853c;
            if (c7295fi02 != null) {
                this.f51853c = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f51853c = c7295fi0;
            }
            onChanged();
        }
        String str3 = c9293rh0.f52104d;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            c9293rh0.f52104d = c11;
            str4 = c11;
        }
        if (!str4.isEmpty()) {
            this.f51854d = c9293rh0.f52104d;
            onChanged();
        }
        onChanged();
        return this;
    }
}
