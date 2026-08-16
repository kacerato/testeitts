package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Map;

public final class C9138ql extends AbstractC7345fz implements InterfaceC8596nW {

    public int f51876b;

    public TI f51877c;

    public TI f51878d;

    public Serializable f51879e;

    public Serializable f51880f;

    public InterfaceC10589zR f51881g;

    public C9138ql() {
        super(null);
        this.f51877c = AbstractC10181wz.emptyIntList();
        this.f51878d = AbstractC10181wz.emptyIntList();
        this.f51879e = "";
        this.f51880f = "";
        this.f51881g = C10255xR.f53759d;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9138ql mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C9304rl c9304rl = null;
        try {
            try {
                a((C9304rl) C9304rl.f52126l.parsePartialFrom(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C9304rl c9304rl2 = (C9304rl) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c9304rl = c9304rl2;
                    if (c9304rl != null) {
                        a(c9304rl);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c9304rl != null) {
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
    public final C9304rl m1181buildPartial() {
        C9304rl c9304rl = new C9304rl(this);
        int i10 = this.f51876b;
        if ((i10 & 1) != 0) {
            ((AbstractC9353s1) this.f51877c).f52249b = false;
            this.f51876b = i10 & (-2);
        }
        c9304rl.f52128c = this.f51877c;
        int i11 = this.f51876b;
        if ((i11 & 2) != 0) {
            ((AbstractC9353s1) this.f51878d).f52249b = false;
            this.f51876b = i11 & (-3);
        }
        c9304rl.f52130e = this.f51878d;
        int i12 = (i10 & 4) != 0 ? 1 : 0;
        c9304rl.f52132g = this.f51879e;
        if ((i10 & 8) != 0) {
            i12 |= 2;
        }
        c9304rl.f52133h = this.f51880f;
        if ((this.f51876b & 16) != 0) {
            this.f51881g = this.f51881g.e();
            this.f51876b &= -17;
        }
        c9304rl.f52134i = this.f51881g;
        c9304rl.f52127b = i12;
        onBuilt();
        return c9304rl;
    }

    @Override
    public final InterfaceC7262fW build() {
        C9304rl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9138ql) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C9304rl.f52125k;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC10640zl.f54504U;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC10640zl.f54505V.a(C9304rl.class, C9138ql.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9138ql) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        C9847uz.a(internalGetFieldAccessorTable(), c5685Ol).a(this, obj);
        return this;
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9138ql) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C9304rl.f52125k;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9138ql) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C9304rl m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9304rl) {
            return a((C9304rl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public C9138ql(C7011dz c7011dz) {
        super(c7011dz);
        this.f51877c = AbstractC10181wz.emptyIntList();
        this.f51878d = AbstractC10181wz.emptyIntList();
        this.f51879e = "";
        this.f51880f = "";
        this.f51881g = C10255xR.f53759d;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C9304rl) {
            return a((C9304rl) interfaceC7262fW);
        }
        mergeFrom(interfaceC7262fW, (Map<C5685Ol, Object>) interfaceC7262fW.getAllFields());
        return this;
    }

    public final C9138ql a(C9304rl c9304rl) {
        if (c9304rl == C9304rl.f52125k) {
            return this;
        }
        if (!c9304rl.f52128c.isEmpty()) {
            if (this.f51877c.isEmpty()) {
                this.f51877c = c9304rl.f52128c;
                this.f51876b &= -2;
            } else {
                if ((this.f51876b & 1) == 0) {
                    this.f51877c = AbstractC10181wz.mutableCopy(this.f51877c);
                    this.f51876b |= 1;
                }
                ((DH) this.f51877c).addAll(c9304rl.f52128c);
            }
            onChanged();
        }
        if (!c9304rl.f52130e.isEmpty()) {
            if (this.f51878d.isEmpty()) {
                this.f51878d = c9304rl.f52130e;
                this.f51876b &= -3;
            } else {
                if ((this.f51876b & 2) == 0) {
                    this.f51878d = AbstractC10181wz.mutableCopy(this.f51878d);
                    this.f51876b |= 2;
                }
                ((DH) this.f51878d).addAll(c9304rl.f52130e);
            }
            onChanged();
        }
        if ((c9304rl.f52127b & 1) != 0) {
            this.f51876b |= 4;
            this.f51879e = c9304rl.f52132g;
            onChanged();
        }
        if ((c9304rl.f52127b & 2) != 0) {
            this.f51876b |= 8;
            this.f51880f = c9304rl.f52133h;
            onChanged();
        }
        if (!c9304rl.f52134i.isEmpty()) {
            if (this.f51881g.isEmpty()) {
                this.f51881g = c9304rl.f52134i;
                this.f51876b &= -17;
            } else {
                if ((this.f51876b & 16) == 0) {
                    this.f51881g = new C10255xR(this.f51881g);
                    this.f51876b |= 16;
                }
                this.f51881g.addAll(c9304rl.f52134i);
            }
            onChanged();
        }
        onChanged();
        return this;
    }
}
