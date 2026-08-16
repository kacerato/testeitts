package com.android.tools.r8.internal;

public final class C8626nh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f51031b;

    public String f51032c;

    public boolean f51033d;

    public C8626nh0() {
        this.f51031b = "";
        this.f51032c = "";
        C8793oh0 c8793oh0 = C8793oh0.f51315f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8626nh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8793oh0 c8793oh0 = null;
        try {
            try {
                C8793oh0.f51316g.getClass();
                a(new C8793oh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8793oh0 c8793oh02 = (C8793oh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8793oh0 = c8793oh02;
                    if (c8793oh0 != null) {
                        a(c8793oh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8793oh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8626nh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C8793oh0 c8793oh0 = new C8793oh0(this);
        c8793oh0.f51317b = this.f51031b;
        c8793oh0.f51318c = this.f51032c;
        c8793oh0.f51319d = this.f51033d;
        onBuilt();
        if (c8793oh0.isInitialized()) {
            return c8793oh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c8793oh0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C8793oh0 c8793oh0 = new C8793oh0(this);
        c8793oh0.f51317b = this.f51031b;
        c8793oh0.f51318c = this.f51032c;
        c8793oh0.f51319d = this.f51033d;
        onBuilt();
        return c8793oh0;
    }

    public final Object clone() {
        return (C8626nh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8793oh0.f51315f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53244Q0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53246R0.a(C8793oh0.class, C8626nh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8626nh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8626nh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8626nh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8793oh0.f51315f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8626nh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8793oh0) {
            return a((C8793oh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C8626nh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f51031b = "";
        this.f51032c = "";
        C8793oh0 c8793oh0 = C8793oh0.f51315f;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8793oh0) {
            return a((C8793oh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C8793oh0 c8793oh0 = new C8793oh0(this);
        c8793oh0.f51317b = this.f51031b;
        c8793oh0.f51318c = this.f51032c;
        c8793oh0.f51319d = this.f51033d;
        onBuilt();
        if (c8793oh0.isInitialized()) {
            return c8793oh0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c8793oh0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8626nh0 a(C8793oh0 c8793oh0) {
        if (c8793oh0 == C8793oh0.f51315f) {
            return this;
        }
        String str = c8793oh0.f51317b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c8793oh0.f51317b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f51031b = c8793oh0.f51317b;
            onChanged();
        }
        String str3 = c8793oh0.f51318c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            c8793oh0.f51318c = c11;
            str4 = c11;
        }
        if (!str4.isEmpty()) {
            this.f51032c = c8793oh0.f51318c;
            onChanged();
        }
        boolean z10 = c8793oh0.f51319d;
        if (z10) {
            this.f51033d = z10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
