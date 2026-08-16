package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C10470yk extends AbstractC7679hz {

    public int f54129c;

    public List f54130d;

    public C4862Af0 f54131e;

    public C10470yk() {
        this.f54130d = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C10470yk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10637zk c10637zk = null;
        try {
            try {
                a((C10637zk) C10637zk.f54478f.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10637zk c10637zk2 = (C10637zk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10637zk = c10637zk2;
                    if (c10637zk != null) {
                        a(c10637zk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10637zk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C10470yk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C10637zk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C10470yk) m1188clone();
    }

    @Override
    public final C10637zk m1181buildPartial() {
        C10637zk c10637zk = new C10637zk(this);
        int i10 = this.f54129c;
        C4862Af0 c4862Af0 = this.f54131e;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f54130d = Collections.unmodifiableList(this.f54130d);
                this.f54129c &= -2;
            }
            c10637zk.f54479c = this.f54130d;
        } else {
            c10637zk.f54479c = c4862Af0.b();
        }
        onBuilt();
        return c10637zk;
    }

    public final C4862Af0 e() {
        if (this.f54131e == null) {
            this.f54131e = new C4862Af0(this.f54130d, (this.f54129c & 1) != 0, getParentForChildren(), isClean());
            this.f54130d = null;
        }
        return this.f54131e;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10637zk.f54477e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54514i;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54515j.a(C10637zk.class, C10470yk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f54131e;
            if (i10 >= (c4862Af0 == null ? this.f54130d.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f54131e;
            if (!(c4862Af02 == null ? (C10473yl) this.f54130d.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C10470yk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C10470yk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C10470yk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10637zk.f54477e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C10470yk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10637zk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10637zk) {
            return a((C10637zk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C10470yk(C7011dz c7011dz) {
        super(c7011dz);
        this.f54130d = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10637zk) {
            return a((C10637zk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C10470yk a(C10637zk c10637zk) {
        if (c10637zk == C10637zk.f54477e) {
            return this;
        }
        if (this.f54131e == null) {
            if (!c10637zk.f54479c.isEmpty()) {
                if (this.f54130d.isEmpty()) {
                    this.f54130d = c10637zk.f54479c;
                    this.f54129c &= -2;
                } else {
                    if ((this.f54129c & 1) == 0) {
                        this.f54130d = new ArrayList(this.f54130d);
                        this.f54129c |= 1;
                    }
                    this.f54130d.addAll(c10637zk.f54479c);
                }
                onChanged();
            }
        } else if (!c10637zk.f54479c.isEmpty()) {
            if (this.f54131e.f38676b.isEmpty()) {
                this.f54131e.f38675a = null;
                this.f54131e = null;
                this.f54130d = c10637zk.f54479c;
                this.f54129c &= -2;
                this.f54131e = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f54131e.a(c10637zk.f54479c);
            }
        }
        a((AbstractC7844iz) c10637zk);
        onChanged();
        return this;
    }
}
