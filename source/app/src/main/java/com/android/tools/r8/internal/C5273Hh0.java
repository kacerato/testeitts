package com.android.tools.r8.internal;

public final class C5273Hh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f40837b;

    public String f40838c;

    public int f40839d;

    public C7626hh0 f40840e;

    public C5273Hh0() {
        this.f40838c = "";
        this.f40839d = 0;
        C5331Ih0 c5331Ih0 = C5331Ih0.f41172g;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5273Hh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5331Ih0 c5331Ih0 = null;
        try {
            try {
                C5331Ih0.f41173h.getClass();
                a(new C5331Ih0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5331Ih0 c5331Ih02 = (C5331Ih0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5331Ih0 = c5331Ih02;
                    if (c5331Ih0 != null) {
                        a(c5331Ih0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5331Ih0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5273Hh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5331Ih0 c5331Ih0 = new C5331Ih0(this);
        c5331Ih0.f41174b = this.f40837b;
        c5331Ih0.f41175c = this.f40838c;
        c5331Ih0.f41176d = this.f40839d;
        c5331Ih0.f41177e = this.f40840e;
        onBuilt();
        if (c5331Ih0.isInitialized()) {
            return c5331Ih0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5331Ih0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C5331Ih0 c5331Ih0 = new C5331Ih0(this);
        c5331Ih0.f41174b = this.f40837b;
        c5331Ih0.f41175c = this.f40838c;
        c5331Ih0.f41176d = this.f40839d;
        c5331Ih0.f41177e = this.f40840e;
        onBuilt();
        return c5331Ih0;
    }

    public final Object clone() {
        return (C5273Hh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5331Ih0.f41172g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53220E0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53222F0.a(C5331Ih0.class, C5273Hh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5273Hh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5273Hh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5273Hh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5331Ih0.f41172g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5273Hh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5331Ih0) {
            return a((C5331Ih0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5273Hh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f40838c = "";
        this.f40839d = 0;
        C5331Ih0 c5331Ih0 = C5331Ih0.f41172g;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5331Ih0) {
            return a((C5331Ih0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5273Hh0 a(C5331Ih0 c5331Ih0) {
        if (c5331Ih0 == C5331Ih0.f41172g) {
            return this;
        }
        C7295fi0 c7295fi0 = c5331Ih0.f41174b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f40837b;
            if (c7295fi02 != null) {
                this.f40837b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f40837b = c7295fi0;
            }
            onChanged();
        }
        String str = c5331Ih0.f41175c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5331Ih0.f41175c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f40838c = c5331Ih0.f41175c;
            onChanged();
        }
        int i10 = c5331Ih0.f41176d;
        if (i10 != 0) {
            this.f40839d = i10;
            onChanged();
        }
        C7626hh0 c7626hh0 = c5331Ih0.f41177e;
        if (c7626hh0 != null) {
            C7626hh0 c7626hh02 = this.f40840e;
            if (c7626hh02 != null) {
                this.f40840e = C7626hh0.f48676e.toBuilder().a(c7626hh02).a(c7626hh0).m1181buildPartial();
            } else {
                this.f40840e = c7626hh0;
            }
            onChanged();
        }
        onChanged();
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5331Ih0 c5331Ih0 = new C5331Ih0(this);
        c5331Ih0.f41174b = this.f40837b;
        c5331Ih0.f41175c = this.f40838c;
        c5331Ih0.f41176d = this.f40839d;
        c5331Ih0.f41177e = this.f40840e;
        onBuilt();
        if (c5331Ih0.isInitialized()) {
            return c5331Ih0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c5331Ih0);
    }
}
