package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C5915Sk extends AbstractC7679hz {

    public int f44293c;

    public boolean f44294d;

    public boolean f44295e;

    public boolean f44296f;

    public boolean f44297g;

    public List f44298h;

    public C4862Af0 f44299i;

    public C5915Sk() {
        this.f44298h = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5915Sk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5973Tk c5973Tk = null;
        try {
            try {
                a((C5973Tk) C5973Tk.f44564k.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5973Tk c5973Tk2 = (C5973Tk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5973Tk = c5973Tk2;
                    if (c5973Tk != null) {
                        a(c5973Tk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5973Tk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5915Sk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5973Tk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5915Sk) m1188clone();
    }

    @Override
    public final C5973Tk m1181buildPartial() {
        int i10;
        C5973Tk c5973Tk = new C5973Tk(this);
        int i11 = this.f44293c;
        if ((i11 & 1) != 0) {
            c5973Tk.f44566d = this.f44294d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            c5973Tk.f44567e = this.f44295e;
            i10 |= 2;
        }
        if ((i11 & 4) != 0) {
            c5973Tk.f44568f = this.f44296f;
            i10 |= 4;
        }
        if ((i11 & 8) != 0) {
            c5973Tk.f44569g = this.f44297g;
            i10 |= 8;
        }
        C4862Af0 c4862Af0 = this.f44299i;
        if (c4862Af0 == null) {
            if ((i11 & 16) != 0) {
                this.f44298h = Collections.unmodifiableList(this.f44298h);
                this.f44293c &= -17;
            }
            c5973Tk.f44570h = this.f44298h;
        } else {
            c5973Tk.f44570h = c4862Af0.b();
        }
        c5973Tk.f44565c = i10;
        onBuilt();
        return c5973Tk;
    }

    public final C4862Af0 e() {
        if (this.f44299i == null) {
            this.f44299i = new C4862Af0(this.f44298h, (this.f44293c & 16) != 0, getParentForChildren(), isClean());
            this.f44298h = null;
        }
        return this.f44299i;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5973Tk.f44563j;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54484A;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54485B.a(C5973Tk.class, C5915Sk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f44299i;
            if (i10 >= (c4862Af0 == null ? this.f44298h.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f44299i;
            if (!(c4862Af02 == null ? (C10473yl) this.f44298h.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5915Sk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5915Sk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5915Sk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5973Tk.f44563j;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5915Sk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5973Tk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5973Tk) {
            return a((C5973Tk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C5915Sk(C7011dz c7011dz) {
        super(c7011dz);
        this.f44298h = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5973Tk) {
            return a((C5973Tk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C5915Sk a(C5973Tk c5973Tk) {
        if (c5973Tk == C5973Tk.f44563j) {
            return this;
        }
        if ((c5973Tk.f44565c & 1) != 0) {
            boolean z10 = c5973Tk.f44566d;
            this.f44293c |= 1;
            this.f44294d = z10;
            onChanged();
        }
        if ((c5973Tk.f44565c & 2) != 0) {
            boolean z11 = c5973Tk.f44567e;
            this.f44293c |= 2;
            this.f44295e = z11;
            onChanged();
        }
        if ((c5973Tk.f44565c & 4) != 0) {
            boolean z12 = c5973Tk.f44568f;
            this.f44293c |= 4;
            this.f44296f = z12;
            onChanged();
        }
        if ((c5973Tk.f44565c & 8) != 0) {
            boolean z13 = c5973Tk.f44569g;
            this.f44293c |= 8;
            this.f44297g = z13;
            onChanged();
        }
        if (this.f44299i == null) {
            if (!c5973Tk.f44570h.isEmpty()) {
                if (this.f44298h.isEmpty()) {
                    this.f44298h = c5973Tk.f44570h;
                    this.f44293c &= -17;
                } else {
                    if ((this.f44293c & 16) == 0) {
                        this.f44298h = new ArrayList(this.f44298h);
                        this.f44293c |= 16;
                    }
                    this.f44298h.addAll(c5973Tk.f44570h);
                }
                onChanged();
            }
        } else if (!c5973Tk.f44570h.isEmpty()) {
            if (this.f44299i.f38676b.isEmpty()) {
                this.f44299i.f38675a = null;
                this.f44299i = null;
                this.f44298h = c5973Tk.f44570h;
                this.f44293c &= -17;
                this.f44299i = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f44299i.a(c5973Tk.f44570h);
            }
        }
        a((AbstractC7844iz) c5973Tk);
        onChanged();
        return this;
    }
}
