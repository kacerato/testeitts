package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C9969vk extends AbstractC7679hz {

    public int f53314c;

    public boolean f53315d;

    public List f53316e;

    public C4862Af0 f53317f;

    public C9969vk() {
        this.f53316e = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9969vk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10136wk c10136wk = null;
        try {
            try {
                a((C10136wk) C10136wk.f53588h.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10136wk c10136wk2 = (C10136wk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10136wk = c10136wk2;
                    if (c10136wk != null) {
                        a(c10136wk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10136wk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9969vk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C10136wk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9969vk) m1188clone();
    }

    @Override
    public final C10136wk m1181buildPartial() {
        int i10;
        C10136wk c10136wk = new C10136wk(this);
        int i11 = this.f53314c;
        if ((i11 & 1) != 0) {
            c10136wk.f53590d = this.f53315d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        C4862Af0 c4862Af0 = this.f53317f;
        if (c4862Af0 == null) {
            if ((i11 & 2) != 0) {
                this.f53316e = Collections.unmodifiableList(this.f53316e);
                this.f53314c &= -3;
            }
            c10136wk.f53591e = this.f53316e;
        } else {
            c10136wk.f53591e = c4862Af0.b();
        }
        c10136wk.f53589c = i10;
        onBuilt();
        return c10136wk;
    }

    public final C4862Af0 e() {
        if (this.f53317f == null) {
            this.f53317f = new C4862Af0(this.f53316e, (this.f53314c & 2) != 0, getParentForChildren(), isClean());
            this.f53316e = null;
        }
        return this.f53317f;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10136wk.f53587g;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54492I;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54493J.a(C10136wk.class, C9969vk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f53317f;
            if (i10 >= (c4862Af0 == null ? this.f53316e.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f53317f;
            if (!(c4862Af02 == null ? (C10473yl) this.f53316e.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9969vk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9969vk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9969vk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10136wk.f53587g;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9969vk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10136wk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10136wk) {
            return a((C10136wk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C9969vk(C7011dz c7011dz) {
        super(c7011dz);
        this.f53316e = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10136wk) {
            return a((C10136wk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C9969vk a(C10136wk c10136wk) {
        if (c10136wk == C10136wk.f53587g) {
            return this;
        }
        if ((c10136wk.f53589c & 1) != 0) {
            boolean z10 = c10136wk.f53590d;
            this.f53314c |= 1;
            this.f53315d = z10;
            onChanged();
        }
        if (this.f53317f == null) {
            if (!c10136wk.f53591e.isEmpty()) {
                if (this.f53316e.isEmpty()) {
                    this.f53316e = c10136wk.f53591e;
                    this.f53314c &= -3;
                } else {
                    if ((this.f53314c & 2) == 0) {
                        this.f53316e = new ArrayList(this.f53316e);
                        this.f53314c |= 2;
                    }
                    this.f53316e.addAll(c10136wk.f53591e);
                }
                onChanged();
            }
        } else if (!c10136wk.f53591e.isEmpty()) {
            if (this.f53317f.f38676b.isEmpty()) {
                this.f53317f.f38675a = null;
                this.f53317f = null;
                this.f53316e = c10136wk.f53591e;
                this.f53314c &= -3;
                this.f53317f = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f53317f.a(c10136wk.f53591e);
            }
        }
        a((AbstractC7844iz) c10136wk);
        onChanged();
        return this;
    }
}
