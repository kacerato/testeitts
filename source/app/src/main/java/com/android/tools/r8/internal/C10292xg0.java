package com.android.tools.r8.internal;

public final class C10292xg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f53806b;

    public String f53807c;

    public C7626hh0 f53808d;

    public C10292xg0() {
        this.f53807c = "";
        C10459yg0 c10459yg0 = C10459yg0.f54104f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10292xg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10459yg0 c10459yg0 = null;
        try {
            try {
                C10459yg0.f54105g.getClass();
                a(new C10459yg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10459yg0 c10459yg02 = (C10459yg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10459yg0 = c10459yg02;
                    if (c10459yg0 != null) {
                        a(c10459yg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10459yg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C10292xg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C10459yg0 c10459yg0 = new C10459yg0(this);
        c10459yg0.f54106b = this.f53806b;
        c10459yg0.f54107c = this.f53807c;
        c10459yg0.f54108d = this.f53808d;
        onBuilt();
        if (c10459yg0.isInitialized()) {
            return c10459yg0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c10459yg0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C10459yg0 c10459yg0 = new C10459yg0(this);
        c10459yg0.f54106b = this.f53806b;
        c10459yg0.f54107c = this.f53807c;
        c10459yg0.f54108d = this.f53808d;
        onBuilt();
        return c10459yg0;
    }

    public final Object clone() {
        return (C10292xg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10459yg0.f54104f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53212A0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53214B0.a(C10459yg0.class, C10292xg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C10292xg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C10292xg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C10292xg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10459yg0.f54104f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C10292xg0) super.setUnknownFields(c9002pv0);
    }

    public C10292xg0(C7011dz c7011dz) {
        super(c7011dz);
        this.f53807c = "";
        C10459yg0 c10459yg0 = C10459yg0.f54104f;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10459yg0) {
            return a((C10459yg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10459yg0) {
            return a((C10459yg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C10459yg0 c10459yg0 = new C10459yg0(this);
        c10459yg0.f54106b = this.f53806b;
        c10459yg0.f54107c = this.f53807c;
        c10459yg0.f54108d = this.f53808d;
        onBuilt();
        if (c10459yg0.isInitialized()) {
            return c10459yg0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c10459yg0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C10292xg0 a(C10459yg0 c10459yg0) {
        if (c10459yg0 == C10459yg0.f54104f) {
            return this;
        }
        C7295fi0 c7295fi0 = c10459yg0.f54106b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f53806b;
            if (c7295fi02 != null) {
                this.f53806b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f53806b = c7295fi0;
            }
            onChanged();
        }
        String str = c10459yg0.f54107c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c10459yg0.f54107c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f53807c = c10459yg0.f54107c;
            onChanged();
        }
        C7626hh0 c7626hh0 = c10459yg0.f54108d;
        if (c7626hh0 != null) {
            C7626hh0 c7626hh02 = this.f53808d;
            if (c7626hh02 != null) {
                this.f53808d = C7626hh0.f48676e.toBuilder().a(c7626hh02).a(c7626hh0).m1181buildPartial();
            } else {
                this.f53808d = c7626hh0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
