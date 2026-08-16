package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9958vg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f53185b;

    public List f53186c;

    public C4862Af0 f53187d;

    public C9958vg0() {
        boolean z10;
        this.f53186c = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9958vg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10626zg0 c10626zg0 = null;
        try {
            try {
                C10626zg0.f54443e.getClass();
                a(new C10626zg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10626zg0 c10626zg02 = (C10626zg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10626zg0 = c10626zg02;
                    if (c10626zg0 != null) {
                        a(c10626zg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10626zg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9958vg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C10626zg0 m1181buildPartial() {
        C10626zg0 c10626zg0 = new C10626zg0(this);
        int i10 = this.f53185b;
        C4862Af0 c4862Af0 = this.f53187d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f53186c = Collections.unmodifiableList(this.f53186c);
                this.f53185b &= -2;
            }
            c10626zg0.f54444b = this.f53186c;
        } else {
            c10626zg0.f54444b = c4862Af0.b();
        }
        onBuilt();
        return c10626zg0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10626zg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f53187d == null) {
            this.f53187d = new C4862Af0(this.f53186c, (this.f53185b & 1) != 0, getParentForChildren(), isClean());
            this.f53186c = null;
        }
        return this.f53187d;
    }

    public final Object clone() {
        return (C9958vg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10626zg0.f54442d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53311y0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53313z0.a(C10626zg0.class, C9958vg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9958vg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9958vg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9958vg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10626zg0.f54442d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9958vg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10626zg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10626zg0) {
            return a((C10626zg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C9958vg0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f53186c = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10626zg0) {
            return a((C10626zg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C9958vg0 a(C10626zg0 c10626zg0) {
        if (c10626zg0 == C10626zg0.f54442d) {
            return this;
        }
        if (this.f53187d == null) {
            if (!c10626zg0.f54444b.isEmpty()) {
                if (this.f53186c.isEmpty()) {
                    this.f53186c = c10626zg0.f54444b;
                    this.f53185b &= -2;
                } else {
                    if ((this.f53185b & 1) == 0) {
                        this.f53186c = new ArrayList(this.f53186c);
                        this.f53185b |= 1;
                    }
                    this.f53186c.addAll(c10626zg0.f54444b);
                }
                onChanged();
            }
        } else if (!c10626zg0.f54444b.isEmpty()) {
            if (this.f53187d.f38676b.isEmpty()) {
                this.f53187d.f38675a = null;
                this.f53187d = null;
                this.f53186c = c10626zg0.f54444b;
                this.f53185b &= -2;
                this.f53187d = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f53187d.a(c10626zg0.f54444b);
            }
        }
        onChanged();
        return this;
    }
}
