package com.android.tools.r8.internal;

public final class C4927Bi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public String f38983b;

    public int f38984c;

    public int f38985d;

    public C4927Bi0() {
        this.f38983b = "";
        C4985Ci0 c4985Ci0 = C4985Ci0.f39324f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C4927Bi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C4985Ci0 c4985Ci0 = null;
        try {
            try {
                C4985Ci0.f39325g.getClass();
                a(new C4985Ci0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C4985Ci0 c4985Ci02 = (C4985Ci0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c4985Ci0 = c4985Ci02;
                    if (c4985Ci0 != null) {
                        a(c4985Ci0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c4985Ci0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C4927Bi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C4985Ci0 c4985Ci0 = new C4985Ci0(this);
        c4985Ci0.f39326b = this.f38983b;
        c4985Ci0.f39327c = this.f38984c;
        c4985Ci0.f39328d = this.f38985d;
        onBuilt();
        if (c4985Ci0.isInitialized()) {
            return c4985Ci0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c4985Ci0);
    }

    @Override
    public final InterfaceC7262fW m1181buildPartial() {
        C4985Ci0 c4985Ci0 = new C4985Ci0(this);
        c4985Ci0.f39326b = this.f38983b;
        c4985Ci0.f39327c = this.f38984c;
        c4985Ci0.f39328d = this.f38985d;
        onBuilt();
        return c4985Ci0;
    }

    public final Object clone() {
        return (C4927Bi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C4985Ci0.f39324f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53252U0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53254V0.a(C4985Ci0.class, C4927Bi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C4927Bi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C4927Bi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C4927Bi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C4985Ci0.f39324f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C4927Bi0) super.setUnknownFields(c9002pv0);
    }

    public C4927Bi0(C7011dz c7011dz) {
        super(c7011dz);
        this.f38983b = "";
        C4985Ci0 c4985Ci0 = C4985Ci0.f39324f;
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C4985Ci0) {
            return a((C4985Ci0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C4985Ci0) {
            return a((C4985Ci0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    @Override
    public final InterfaceC8095kW build() {
        C4985Ci0 c4985Ci0 = new C4985Ci0(this);
        c4985Ci0.f39326b = this.f38983b;
        c4985Ci0.f39327c = this.f38984c;
        c4985Ci0.f39328d = this.f38985d;
        onBuilt();
        if (c4985Ci0.isInitialized()) {
            return c4985Ci0;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) c4985Ci0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C4927Bi0 a(C4985Ci0 c4985Ci0) {
        if (c4985Ci0 == C4985Ci0.f39324f) {
            return this;
        }
        String str = c4985Ci0.f39326b;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c4985Ci0.f39326b = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f38983b = c4985Ci0.f39326b;
            onChanged();
        }
        int i10 = c4985Ci0.f39327c;
        if (i10 != 0) {
            this.f38984c = i10;
            onChanged();
        }
        int i11 = c4985Ci0.f39328d;
        if (i11 != 0) {
            this.f38985d = i11;
            onChanged();
        }
        onChanged();
        return this;
    }
}
