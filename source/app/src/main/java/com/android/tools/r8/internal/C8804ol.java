package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C8804ol extends AbstractC7345fz implements InterfaceC8596nW {

    public int f51337b;

    public List f51338c;

    public C4862Af0 f51339d;

    public C8804ol() {
        super(null);
        this.f51338c = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8804ol mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9471sl c9471sl = null;
        try {
            try {
                a((C9471sl) C9471sl.f52447e.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9471sl c9471sl2 = (C9471sl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9471sl = c9471sl2;
                    if (c9471sl != null) {
                        a(c9471sl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9471sl != null) {
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
    public final C9471sl m1181buildPartial() {
        C9471sl c9471sl = new C9471sl(this);
        int i10 = this.f51337b;
        C4862Af0 c4862Af0 = this.f51339d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f51338c = Collections.unmodifiableList(this.f51338c);
                this.f51337b &= -2;
            }
            c9471sl.f52448b = this.f51338c;
        } else {
            c9471sl.f52448b = c4862Af0.b();
        }
        onBuilt();
        return c9471sl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9471sl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f51339d == null) {
            this.f51339d = new C4862Af0(this.f51338c, (this.f51337b & 1) != 0, getParentForChildren(), isClean());
            this.f51338c = null;
        }
        return this.f51339d;
    }

    public final Object clone() {
        return (C8804ol) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9471sl.f52446d;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54502S;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54503T.a(C9471sl.class, C8804ol.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8804ol) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8804ol) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9471sl.f52446d;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8804ol) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C9471sl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9471sl) {
            return a((C9471sl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C8804ol(C7011dz c7011dz) {
        super(c7011dz);
        this.f51338c = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9471sl) {
            return a((C9471sl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C8804ol a(C9471sl c9471sl) {
        if (c9471sl == C9471sl.f52446d) {
            return this;
        }
        if (this.f51339d == null) {
            if (!c9471sl.f52448b.isEmpty()) {
                if (this.f51338c.isEmpty()) {
                    this.f51338c = c9471sl.f52448b;
                    this.f51337b &= -2;
                } else {
                    if ((this.f51337b & 1) == 0) {
                        this.f51338c = new ArrayList(this.f51338c);
                        this.f51337b |= 1;
                    }
                    this.f51338c.addAll(c9471sl.f52448b);
                }
                onChanged();
            }
        } else if (!c9471sl.f52448b.isEmpty()) {
            if (this.f51339d.f38676b.isEmpty()) {
                this.f51339d.f38675a = null;
                this.f51339d = null;
                this.f51338c = c9471sl.f52448b;
                this.f51337b &= -2;
                this.f51339d = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f51339d.a(c9471sl.f52448b);
            }
        }
        onChanged();
        return this;
    }
}
