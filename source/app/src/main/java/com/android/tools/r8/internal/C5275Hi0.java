package com.android.tools.r8.internal;

public final class C5275Hi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f40843b;

    public String f40844c;

    public C6311Zh0 f40845d;

    public C5275Hi0() {
        this.f40844c = "";
        C5333Ii0 c5333Ii0 = C5333Ii0.f41181f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5275Hi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5333Ii0 c5333Ii0 = null;
        try {
            try {
                C5333Ii0.f41182g.getClass();
                a(new C5333Ii0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5333Ii0 c5333Ii02 = (C5333Ii0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5333Ii0 = c5333Ii02;
                    if (c5333Ii0 != null) {
                        a(c5333Ii0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5333Ii0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5275Hi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5333Ii0 c5333Ii0 = new C5333Ii0(this);
        c5333Ii0.f41183b = this.f40843b;
        c5333Ii0.f41184c = this.f40844c;
        c5333Ii0.f41185d = this.f40845d;
        onBuilt();
        if (c5333Ii0.isInitialized()) {
            return c5333Ii0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5333Ii0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5333Ii0 c5333Ii0 = new C5333Ii0(this);
        c5333Ii0.f41183b = this.f40843b;
        c5333Ii0.f41184c = this.f40844c;
        c5333Ii0.f41185d = this.f40845d;
        onBuilt();
        return c5333Ii0;
    }

    public final Object clone() {
        return (C5275Hi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5333Ii0.f41181f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53307w0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53309x0.a(C5333Ii0.class, C5275Hi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5275Hi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5275Hi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5275Hi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5333Ii0.f41181f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5275Hi0) super.setUnknownFields(c9002pv0);
    }

    public C5275Hi0(C7011dz c7011dz) {
        super(c7011dz);
        this.f40844c = "";
        C5333Ii0 c5333Ii0 = C5333Ii0.f41181f;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5333Ii0) {
            return a((C5333Ii0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5333Ii0) {
            return a((C5333Ii0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5333Ii0 c5333Ii0 = new C5333Ii0(this);
        c5333Ii0.f41183b = this.f40843b;
        c5333Ii0.f41184c = this.f40844c;
        c5333Ii0.f41185d = this.f40845d;
        onBuilt();
        if (c5333Ii0.isInitialized()) {
            return c5333Ii0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5333Ii0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5275Hi0 a(C5333Ii0 c5333Ii0) {
        if (c5333Ii0 == C5333Ii0.f41181f) {
            return this;
        }
        C7295fi0 c7295fi0 = c5333Ii0.f41183b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f40843b;
            if (c7295fi02 != null) {
                this.f40843b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f40843b = c7295fi0;
            }
            onChanged();
        }
        String str = c5333Ii0.f41184c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5333Ii0.f41184c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f40844c = c5333Ii0.f41184c;
            onChanged();
        }
        C6311Zh0 c6311Zh0 = c5333Ii0.f41185d;
        if (c6311Zh0 != null) {
            C6311Zh0 c6311Zh02 = this.f40845d;
            if (c6311Zh02 != null) {
                this.f40845d = C6311Zh0.f46320j.toBuilder().a(c6311Zh02).a(c6311Zh0).m1181buildPartial();
            } else {
                this.f40845d = c6311Zh0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
