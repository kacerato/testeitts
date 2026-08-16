package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C9805ul extends AbstractC7345fz implements InterfaceC8596nW {

    public int f52934b;

    public List f52935c;

    public C4862Af0 f52936d;

    public Serializable f52937e;

    public long f52938f;

    public long f52939g;

    public double f52940h;

    public AbstractC8373m8 f52941i;

    public Serializable f52942j;

    public C9805ul() {
        super(null);
        this.f52935c = Collections.EMPTY_LIST;
        this.f52937e = "";
        this.f52941i = AbstractC8373m8.f50204c;
        this.f52942j = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9805ul mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10473yl c10473yl = null;
        try {
            try {
                a((C10473yl) C10473yl.f54135l.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10473yl c10473yl2 = (C10473yl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10473yl = c10473yl2;
                    if (c10473yl != null) {
                        a(c10473yl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10473yl != null) {
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
    public final C10473yl m1181buildPartial() {
        C10473yl c10473yl = new C10473yl(this);
        int i10 = this.f52934b;
        C4862Af0 c4862Af0 = this.f52936d;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f52935c = Collections.unmodifiableList(this.f52935c);
                this.f52934b &= -2;
            }
            c10473yl.f54137c = this.f52935c;
        } else {
            c10473yl.f54137c = c4862Af0.b();
        }
        int i11 = (i10 & 2) != 0 ? 1 : 0;
        c10473yl.f54138d = this.f52937e;
        if ((i10 & 4) != 0) {
            c10473yl.f54139e = this.f52938f;
            i11 |= 2;
        }
        if ((i10 & 8) != 0) {
            c10473yl.f54140f = this.f52939g;
            i11 |= 4;
        }
        if ((i10 & 16) != 0) {
            c10473yl.f54141g = this.f52940h;
            i11 |= 8;
        }
        if ((i10 & 32) != 0) {
            i11 |= 16;
        }
        c10473yl.f54142h = this.f52941i;
        if ((i10 & 64) != 0) {
            i11 |= 32;
        }
        c10473yl.f54143i = this.f52942j;
        c10473yl.f54136b = i11;
        onBuilt();
        return c10473yl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10473yl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f52936d == null) {
            this.f52936d = new C4862Af0(this.f52935c, (this.f52934b & 1) != 0, getParentForChildren(), isClean());
            this.f52935c = null;
        }
        return this.f52936d;
    }

    public final Object clone() {
        return (C9805ul) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10473yl.f54134k;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54498O;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54499P.a(C10473yl.class, C9805ul.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f52936d;
            if (i10 >= (c4862Af0 == null ? this.f52935c.size() : c4862Af0.f38676b.size())) {
                return true;
            }
            C4862Af0 c4862Af02 = this.f52936d;
            if (!(c4862Af02 == null ? (C10306xl) this.f52935c.get(i10) : (C10306xl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9805ul) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9805ul) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10473yl.f54134k;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9805ul) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10473yl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10473yl) {
            return a((C10473yl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10473yl) {
            return a((C10473yl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C9805ul(C7011dz c7011dz) {
        super(c7011dz);
        this.f52935c = Collections.EMPTY_LIST;
        this.f52937e = "";
        this.f52941i = AbstractC8373m8.f50204c;
        this.f52942j = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            c();
        }
    }

    public final C9805ul a(C10473yl c10473yl) {
        if (c10473yl == C10473yl.f54134k) {
            return this;
        }
        if (this.f52936d == null) {
            if (!c10473yl.f54137c.isEmpty()) {
                if (this.f52935c.isEmpty()) {
                    this.f52935c = c10473yl.f54137c;
                    this.f52934b &= -2;
                } else {
                    if ((this.f52934b & 1) == 0) {
                        this.f52935c = new ArrayList(this.f52935c);
                        this.f52934b |= 1;
                    }
                    this.f52935c.addAll(c10473yl.f54137c);
                }
                onChanged();
            }
        } else if (!c10473yl.f54137c.isEmpty()) {
            if (this.f52936d.f38676b.isEmpty()) {
                this.f52936d.f38675a = null;
                this.f52936d = null;
                this.f52935c = c10473yl.f54137c;
                this.f52934b &= -2;
                this.f52936d = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f52936d.a(c10473yl.f54137c);
            }
        }
        if ((c10473yl.f54136b & 1) != 0) {
            this.f52934b |= 2;
            this.f52937e = c10473yl.f54138d;
            onChanged();
        }
        if ((c10473yl.f54136b & 2) != 0) {
            long j10 = c10473yl.f54139e;
            this.f52934b |= 4;
            this.f52938f = j10;
            onChanged();
        }
        if ((c10473yl.f54136b & 4) != 0) {
            long j11 = c10473yl.f54140f;
            this.f52934b |= 8;
            this.f52939g = j11;
            onChanged();
        }
        if ((c10473yl.f54136b & 8) != 0) {
            double d10 = c10473yl.f54141g;
            this.f52934b |= 16;
            this.f52940h = d10;
            onChanged();
        }
        if ((c10473yl.f54136b & 16) != 0) {
            AbstractC8373m8 abstractC8373m8 = c10473yl.f54142h;
            abstractC8373m8.getClass();
            this.f52934b |= 32;
            this.f52941i = abstractC8373m8;
            onChanged();
        }
        if ((c10473yl.f54136b & 32) != 0) {
            this.f52934b |= 64;
            this.f52942j = c10473yl.f54143i;
            onChanged();
        }
        onChanged();
        return this;
    }
}
