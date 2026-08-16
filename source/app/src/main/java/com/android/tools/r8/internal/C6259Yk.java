package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C6259Yk extends AbstractC7679hz {

    public int f46075c;

    public boolean f46076d;

    public int f46077e;

    public List f46078f;

    public C4862Af0 f46079g;

    public C6259Yk() {
        this.f46077e = 0;
        this.f46078f = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6259Yk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6470al c6470al = null;
        try {
            try {
                a((C6470al) C6470al.f46618i.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6470al c6470al2 = (C6470al) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6470al = c6470al2;
                    if (c6470al != null) {
                        a(c6470al);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6470al != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6259Yk) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C6470al m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C6259Yk) m1188clone();
    }

    @Override
    public final C6470al m1181buildPartial() {
        int i10;
        C6470al c6470al = new C6470al(this);
        int i11 = this.f46075c;
        if ((i11 & 1) != 0) {
            c6470al.f46620d = this.f46076d;
            i10 = 1;
        } else {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 |= 2;
        }
        c6470al.f46621e = this.f46077e;
        C4862Af0 c4862Af0 = this.f46079g;
        if (c4862Af0 == null) {
            if ((i11 & 4) != 0) {
                this.f46078f = Collections.unmodifiableList(this.f46078f);
                this.f46075c &= -5;
            }
            c6470al.f46622f = this.f46078f;
        } else {
            c6470al.f46622f = c4862Af0.b();
        }
        c6470al.f46619c = i10;
        onBuilt();
        return c6470al;
    }

    public final C4862Af0 e() {
        if (this.f46079g == null) {
            this.f46079g = new C4862Af0(this.f46078f, (this.f46075c & 4) != 0, getParentForChildren(), isClean());
            this.f46078f = null;
        }
        return this.f46079g;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6470al.f46617h;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54496M;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54497N.a(C6470al.class, C6259Yk.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f46079g;
            if (i10 >= (c4862Af0 == null ? this.f46078f.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f46079g;
            if (!(c4862Af02 == null ? (C10473yl) this.f46078f.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6259Yk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6259Yk) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6259Yk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6470al.f46617h;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6259Yk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6470al m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6470al) {
            return a((C6470al) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C6259Yk(C7011dz c7011dz) {
        super(c7011dz);
        this.f46077e = 0;
        this.f46078f = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6470al) {
            return a((C6470al) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C6259Yk a(C6470al c6470al) {
        if (c6470al == C6470al.f46617h) {
            return this;
        }
        if ((c6470al.f46619c & 1) != 0) {
            boolean z10 = c6470al.f46620d;
            this.f46075c |= 1;
            this.f46076d = z10;
            onChanged();
        }
        if ((c6470al.f46619c & 2) != 0) {
            EnumC6316Zk a10 = EnumC6316Zk.a(c6470al.f46621e);
            if (a10 == null) {
                a10 = EnumC6316Zk.f46335c;
            }
            this.f46075c |= 2;
            this.f46077e = a10.f46338b;
            onChanged();
        }
        if (this.f46079g == null) {
            if (!c6470al.f46622f.isEmpty()) {
                if (this.f46078f.isEmpty()) {
                    this.f46078f = c6470al.f46622f;
                    this.f46075c &= -5;
                } else {
                    if ((this.f46075c & 4) == 0) {
                        this.f46078f = new ArrayList(this.f46078f);
                        this.f46075c |= 4;
                    }
                    this.f46078f.addAll(c6470al.f46622f);
                }
                onChanged();
            }
        } else if (!c6470al.f46622f.isEmpty()) {
            if (this.f46079g.f38676b.isEmpty()) {
                this.f46079g.f38675a = null;
                this.f46079g = null;
                this.f46078f = c6470al.f46622f;
                this.f46075c &= -5;
                this.f46079g = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f46079g.a(c6470al.f46622f);
            }
        }
        a((AbstractC7844iz) c6470al);
        onChanged();
        return this;
    }
}
