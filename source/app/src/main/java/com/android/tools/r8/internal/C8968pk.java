package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C8968pk extends AbstractC7679hz {

    public int f51597c;

    public boolean f51598d;

    public boolean f51599e;

    public List f51600f;

    public C4862Af0 f51601g;

    public C8968pk() {
        this.f51600f = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8968pk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9135qk c9135qk = null;
        try {
            try {
                a((C9135qk) C9135qk.f51868i.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9135qk c9135qk2 = (C9135qk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9135qk = c9135qk2;
                    if (c9135qk != null) {
                        a(c9135qk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9135qk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C8968pk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C9135qk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C8968pk) m1188clone();
    }

    @Override
    public final C9135qk m1181buildPartial() {
        int i10;
        C9135qk c9135qk = new C9135qk(this);
        int i11 = this.f51597c;
        if ((i11 & 1) != 0) {
            c9135qk.f51870d = this.f51598d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            c9135qk.f51871e = this.f51599e;
            i10 |= 2;
        }
        C4862Af0 c4862Af0 = this.f51601g;
        if (c4862Af0 == null) {
            if ((i11 & 4) != 0) {
                this.f51600f = Collections.unmodifiableList(this.f51600f);
                this.f51597c &= -5;
            }
            c9135qk.f51872f = this.f51600f;
        } else {
            c9135qk.f51872f = c4862Af0.b();
        }
        c9135qk.f51869c = i10;
        onBuilt();
        return c9135qk;
    }

    public final C4862Af0 e() {
        if (this.f51601g == null) {
            this.f51601g = new C4862Af0(this.f51600f, (this.f51597c & 4) != 0, getParentForChildren(), isClean());
            this.f51600f = null;
        }
        return this.f51601g;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9135qk.f51867h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54490G;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54491H.a(C9135qk.class, C8968pk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f51601g;
            if (i10 >= (c4862Af0 == null ? this.f51600f.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f51601g;
            if (!(c4862Af02 == null ? (C10473yl) this.f51600f.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C8968pk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C8968pk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C8968pk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9135qk.f51867h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C8968pk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C9135qk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9135qk) {
            return a((C9135qk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C8968pk(C7011dz c7011dz) {
        super(c7011dz);
        this.f51600f = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9135qk) {
            return a((C9135qk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C8968pk a(C9135qk c9135qk) {
        if (c9135qk == C9135qk.f51867h) {
            return this;
        }
        if ((c9135qk.f51869c & 1) != 0) {
            boolean z10 = c9135qk.f51870d;
            this.f51597c |= 1;
            this.f51598d = z10;
            onChanged();
        }
        if ((c9135qk.f51869c & 2) != 0) {
            boolean z11 = c9135qk.f51871e;
            this.f51597c |= 2;
            this.f51599e = z11;
            onChanged();
        }
        if (this.f51601g == null) {
            if (!c9135qk.f51872f.isEmpty()) {
                if (this.f51600f.isEmpty()) {
                    this.f51600f = c9135qk.f51872f;
                    this.f51597c &= -5;
                } else {
                    if ((this.f51597c & 4) == 0) {
                        this.f51600f = new ArrayList(this.f51600f);
                        this.f51597c |= 4;
                    }
                    this.f51600f.addAll(c9135qk.f51872f);
                }
                onChanged();
            }
        } else if (!c9135qk.f51872f.isEmpty()) {
            if (this.f51601g.f38676b.isEmpty()) {
                this.f51601g.f38675a = null;
                this.f51601g = null;
                this.f51600f = c9135qk.f51872f;
                this.f51597c &= -5;
                this.f51601g = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f51601g.a(c9135qk.f51872f);
            }
        }
        a((AbstractC7844iz) c9135qk);
        onChanged();
        return this;
    }
}
