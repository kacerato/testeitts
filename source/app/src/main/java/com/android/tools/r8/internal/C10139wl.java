package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C10139wl extends AbstractC7345fz implements InterfaceC8596nW {

    public int f53601b;

    public Serializable f53602c;

    public boolean f53603d;

    public C10139wl() {
        super(null);
        this.f53602c = "";
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10139wl mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10306xl c10306xl = null;
        try {
            try {
                a((C10306xl) C10306xl.f53833g.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10306xl c10306xl2 = (C10306xl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10306xl = c10306xl2;
                    if (c10306xl != null) {
                        a(c10306xl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10306xl != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).b(this, obj);
        return this;
    }

    @Override
    public final C10306xl m1181buildPartial() {
        C10306xl c10306xl = new C10306xl(this);
        int i10 = this.f53601b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c10306xl.f53835c = this.f53602c;
        if ((i10 & 2) != 0) {
            c10306xl.f53836d = this.f53603d;
            i11 |= 2;
        }
        c10306xl.f53834b = i11;
        onBuilt();
        return c10306xl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10306xl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C10139wl) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10306xl.f53832f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54500Q;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54501R.a(C10306xl.class, C10139wl.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = this.f53601b;
        return ((i10 & 1) == 0 || (i10 & 2) == 0) ? false : true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C10139wl) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C10139wl) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10306xl.f53832f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C10139wl) super.setUnknownFields(c9002pv0);
    }

    public C10139wl(C7011dz c7011dz) {
        super(c7011dz);
        this.f53602c = "";
    }

    @Override
    public final InterfaceC8095kW build() {
        C10306xl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10306xl) {
            return a((C10306xl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10306xl) {
            return a((C10306xl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C10139wl a(C10306xl c10306xl) {
        if (c10306xl == C10306xl.f53832f) {
            return this;
        }
        if (c10306xl.b()) {
            this.f53601b |= 1;
            this.f53602c = c10306xl.f53835c;
            onChanged();
        }
        if (c10306xl.a()) {
            boolean z10 = c10306xl.f53836d;
            this.f53601b |= 2;
            this.f53603d = z10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
