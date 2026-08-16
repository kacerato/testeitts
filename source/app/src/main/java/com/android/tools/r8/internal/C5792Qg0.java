package com.android.tools.r8.internal;

public final class C5792Qg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C4983Ch0 f43686b;

    public String f43687c;

    public C5792Qg0() {
        this.f43687c = "";
        C5850Rg0 c5850Rg0 = C5850Rg0.f43958e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5792Qg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5850Rg0 c5850Rg0 = null;
        try {
            try {
                C5850Rg0.f43959f.getClass();
                a(new C5850Rg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5850Rg0 c5850Rg02 = (C5850Rg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5850Rg0 = c5850Rg02;
                    if (c5850Rg0 != null) {
                        a(c5850Rg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5850Rg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5792Qg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5850Rg0 c5850Rg0 = new C5850Rg0(this);
        c5850Rg0.f43960b = this.f43686b;
        c5850Rg0.f43961c = this.f43687c;
        onBuilt();
        if (c5850Rg0.isInitialized()) {
            return c5850Rg0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5850Rg0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5850Rg0 c5850Rg0 = new C5850Rg0(this);
        c5850Rg0.f43960b = this.f43686b;
        c5850Rg0.f43961c = this.f43687c;
        onBuilt();
        return c5850Rg0;
    }

    public final Object clone() {
        return (C5792Qg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5850Rg0.f43958e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53278i;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53280j.a(C5850Rg0.class, C5792Qg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5792Qg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5792Qg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5792Qg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5850Rg0.f43958e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5792Qg0) super.setUnknownFields(c9002pv0);
    }

    public C5792Qg0(C7011dz c7011dz) {
        super(c7011dz);
        this.f43687c = "";
        C5850Rg0 c5850Rg0 = C5850Rg0.f43958e;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5850Rg0) {
            return a((C5850Rg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5850Rg0 c5850Rg0 = new C5850Rg0(this);
        c5850Rg0.f43960b = this.f43686b;
        c5850Rg0.f43961c = this.f43687c;
        onBuilt();
        if (c5850Rg0.isInitialized()) {
            return c5850Rg0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5850Rg0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5850Rg0) {
            return a((C5850Rg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5792Qg0 a(C5850Rg0 c5850Rg0) {
        if (c5850Rg0 == C5850Rg0.f43958e) {
            return this;
        }
        C4983Ch0 c4983Ch0 = c5850Rg0.f43960b;
        if (c4983Ch0 != null) {
            C4983Ch0 c4983Ch02 = this.f43686b;
            if (c4983Ch02 != null) {
                this.f43686b = C4983Ch0.f39315d.toBuilder().a(c4983Ch02).a(c4983Ch0).m1181buildPartial();
            } else {
                this.f43686b = c4983Ch0;
            }
            onChanged();
        }
        String str = c5850Rg0.f43961c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5850Rg0.f43961c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f43687c = c5850Rg0.f43961c;
            onChanged();
        }
        onChanged();
        return this;
    }
}
