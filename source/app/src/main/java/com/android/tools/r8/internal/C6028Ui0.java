package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6028Ui0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f44840b;

    public C6256Yi0 f44841c;

    public String f44842d;

    public List f44843e;

    public C4862Af0 f44844f;

    public C6028Ui0() {
        boolean z10;
        this.f44842d = "";
        this.f44843e = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6028Ui0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C6085Vi0 c6085Vi0 = null;
        try {
            try {
                C6085Vi0.f45130g.getClass();
                a(new C6085Vi0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C6085Vi0 c6085Vi02 = (C6085Vi0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c6085Vi0 = c6085Vi02;
                    if (c6085Vi0 != null) {
                        a(c6085Vi0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c6085Vi0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C6028Ui0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C6085Vi0 m1181buildPartial() {
        C6085Vi0 c6085Vi0 = new C6085Vi0(this);
        c6085Vi0.f45131b = this.f44841c;
        c6085Vi0.f45132c = this.f44842d;
        C4862Af0 c4862Af0 = this.f44844f;
        if (c4862Af0 == null) {
            if ((this.f44840b & 1) != 0) {
                this.f44843e = Collections.unmodifiableList(this.f44843e);
                this.f44840b &= -2;
            }
            c6085Vi0.f45133d = this.f44843e;
        } else {
            c6085Vi0.f45133d = c4862Af0.b();
        }
        onBuilt();
        return c6085Vi0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C6085Vi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final C4862Af0 c() {
        if (this.f44844f == null) {
            this.f44844f = new C4862Af0(this.f44843e, (this.f44840b & 1) != 0, getParentForChildren(), isClean());
            this.f44843e = null;
        }
        return this.f44844f;
    }

    public final Object clone() {
        return (C6028Ui0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C6085Vi0.f45129f;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53298s;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53300t.a(C6085Vi0.class, C6028Ui0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C6028Ui0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C6028Ui0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C6028Ui0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C6085Vi0.f45129f;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C6028Ui0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C6085Vi0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6085Vi0) {
            return a((C6085Vi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C6028Ui0(C7011dz c7011dz) {
        super(c7011dz);
        boolean z10;
        this.f44842d = "";
        this.f44843e = Collections.EMPTY_LIST;
        z10 = AbstractC10181wz.alwaysUseFieldBuilders;
        if (z10) {
            c();
        }
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C6085Vi0) {
            return a((C6085Vi0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C6028Ui0 a(C6085Vi0 c6085Vi0) {
        if (c6085Vi0 == C6085Vi0.f45129f) {
            return this;
        }
        C6256Yi0 c6256Yi0 = c6085Vi0.f45131b;
        if (c6256Yi0 != null) {
            C6256Yi0 c6256Yi02 = this.f44841c;
            if (c6256Yi02 != null) {
                this.f44841c = C6256Yi0.f46066d.toBuilder().a(c6256Yi02).a(c6256Yi0).m1181buildPartial();
            } else {
                this.f44841c = c6256Yi0;
            }
            onChanged();
        }
        String str = c6085Vi0.f45132c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c6085Vi0.f45132c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f44842d = c6085Vi0.f45132c;
            onChanged();
        }
        if (this.f44844f == null) {
            if (!c6085Vi0.f45133d.isEmpty()) {
                if (this.f44843e.isEmpty()) {
                    this.f44843e = c6085Vi0.f45133d;
                    this.f44840b &= -2;
                } else {
                    if ((this.f44840b & 1) == 0) {
                        this.f44843e = new ArrayList(this.f44843e);
                        this.f44840b |= 1;
                    }
                    this.f44843e.addAll(c6085Vi0.f45133d);
                }
                onChanged();
            }
        } else if (!c6085Vi0.f45133d.isEmpty()) {
            if (this.f44844f.f38676b.isEmpty()) {
                this.f44844f.f38675a = null;
                this.f44844f = null;
                this.f44843e = c6085Vi0.f45133d;
                this.f44840b &= -2;
                this.f44844f = AbstractC10181wz.alwaysUseFieldBuilders ? c() : null;
            } else {
                this.f44844f.a(c6085Vi0.f45133d);
            }
        }
        onChanged();
        return this;
    }
}
