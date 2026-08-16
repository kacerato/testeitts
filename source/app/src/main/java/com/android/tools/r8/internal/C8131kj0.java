package com.android.tools.r8.internal;

public final class C8131kj0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f49738b;

    public String f49739c;

    public String f49740d;

    public C7795ii0 f49741e;

    public int f49742f;

    public C7626hh0 f49743g;

    public C8131kj0() {
        this.f49738b = "";
        this.f49739c = "";
        this.f49740d = "";
        C8298lj0 c8298lj0 = C8298lj0.f50075i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8131kj0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8298lj0 c8298lj0 = null;
        try {
            try {
                C8298lj0.f50076j.getClass();
                a(new C8298lj0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8298lj0 c8298lj02 = (C8298lj0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8298lj0 = c8298lj02;
                    if (c8298lj0 != null) {
                        a(c8298lj0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8298lj0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8131kj0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C8298lj0 m1181buildPartial() {
        C8298lj0 c8298lj0 = new C8298lj0(this);
        c8298lj0.f50077b = this.f49738b;
        c8298lj0.f50078c = this.f49739c;
        c8298lj0.f50079d = this.f49740d;
        c8298lj0.f50080e = this.f49741e;
        c8298lj0.f50081f = this.f49742f;
        c8298lj0.f50082g = this.f49743g;
        onBuilt();
        return c8298lj0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C8298lj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8131kj0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8298lj0.f50075i;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53236M0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53238N0.a(C8298lj0.class, C8131kj0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8131kj0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8131kj0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8131kj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8298lj0.f50075i;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8131kj0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8298lj0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8298lj0) {
            return a((C8298lj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C8131kj0(C7011dz c7011dz) {
        super(c7011dz);
        this.f49738b = "";
        this.f49739c = "";
        this.f49740d = "";
        C8298lj0 c8298lj0 = C8298lj0.f50075i;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8298lj0) {
            return a((C8298lj0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8131kj0 a(C8298lj0 c8298lj0) {
        if (c8298lj0 == C8298lj0.f50075i) {
            return this;
        }
        String str = c8298lj0.f50077b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c8298lj0.f50077b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f49738b = c8298lj0.f50077b;
            onChanged();
        }
        if (!c8298lj0.getName().isEmpty()) {
            this.f49739c = c8298lj0.f50078c;
            onChanged();
        }
        if (!c8298lj0.a().isEmpty()) {
            this.f49740d = c8298lj0.f50079d;
            onChanged();
        }
        C7795ii0 c7795ii0 = c8298lj0.f50080e;
        if (c7795ii0 != null) {
            C7795ii0 c7795ii02 = this.f49741e;
            if (c7795ii02 != null) {
                this.f49741e = C7795ii0.f49025e.toBuilder().a(c7795ii02).a(c7795ii0).m1181buildPartial();
            } else {
                this.f49741e = c7795ii0;
            }
            onChanged();
        }
        int i10 = c8298lj0.f50081f;
        if (i10 != 0) {
            this.f49742f = i10;
            onChanged();
        }
        if (c8298lj0.b()) {
            C7626hh0 c7626hh0 = c8298lj0.f50082g;
            if (c7626hh0 == null) {
                c7626hh0 = C7626hh0.f48676e;
            }
            C7626hh0 c7626hh02 = this.f49743g;
            if (c7626hh02 != null) {
                this.f49743g = C7626hh0.f48676e.toBuilder().a(c7626hh02).a(c7626hh0).m1181buildPartial();
            } else {
                this.f49743g = c7626hh0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
