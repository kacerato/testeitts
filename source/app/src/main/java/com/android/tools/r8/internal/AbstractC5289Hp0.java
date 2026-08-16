package com.android.tools.r8.internal;

import java.util.LinkedHashSet;

public abstract class AbstractC5289Hp0 {

    public static final boolean f40879d = true;

    public final LinkedHashSet f40880a = new LinkedHashSet();

    public final LinkedHashSet f40881b = new LinkedHashSet();

    public boolean f40882c = false;

    public C9818up0 g() {
        return null;
    }

    public C10152wp0 h() {
        return null;
    }

    public C10319xp0 i() {
        return null;
    }

    public InterfaceC10486yp0 j() {
        return null;
    }

    public C4999Cp0 k() {
        return null;
    }

    public InterfaceC5173Fp0 l() {
        return null;
    }

    public final AbstractC5289Hp0 m() {
        if (f40879d || o()) {
            return (AbstractC5289Hp0) this.f40881b.iterator().next();
        }
        throw new AssertionError();
    }

    public final AbstractC5289Hp0 n() {
        if (f40879d || p()) {
            return (AbstractC5289Hp0) this.f40880a.iterator().next();
        }
        throw new AssertionError();
    }

    public final boolean o() {
        return this.f40881b.size() == 1;
    }

    public final boolean p() {
        return this.f40880a.size() == 1;
    }

    public boolean q() {
        return this instanceof C9818up0;
    }

    public boolean r() {
        return this instanceof C9818up0;
    }

    public final void s() {
        for (AbstractC5289Hp0 abstractC5289Hp0 : this.f40880a) {
            abstractC5289Hp0.f40881b.remove(this);
            abstractC5289Hp0.f40881b.addAll(this.f40881b);
        }
        for (AbstractC5289Hp0 abstractC5289Hp02 : this.f40881b) {
            abstractC5289Hp02.f40880a.remove(this);
            abstractC5289Hp02.f40880a.addAll(this.f40880a);
        }
        this.f40882c = true;
    }
}
