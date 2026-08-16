package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C8303ll extends AbstractC7679hz {

    public int f50090c;

    public boolean f50091d;

    public List f50092e;

    public C4862Af0 f50093f;

    public C8303ll() {
        this.f50092e = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8303ll mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C8470ml c8470ml = null;
        try {
            try {
                a((C8470ml) C8470ml.f50413h.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C8470ml c8470ml2 = (C8470ml) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c8470ml = c8470ml2;
                    if (c8470ml != null) {
                        a(c8470ml);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c8470ml != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8303ll) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C8470ml m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8303ll) m1188clone();
    }

    @Override
    public final C8470ml m1181buildPartial() {
        int i10;
        C8470ml c8470ml = new C8470ml(this);
        int i11 = this.f50090c;
        if ((i11 & 1) != 0) {
            c8470ml.f50415d = this.f50091d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        C4862Af0 c4862Af0 = this.f50093f;
        if (c4862Af0 == null) {
            if ((i11 & 2) != 0) {
                this.f50092e = Collections.unmodifiableList(this.f50092e);
                this.f50090c &= -3;
            }
            c8470ml.f50416e = this.f50092e;
        } else {
            c8470ml.f50416e = c4862Af0.b();
        }
        c8470ml.f50414c = i10;
        onBuilt();
        return c8470ml;
    }

    public final C4862Af0 e() {
        if (this.f50093f == null) {
            this.f50093f = new C4862Af0(this.f50092e, (this.f50090c & 2) != 0, getParentForChildren(), isClean());
            this.f50092e = null;
        }
        return this.f50093f;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C8470ml.f50412g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54494K;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54495L.a(C8470ml.class, C8303ll.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f50093f;
            if (i10 >= (c4862Af0 == null ? this.f50092e.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f50093f;
            if (!(c4862Af02 == null ? (C10473yl) this.f50092e.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8303ll) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8303ll) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8303ll) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C8470ml.f50412g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8303ll) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C8470ml m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8470ml) {
            return a((C8470ml) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C8303ll(C7011dz c7011dz) {
        super(c7011dz);
        this.f50092e = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C8470ml) {
            return a((C8470ml) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C8303ll a(C8470ml c8470ml) {
        if (c8470ml == C8470ml.f50412g) {
            return this;
        }
        if ((c8470ml.f50414c & 1) != 0) {
            boolean z10 = c8470ml.f50415d;
            this.f50090c |= 1;
            this.f50091d = z10;
            onChanged();
        }
        if (this.f50093f == null) {
            if (!c8470ml.f50416e.isEmpty()) {
                if (this.f50092e.isEmpty()) {
                    this.f50092e = c8470ml.f50416e;
                    this.f50090c &= -3;
                } else {
                    if ((this.f50090c & 2) == 0) {
                        this.f50092e = new ArrayList(this.f50092e);
                        this.f50090c |= 2;
                    }
                    this.f50092e.addAll(c8470ml.f50416e);
                }
                onChanged();
            }
        } else if (!c8470ml.f50416e.isEmpty()) {
            if (this.f50093f.f38676b.isEmpty()) {
                this.f50093f.f38675a = null;
                this.f50093f = null;
                this.f50092e = c8470ml.f50416e;
                this.f50090c &= -3;
                this.f50093f = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f50093f.a(c8470ml.f50416e);
            }
        }
        a((AbstractC7844iz) c8470ml);
        onChanged();
        return this;
    }
}
