package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

public final class C5454Kl extends AbstractC5801Ql implements QI {

    public static final C5338Il f41754f = new C5338Il();

    public final int f41755b;

    public final C9635tk f41756c;

    public final String f41757d;

    public final C5280Hl f41758e;

    public C5454Kl(C9635tk c9635tk, C5743Pl c5743Pl, C5280Hl c5280Hl, int i10) {
        this.f41755b = i10;
        this.f41756c = c9635tk;
        this.f41758e = c5280Hl;
        this.f41757d = c5280Hl.f40857c + '.' + c9635tk.getName();
        c5743Pl.f43363h.a(this);
    }

    @Override
    public final C5743Pl a() {
        return this.f41758e.f40858d;
    }

    @Override
    public final String b() {
        return this.f41757d;
    }

    @Override
    public final String c() {
        return this.f41756c.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f41756c;
    }

    @Override
    public final int getNumber() {
        return this.f41756c.f52682d;
    }

    public final String toString() {
        return this.f41756c.getName();
    }

    public C5454Kl(C5280Hl c5280Hl, Integer num) {
        String str = "UNKNOWN_ENUM_VALUE_" + c5280Hl.f40856b.getName() + ConstantDescs.DEFAULT_NAME + ((Object) num);
        C9468sk builder = C9635tk.f52678g.toBuilder();
        str.getClass();
        builder.f52437b |= 1;
        builder.f52438c = str;
        builder.onChanged();
        int intValue = num.intValue();
        builder.f52437b |= 2;
        builder.f52439d = intValue;
        builder.onChanged();
        C9635tk m1181buildPartial = builder.m1181buildPartial();
        if (m1181buildPartial.isInitialized()) {
            this.f41755b = -1;
            this.f41756c = m1181buildPartial;
            this.f41758e = c5280Hl;
            this.f41757d = c5280Hl.f40857c + '.' + m1181buildPartial.getName();
            return;
        }
        throw I0.newUninitializedMessageException((InterfaceC7262fW) m1181buildPartial);
    }
}
