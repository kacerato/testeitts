package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C9794uh0 extends AbstractC7345fz implements InterfaceC8596nW {

    public int f52918b;

    public C7295fi0 f52919c;

    public String f52920d;

    public List f52921e;

    public int f52922f;

    public C9794uh0() {
        this.f52920d = "";
        this.f52921e = Collections.EMPTY_LIST;
        C9460sh0 c9460sh0 = C10128wh0.f53561h;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C9794uh0 mergeFrom(AbstractC4916Be abstractC4916Be, C10670zv c10670zv) {
        C10128wh0 c10128wh0 = null;
        try {
            try {
                C10128wh0.f53563j.getClass();
                a(new C10128wh0(abstractC4916Be, c10670zv));
                return this;
            } catch (MJ e10) {
                C10128wh0 c10128wh02 = (C10128wh0) e10.f42272b;
                try {
                    throw e10.a();
                } catch (Throwable th2) {
                    th = th2;
                    c10128wh0 = c10128wh02;
                    if (c10128wh0 != null) {
                        a(c10128wh0);
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            if (c10128wh0 != null) {
            }
            throw th;
        }
    }

    @Override
    public final InterfaceC7095eW addRepeatedField(C5685Ol c5685Ol, Object obj) {
        return (C9794uh0) addRepeatedField(c5685Ol, obj);
    }

    @Override
    public final C10128wh0 m1181buildPartial() {
        C10128wh0 c10128wh0 = new C10128wh0(this);
        c10128wh0.f53564b = this.f52919c;
        c10128wh0.f53565c = this.f52920d;
        if ((this.f52918b & 1) != 0) {
            this.f52921e = Collections.unmodifiableList(this.f52921e);
            this.f52918b &= -2;
        }
        c10128wh0.f53566d = this.f52921e;
        c10128wh0.f53568f = this.f52922f;
        onBuilt();
        return c10128wh0;
    }

    @Override
    public final InterfaceC7262fW build() {
        C10128wh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    public final Object clone() {
        return (C9794uh0) m1188clone();
    }

    @Override
    public final InterfaceC7262fW getDefaultInstanceForType() {
        return C10128wh0.f53562i;
    }

    @Override
    public final C4990Cl getDescriptorForType() {
        return AbstractC9967vj0.f53211A;
    }

    @Override
    public final C9847uz internalGetFieldAccessorTable() {
        return AbstractC9967vj0.f53213B.a(C10128wh0.class, C9794uh0.class);
    }

    @Override
    public final boolean isInitialized() {
        return true;
    }

    @Override
    public final I0 m1189mergeUnknownFields(C9002pv0 c9002pv0) {
        return (C9794uh0) m1189mergeUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC7095eW setField(C5685Ol c5685Ol, Object obj) {
        return (C9794uh0) setField(c5685Ol, obj);
    }

    @Override
    public final AbstractC7345fz setUnknownFields(C9002pv0 c9002pv0) {
        return (C9794uh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW getDefaultInstanceForType() {
        return C10128wh0.f53562i;
    }

    @Override
    public final InterfaceC7095eW setUnknownFields(C9002pv0 c9002pv0) {
        return (C9794uh0) super.setUnknownFields(c9002pv0);
    }

    @Override
    public final InterfaceC8095kW build() {
        C10128wh0 m1181buildPartial = m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            return m1181buildPartial;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }

    @Override
    public final I0 mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10128wh0) {
            return a((C10128wh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    public C9794uh0(C7011dz c7011dz) {
        super(c7011dz);
        this.f52920d = "";
        this.f52921e = Collections.EMPTY_LIST;
        C9460sh0 c9460sh0 = C10128wh0.f53561h;
    }

    @Override
    public final InterfaceC7095eW mergeFrom(InterfaceC7262fW interfaceC7262fW) {
        if (interfaceC7262fW instanceof C10128wh0) {
            return a((C10128wh0) interfaceC7262fW);
        }
        super.mergeFrom(interfaceC7262fW);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C9794uh0 a(C10128wh0 c10128wh0) {
        if (c10128wh0 == C10128wh0.f53562i) {
            return this;
        }
        C7295fi0 c7295fi0 = c10128wh0.f53564b;
        if (c7295fi0 != null) {
            C7295fi0 c7295fi02 = this.f52919c;
            if (c7295fi02 != null) {
                this.f52919c = C7295fi0.f48069e.toBuilder().a(c7295fi02).a(c7295fi0).m1181buildPartial();
            } else {
                this.f52919c = c7295fi0;
            }
            onChanged();
        }
        String str = c10128wh0.f53565c;
        String str2 = str;
        if (str == 0) {
            String c10 = ((AbstractC8373m8) str).c();
            c10128wh0.f53565c = c10;
            str2 = c10;
        }
        if (!str2.isEmpty()) {
            this.f52920d = c10128wh0.f53565c;
            onChanged();
        }
        if (!c10128wh0.f53566d.isEmpty()) {
            if (this.f52921e.isEmpty()) {
                this.f52921e = c10128wh0.f53566d;
                this.f52918b &= -2;
            } else {
                if ((this.f52918b & 1) == 0) {
                    this.f52921e = new ArrayList(this.f52921e);
                    this.f52918b |= 1;
                }
                this.f52921e.addAll(c10128wh0.f53566d);
            }
            onChanged();
        }
        int i10 = c10128wh0.f53568f;
        if (i10 != 0) {
            this.f52922f = i10;
            onChanged();
        }
        onChanged();
        return this;
    }
}
