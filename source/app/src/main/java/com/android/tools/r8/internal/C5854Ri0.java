package com.android.tools.r8.internal;

public final class C5854Ri0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f43971b;

    public String f43972c;

    public C5854Ri0() {
        this.f43971b = "";
        this.f43972c = "";
        C5912Si0 c5912Si0 = C5912Si0.f44284e;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5854Ri0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5912Si0 c5912Si0 = null;
        try {
            try {
                C5912Si0.f44285f.getClass();
                a(new C5912Si0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5912Si0 c5912Si02 = (C5912Si0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5912Si0 = c5912Si02;
                    if (c5912Si0 != null) {
                        a(c5912Si0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5912Si0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5854Ri0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5912Si0 c5912Si0 = new C5912Si0(this);
        c5912Si0.f44286b = this.f43971b;
        c5912Si0.f44287c = this.f43972c;
        onBuilt();
        if (c5912Si0.isInitialized()) {
            return c5912Si0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5912Si0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5912Si0 c5912Si0 = new C5912Si0(this);
        c5912Si0.f44286b = this.f43971b;
        c5912Si0.f44287c = this.f43972c;
        onBuilt();
        return c5912Si0;
    }

    public final Object clone() {
        return (C5854Ri0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5912Si0.f44284e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53274g;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53276h.a(C5912Si0.class, C5854Ri0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5854Ri0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5854Ri0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5854Ri0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5912Si0.f44284e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5854Ri0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5912Si0) {
            return a((C5912Si0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5854Ri0(C7011dz c7011dz) {
        super(c7011dz);
        this.f43971b = "";
        this.f43972c = "";
        C5912Si0 c5912Si0 = C5912Si0.f44284e;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5912Si0 c5912Si0 = new C5912Si0(this);
        c5912Si0.f44286b = this.f43971b;
        c5912Si0.f44287c = this.f43972c;
        onBuilt();
        if (c5912Si0.isInitialized()) {
            return c5912Si0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5912Si0);
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5912Si0) {
            return a((C5912Si0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5854Ri0 a(C5912Si0 c5912Si0) {
        if (c5912Si0 == C5912Si0.f44284e) {
            return this;
        }
        String str = c5912Si0.f44286b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5912Si0.f44286b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f43971b = c5912Si0.f44286b;
            onChanged();
        }
        String str3 = c5912Si0.f44287c;
        String str4 = str3;
        if (str3 == 0) {
            String c11 = ((AbstractC8373m8) str3).c();
            c5912Si0.f44287c = c11;
            str4 = c11;
        }
        if (!str4.isEmpty()) {
            this.f43972c = c5912Si0.f44287c;
            onChanged();
        }
        onChanged();
        return this;
    }
}
