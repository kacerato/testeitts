package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C5220Gk extends AbstractC7679hz {

    public int f40568c;

    public int f40569d;

    public boolean f40570e;

    public int f40571f;

    public boolean f40572g;

    public boolean f40573h;

    public boolean f40574i;

    public List f40575j;

    public C4862Af0 f40576k;

    public C5220Gk() {
        this.f40569d = 0;
        this.f40571f = 0;
        this.f40575j = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C5220Gk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5394Jk c5394Jk = null;
        try {
            try {
                a((C5394Jk) C5394Jk.f41479m.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5394Jk c5394Jk2 = (C5394Jk) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5394Jk = c5394Jk2;
                    if (c5394Jk != null) {
                        a(c5394Jk);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5394Jk != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C5220Gk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C5394Jk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C5220Gk) m1188clone();
    }

    @Override
    public final C5394Jk m1181buildPartial() {
        C5394Jk c5394Jk = new C5394Jk(this);
        int i10 = this.f40568c;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c5394Jk.f41481d = this.f40569d;
        if ((i10 & 2) != 0) {
            c5394Jk.f41482e = this.f40570e;
            i11 |= 2;
        }
        if ((i10 & 4) != 0) {
            i11 |= 4;
        }
        c5394Jk.f41483f = this.f40571f;
        if ((i10 & 8) != 0) {
            c5394Jk.f41484g = this.f40572g;
            i11 |= 8;
        }
        if ((i10 & 16) != 0) {
            c5394Jk.f41485h = this.f40573h;
            i11 |= 16;
        }
        if ((i10 & 32) != 0) {
            c5394Jk.f41486i = this.f40574i;
            i11 |= 32;
        }
        C4862Af0 c4862Af0 = this.f40576k;
        if (c4862Af0 == null) {
            if ((i10 & 64) != 0) {
                this.f40575j = Collections.unmodifiableList(this.f40575j);
                this.f40568c &= -65;
            }
            c5394Jk.f41487j = this.f40575j;
        } else {
            c5394Jk.f41487j = c4862Af0.b();
        }
        c5394Jk.f41480c = i11;
        onBuilt();
        return c5394Jk;
    }

    public final C4862Af0 e() {
        if (this.f40576k == null) {
            this.f40576k = new C4862Af0(this.f40575j, (this.f40568c & 64) != 0, getParentForChildren(), isClean());
            this.f40575j = null;
        }
        return this.f40576k;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5394Jk.f41478l;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54486C;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54487D.a(C5394Jk.class, C5220Gk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f40576k;
            if (i10 >= (c4862Af0 == null ? this.f40575j.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f40576k;
            if (!(c4862Af02 == null ? (C10473yl) this.f40575j.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C5220Gk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C5220Gk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C5220Gk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5394Jk.f41478l;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C5220Gk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5394Jk m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5394Jk) {
            return a((C5394Jk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C5220Gk(C7011dz c7011dz) {
        super(c7011dz);
        this.f40569d = 0;
        this.f40571f = 0;
        this.f40575j = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5394Jk) {
            return a((C5394Jk) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C5220Gk a(C5394Jk c5394Jk) {
        if (c5394Jk == C5394Jk.f41478l) {
            return this;
        }
        if ((c5394Jk.f41480c & 1) != 0) {
            EnumC5278Hk a10 = EnumC5278Hk.a(c5394Jk.f41481d);
            if (a10 == null) {
                a10 = EnumC5278Hk.f40850c;
            }
            this.f40568c |= 1;
            this.f40569d = a10.f40853b;
            onChanged();
        }
        if (c5394Jk.a()) {
            boolean z10 = c5394Jk.f41482e;
            this.f40568c |= 2;
            this.f40570e = z10;
            onChanged();
        }
        if ((c5394Jk.f41480c & 4) != 0) {
            EnumC5336Ik a11 = EnumC5336Ik.a(c5394Jk.f41483f);
            if (a11 == null) {
                a11 = EnumC5336Ik.f41192c;
            }
            this.f40568c |= 4;
            this.f40571f = a11.f41195b;
            onChanged();
        }
        if ((c5394Jk.f41480c & 8) != 0) {
            boolean z11 = c5394Jk.f41484g;
            this.f40568c |= 8;
            this.f40572g = z11;
            onChanged();
        }
        if ((c5394Jk.f41480c & 16) != 0) {
            boolean z12 = c5394Jk.f41485h;
            this.f40568c |= 16;
            this.f40573h = z12;
            onChanged();
        }
        if ((c5394Jk.f41480c & 32) != 0) {
            boolean z13 = c5394Jk.f41486i;
            this.f40568c |= 32;
            this.f40574i = z13;
            onChanged();
        }
        if (this.f40576k == null) {
            if (!c5394Jk.f41487j.isEmpty()) {
                if (this.f40575j.isEmpty()) {
                    this.f40575j = c5394Jk.f41487j;
                    this.f40568c &= -65;
                } else {
                    if ((this.f40568c & 64) == 0) {
                        this.f40575j = new ArrayList(this.f40575j);
                        this.f40568c |= 64;
                    }
                    this.f40575j.addAll(c5394Jk.f41487j);
                }
                onChanged();
            }
        } else if (!c5394Jk.f41487j.isEmpty()) {
            if (this.f40576k.f38676b.isEmpty()) {
                this.f40576k.f38675a = null;
                this.f40576k = null;
                this.f40575j = c5394Jk.f41487j;
                this.f40568c &= -65;
                this.f40576k = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f40576k.a(c5394Jk.f41487j);
            }
        }
        a((AbstractC7844iz) c5394Jk);
        onChanged();
        return this;
    }
}
