package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C4923Bg0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f38970b;

    public int f38971c;

    public int f38972d;

    public int f38973e;

    public List f38974f;

    public C4862Af0 f38975g;

    public C4923Bg0() {
        boolean z10;
        this.f38974f = Collections.EMPTY_LIST;
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
    public final C4923Bg0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5155Fg0 c5155Fg0 = null;
        try {
            try {
                C5155Fg0.f40276h.getClass();
                a(new C5155Fg0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5155Fg0 c5155Fg02 = (C5155Fg0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5155Fg0 = c5155Fg02;
                    if (c5155Fg0 != null) {
                        a(c5155Fg0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5155Fg0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C4923Bg0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5155Fg0 m1181buildPartial() {
        C5155Fg0 c5155Fg0 = new C5155Fg0(this);
        int i10 = this.f38970b;
        c5155Fg0.f40277b = this.f38971c;
        c5155Fg0.f40278c = this.f38972d;
        c5155Fg0.f40279d = this.f38973e;
        C4862Af0 c4862Af0 = this.f38975g;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f38974f = Collections.unmodifiableList(this.f38974f);
                this.f38970b &= -2;
            }
            c5155Fg0.f40280e = this.f38974f;
        } else {
            c5155Fg0.f40280e = c4862Af0.b();
        }
        onBuilt();
        return c5155Fg0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5155Fg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f38975g == null) {
            this.f38975g = new C4862Af0(this.f38974f, (this.f38970b & 1) != 0, getParentForChildren(), isClean());
            this.f38974f = null;
        }
        return this.f38975g;
    }

    public final Object clone() {
        return (C4923Bg0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5155Fg0.f40275g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53287m0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53289n0.a(C5155Fg0.class, C4923Bg0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C4923Bg0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C4923Bg0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C4923Bg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5155Fg0.f40275g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C4923Bg0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5155Fg0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5155Fg0) {
            return a((C5155Fg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C4923Bg0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f38974f = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5155Fg0) {
            return a((C5155Fg0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C4923Bg0 a(C5155Fg0 c5155Fg0) {
        if (c5155Fg0 == C5155Fg0.f40275g) {
            return this;
        }
        int i10 = c5155Fg0.f40277b;
        if (i10 != 0) {
            this.f38971c = i10;
            onChanged();
        }
        int i11 = c5155Fg0.f40278c;
        if (i11 != 0) {
            this.f38972d = i11;
            onChanged();
        }
        int i12 = c5155Fg0.f40279d;
        if (i12 != 0) {
            this.f38973e = i12;
            onChanged();
        }
        if (this.f38975g == null) {
            if (!c5155Fg0.f40280e.isEmpty()) {
                if (this.f38974f.isEmpty()) {
                    this.f38974f = c5155Fg0.f40280e;
                    this.f38970b &= -2;
                } else {
                    if ((this.f38970b & 1) == 0) {
                        this.f38974f = new ArrayList(this.f38974f);
                        this.f38970b |= 1;
                    }
                    this.f38974f.addAll(c5155Fg0.f40280e);
                }
                onChanged();
            }
        } else if (!c5155Fg0.f40280e.isEmpty()) {
            if (this.f38975g.f38676b.isEmpty()) {
                this.f38975g.f38675a = null;
                this.f38975g = null;
                this.f38974f = c5155Fg0.f40280e;
                this.f38970b &= -2;
                this.f38975g = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f38975g.a(c5155Fg0.f40280e);
            }
        }
        onChanged();
        return this;
    }
}
