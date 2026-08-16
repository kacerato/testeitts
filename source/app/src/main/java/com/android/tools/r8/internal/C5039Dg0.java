package com.android.tools.r8.internal;

public final class C5039Dg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public C7295fi0 f39590b;

    public String f39591c;

    public C6311Zh0 f39592d;

    public int f39593e;

    public int f39594f;

    public C5039Dg0() {
        this.f39591c = "";
        C5097Eg0 c5097Eg0 = C5097Eg0.f39973h;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5039Dg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5097Eg0 c5097Eg0 = null;
        try {
            try {
                C5097Eg0.f39974i.getClass();
                a(new C5097Eg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5097Eg0 c5097Eg02 = (C5097Eg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5097Eg0 = c5097Eg02;
                    if (c5097Eg0 != null) {
                        a(c5097Eg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5097Eg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5039Dg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5097Eg0 m1181buildPartial() {
        C5097Eg0 c5097Eg0 = new C5097Eg0(this);
        c5097Eg0.f39975b = this.f39590b;
        c5097Eg0.f39976c = this.f39591c;
        c5097Eg0.f39977d = this.f39592d;
        c5097Eg0.f39978e = this.f39593e;
        c5097Eg0.f39979f = this.f39594f;
        onBuilt();
        return c5097Eg0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5097Eg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5039Dg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5097Eg0.f39973h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53291o0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53293p0.a(C5097Eg0.class, C5039Dg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5039Dg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5039Dg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5039Dg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5097Eg0.f39973h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5039Dg0) super.setUnknownFields(c9002pv0);
    }

    public C5039Dg0(C7011dz c7011dz) {
        super(c7011dz);
        this.f39591c = "";
        C5097Eg0 c5097Eg0 = C5097Eg0.f39973h;
    }

    @Override
    public final InterfaceC8095kW build() {
        C5097Eg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5097Eg0) {
            return a((C5097Eg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5097Eg0) {
            return a((C5097Eg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5039Dg0 a(C5097Eg0 c5097Eg0) {
        if (c5097Eg0 == C5097Eg0.f39973h) {
            return this;
        }
        C7295fi0 c7295fi0 = c5097Eg0.f39975b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f39590b;
            if (c7295fi02 != null) {
                this.f39590b = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f39590b = c7295fi0;
            }
            onChanged();
        }
        String str = c5097Eg0.f39976c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c5097Eg0.f39976c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f39591c = c5097Eg0.f39976c;
            onChanged();
        }
        C6311Zh0 c6311Zh0 = c5097Eg0.f39977d;
        if (c6311Zh0 != null) {
            C6311Zh0 c6311Zh02 = this.f39592d;
            if (c6311Zh02 != null) {
                this.f39592d = C6311Zh0.f46320j.toBuilder().a(c6311Zh02).a(c6311Zh0).m1181buildPartial();
            } else {
                this.f39592d = c6311Zh0;
            }
            onChanged();
        }
        int i10 = c5097Eg0.f39978e;
        if (i10 != 0) {
            this.f39593e = i10;
            onChanged();
        }
        int i11 = c5097Eg0.f39979f;
        if (i11 != 0) {
            this.f39594f = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
