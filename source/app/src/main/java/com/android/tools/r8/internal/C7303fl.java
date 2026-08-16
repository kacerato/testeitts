package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C7303fl extends AbstractC7679hz {

    public int f48083c;

    public List f48084d;

    public C4862Af0 f48085e;

    public C7303fl() {
        this.f48084d = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C7303fl mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C7470gl c7470gl = null;
        try {
            try {
                a((C7470gl) C7470gl.f48354f.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C7470gl c7470gl2 = (C7470gl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c7470gl = c7470gl2;
                    if (c7470gl != null) {
                        a(c7470gl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c7470gl != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C7303fl) a(c5685Ol, obj);
    }

    @Override
    public final InterfaceC7262fW build() {
        C7470gl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C7303fl) m1188clone();
    }

    @Override
    public final C7470gl m1181buildPartial() {
        C7470gl c7470gl = new C7470gl(this);
        int i10 = this.f48083c;
        C4862Af0 c4862Af0 = this.f48085e;
        if (c4862Af0 == null) {
            if ((i10 & 1) != 0) {
                this.f48084d = Collections.unmodifiableList(this.f48084d);
                this.f48083c &= -2;
            }
            c7470gl.f48355c = this.f48084d;
        } else {
            c7470gl.f48355c = c4862Af0.b();
        }
        onBuilt();
        return c7470gl;
    }

    public final C4862Af0 e() {
        if (this.f48085e == null) {
            this.f48085e = new C4862Af0(this.f48084d, (this.f48083c & 1) != 0, getParentForChildren(), isClean());
            this.f48084d = null;
        }
        return this.f48085e;
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C7470gl.f48353e;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54488E;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54489F.a(C7470gl.class, C7303fl.class);
    }

    @Override
    public final boolean isInitialized() {
        int i10 = 0;
        while (true) {
            C4862Af0 c4862Af0 = this.f48085e;
            if (i10 >= (c4862Af0 == null ? this.f48084d.size() : c4862Af0.f38676b.size())) {
                return c();
            }
            C4862Af0 c4862Af02 = this.f48085e;
            if (!(c4862Af02 == null ? (C10473yl) this.f48084d.get(i10) : (C10473yl) c4862Af02.a(i10, false)).isInitialized()) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C7303fl) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C7303fl) b(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C7303fl) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C7470gl.f48353e;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C7303fl) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C7470gl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7470gl) {
            return a((C7470gl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C7303fl(C7011dz c7011dz) {
        super(c7011dz);
        this.f48084d = Collections.EMPTY_LIST;
        if (AbstractC10181wz.alwaysUseFieldBuilders) {
            e();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C7470gl) {
            return a((C7470gl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C7303fl a(C7470gl c7470gl) {
        if (c7470gl == C7470gl.f48353e) {
            return this;
        }
        if (this.f48085e == null) {
            if (!c7470gl.f48355c.isEmpty()) {
                if (this.f48084d.isEmpty()) {
                    this.f48084d = c7470gl.f48355c;
                    this.f48083c &= -2;
                } else {
                    if ((this.f48083c & 1) == 0) {
                        this.f48084d = new ArrayList(this.f48084d);
                        this.f48083c |= 1;
                    }
                    this.f48084d.addAll(c7470gl.f48355c);
                }
                onChanged();
            }
        } else if (!c7470gl.f48355c.isEmpty()) {
            if (this.f48085e.f38676b.isEmpty()) {
                this.f48085e.f38675a = null;
                this.f48085e = null;
                this.f48084d = c7470gl.f48355c;
                this.f48083c &= -2;
                this.f48085e = AbstractC10181wz.alwaysUseFieldBuilders ? e() : null;
            } else {
                this.f48085e.a(c7470gl.f48355c);
            }
        }
        a((AbstractC7844iz) c7470gl);
        onChanged();
        return this;
    }
}
