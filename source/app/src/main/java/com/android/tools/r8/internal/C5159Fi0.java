package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C5159Fi0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f40288b;

    public List f40289c;

    public C4862Af0 f40290d;

    public C5159Fi0() {
        boolean z10;
        this.f40289c = Collections.EMPTY_LIST;
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
    public final C5159Fi0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5391Ji0 c5391Ji0 = null;
        try {
            try {
                C5391Ji0.f41460e.getClass();
                a(new C5391Ji0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5391Ji0 c5391Ji02 = (C5391Ji0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5391Ji0 = c5391Ji02;
                    if (c5391Ji0 != null) {
                        a(c5391Ji0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5391Ji0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5159Fi0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C5391Ji0 m1181buildPartial() {
        C5391Ji0 c5391Ji0 = new C5391Ji0(this);
        int i10 = this.f40288b;
        C4862Af0 c4862Af0 = this.f40290d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f40289c = Collections.unmodifiableList(this.f40289c);
                this.f40288b &= -2;
            }
            c5391Ji0.f41461b = this.f40289c;
        } else {
            c5391Ji0.f41461b = c4862Af0.b();
        }
        onBuilt();
        return c5391Ji0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5391Ji0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f40290d == null) {
            this.f40290d = new C4862Af0(this.f40289c, (this.f40288b & 1) != 0, getParentForChildren(), isClean());
            this.f40289c = null;
        }
        return this.f40290d;
    }

    public final Object clone() {
        return (C5159Fi0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5391Ji0.f41459d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53303u0;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53305v0.a(C5391Ji0.class, C5159Fi0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5159Fi0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5159Fi0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5159Fi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5391Ji0.f41459d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5159Fi0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5391Ji0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5391Ji0) {
            return a((C5391Ji0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C5159Fi0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f40289c = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5391Ji0) {
            return a((C5391Ji0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public final C5159Fi0 a(C5391Ji0 c5391Ji0) {
        if (c5391Ji0 == C5391Ji0.f41459d) {
            return this;
        }
        if (this.f40290d == null) {
            if (!c5391Ji0.f41461b.isEmpty()) {
                if (this.f40289c.isEmpty()) {
                    this.f40289c = c5391Ji0.f41461b;
                    this.f40288b &= -2;
                } else {
                    if ((this.f40288b & 1) == 0) {
                        this.f40289c = new ArrayList(this.f40289c);
                        this.f40288b |= 1;
                    }
                    this.f40289c.addAll(c5391Ji0.f41461b);
                }
                onChanged();
            }
        } else if (!c5391Ji0.f41461b.isEmpty()) {
            if (this.f40290d.f38676b.isEmpty()) {
                this.f40290d.f38675a = null;
                this.f40290d = null;
                this.f40289c = c5391Ji0.f41461b;
                this.f40288b &= -2;
                this.f40290d = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f40290d.a(c5391Ji0.f41461b);
            }
        }
        onChanged();
        return this;
    }
}
