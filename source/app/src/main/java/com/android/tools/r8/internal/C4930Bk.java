package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C4930Bk extends AbstractC7345fz implements InterfaceC8596nW {

    public int f38990b;

    public Serializable f38991c;

    public int f38992d;

    public int f38993e;

    public int f38994f;

    public Serializable f38995g;

    public Serializable f38996h;

    public Serializable f38997i;

    public int f38998j;

    public Serializable f38999k;

    public C5394Jk f39000l;

    public final C5109Em0 f39001m;

    public boolean f39002n;

    public C4930Bk() {
        super(null);
        C5109Em0 c5109Em0;
        C5394Jk c5394Jk;
        this.f38991c = "";
        this.f38993e = 1;
        this.f38994f = 1;
        this.f38995g = "";
        this.f38996h = "";
        this.f38997i = "";
        this.f38999k = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f39001m) == null) {
            if (c5109Em0 == null) {
                c5394Jk = this.f39000l;
                if (c5394Jk == null) {
                    c5394Jk = C5394Jk.f41478l;
                }
            } else {
                c5394Jk = (C5394Jk) c5109Em0.d();
            }
            this.f39001m = new C5109Em0(c5394Jk, getParentForChildren(), isClean());
            this.f39000l = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C4930Bk mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C5104Ek c5104Ek = null;
        try {
            try {
                a((C5104Ek) C5104Ek.f39992p.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C5104Ek c5104Ek2 = (C5104Ek) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c5104Ek = c5104Ek2;
                    if (c5104Ek != null) {
                        a(c5104Ek);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c5104Ek != null) {
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
    public final C5104Ek m1181buildPartial() {
        C5104Ek c5104Ek = new C5104Ek(this);
        int i10 = this.f38990b;
        int i11 = (i10 & 1) != 0 ? 1 : 0;
        c5104Ek.f39994c = this.f38991c;
        if ((i10 & 2) != 0) {
            c5104Ek.f39995d = this.f38992d;
            i11 |= 2;
        }
        if ((i10 & 4) != 0) {
            i11 |= 4;
        }
        c5104Ek.f39996e = this.f38993e;
        if ((i10 & 8) != 0) {
            i11 |= 8;
        }
        c5104Ek.f39997f = this.f38994f;
        if ((i10 & 16) != 0) {
            i11 |= 16;
        }
        c5104Ek.f39998g = this.f38995g;
        if ((i10 & 32) != 0) {
            i11 |= 32;
        }
        c5104Ek.f39999h = this.f38996h;
        if ((i10 & 64) != 0) {
            i11 |= 64;
        }
        c5104Ek.f40000i = this.f38997i;
        if ((i10 & 128) != 0) {
            c5104Ek.f40001j = this.f38998j;
            i11 |= 128;
        }
        if ((i10 & 256) != 0) {
            i11 |= 256;
        }
        c5104Ek.f40002k = this.f38999k;
        if ((i10 & 512) != 0) {
            C5109Em0 c5109Em0 = this.f39001m;
            if (c5109Em0 == null) {
                c5104Ek.f40003l = this.f39000l;
            } else {
                c5109Em0.f40016d = true;
                c5104Ek.f40003l = (C5394Jk) c5109Em0.d();
            }
            i11 |= 512;
        }
        if ((i10 & 1024) != 0) {
            c5104Ek.f40004m = this.f39002n;
            i11 |= 1024;
        }
        c5104Ek.f39993b = i11;
        onBuilt();
        return c5104Ek;
    }

    @Override
    public final InterfaceC7262fW build() {
        C5104Ek m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C4930Bk) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C5104Ek.f39991o;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54516k;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54517l.a(C5104Ek.class, C4930Bk.class);
    }

    @Override
    public final boolean isInitialized() {
        C5394Jk c5394Jk;
        if ((this.f38990b & 512) == 0) {
            return true;
        }
        C5109Em0 c5109Em0 = this.f39001m;
        if (c5109Em0 == null) {
            c5394Jk = this.f39000l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
        } else {
            c5394Jk = (C5394Jk) c5109Em0.d();
        }
        return c5394Jk.isInitialized();
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C4930Bk) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C4930Bk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C5104Ek.f39991o;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C4930Bk) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C5104Ek m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5104Ek) {
            return a((C5104Ek) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C5104Ek) {
            return a((C5104Ek) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C4930Bk a(C5104Ek c5104Ek) {
        C5394Jk c5394Jk;
        C5394Jk c5394Jk2;
        if (c5104Ek == C5104Ek.f39991o) {
            return this;
        }
        if ((c5104Ek.f39993b & 1) != 0) {
            this.f38990b |= 1;
            this.f38991c = c5104Ek.f39994c;
            onChanged();
        }
        if ((c5104Ek.f39993b & 2) != 0) {
            int i10 = c5104Ek.f39995d;
            this.f38990b |= 2;
            this.f38992d = i10;
            onChanged();
        }
        if ((c5104Ek.f39993b & 4) != 0) {
            EnumC4988Ck a10 = EnumC4988Ck.a(c5104Ek.f39996e);
            if (a10 == null) {
                a10 = EnumC4988Ck.f39333c;
            }
            this.f38990b |= 4;
            this.f38993e = a10.f39336b;
            onChanged();
        }
        if (c5104Ek.h()) {
            EnumC5046Dk a11 = EnumC5046Dk.a(c5104Ek.f39997f);
            if (a11 == null) {
                a11 = EnumC5046Dk.TYPE_DOUBLE;
            }
            this.f38990b |= 8;
            this.f38994f = a11.f39625b;
            onChanged();
        }
        if (c5104Ek.i()) {
            this.f38990b |= 16;
            this.f38995g = c5104Ek.f39998g;
            onChanged();
        }
        if (c5104Ek.e()) {
            this.f38990b |= 32;
            this.f38996h = c5104Ek.f39999h;
            onChanged();
        }
        if (c5104Ek.d()) {
            this.f38990b |= 64;
            this.f38997i = c5104Ek.f40000i;
            onChanged();
        }
        if (c5104Ek.f()) {
            int i11 = c5104Ek.f40001j;
            this.f38990b |= 128;
            this.f38998j = i11;
            onChanged();
        }
        if ((c5104Ek.f39993b & 256) != 0) {
            this.f38990b |= 256;
            this.f38999k = c5104Ek.f40002k;
            onChanged();
        }
        if (c5104Ek.g()) {
            C5394Jk c5394Jk3 = c5104Ek.f40003l;
            if (c5394Jk3 == null) {
                c5394Jk3 = C5394Jk.f41478l;
            }
            C5109Em0 c5109Em0 = this.f39001m;
            if (c5109Em0 == null) {
                if ((this.f38990b & 512) != 0 && (c5394Jk = this.f39000l) != null && c5394Jk != (c5394Jk2 = C5394Jk.f41478l)) {
                    this.f39000l = c5394Jk2.toBuilder().a(c5394Jk).a(c5394Jk3).m1181buildPartial();
                } else {
                    this.f39000l = c5394Jk3;
                }
                onChanged();
            } else {
                c5109Em0.a(c5394Jk3);
            }
            this.f38990b |= 512;
        }
        if ((c5104Ek.f39993b & 1024) != 0) {
            boolean z10 = c5104Ek.f40004m;
            this.f38990b |= 1024;
            this.f39002n = z10;
            onChanged();
        }
        onChanged();
        return this;
    }

    public C4930Bk(C7011dz c7011dz) {
        super(c7011dz);
        C5109Em0 c5109Em0;
        C5394Jk c5394Jk;
        this.f38991c = "";
        this.f38993e = 1;
        this.f38994f = 1;
        this.f38995g = "";
        this.f38996h = "";
        this.f38997i = "";
        this.f38999k = "";
        if (AbstractC10181wz.alwaysUseFieldBuilders && (c5109Em0 = this.f39001m) == null) {
            if (c5109Em0 == null) {
                c5394Jk = this.f39000l;
                if (c5394Jk == null) {
                    c5394Jk = C5394Jk.f41478l;
                }
            } else {
                c5394Jk = (C5394Jk) c5109Em0.d();
            }
            this.f39001m = new C5109Em0(c5394Jk, getParentForChildren(), isClean());
            this.f39000l = null;
        }
    }
}
