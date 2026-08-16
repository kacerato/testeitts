package com.android.tools.r8.internal;

public final class C7702i60 extends AbstractC6590bT {

    public static final boolean f48839d = true;

    public final C8256lT f48840a = AbstractC8423mT.f50311a;

    public final C9115qd0 f48841b = new C9115qd0();

    public final C9115qd0 f48842c = new C9115qd0();

    @Override
    public final Object a(Object obj, int i10) {
        this.f48841b.b(i10, (C10340xw0) obj);
        return Integer.valueOf(i10);
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final boolean b(Object obj, int i10) {
        C10340xw0 c10340xw0 = (C10340xw0) obj;
        if (f48839d || i10 == this.f48841b.b(c10340xw0)) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final Object a(Object obj) {
        return Integer.valueOf(this.f48841b.b((C10340xw0) obj));
    }

    @Override
    public final void a(W5 w52, int i10) {
        if (!f48839d && this.f48842c.containsKey(w52)) {
            throw new AssertionError();
        }
        this.f48842c.b(i10, w52);
    }

    @Override
    public final int a(W5 w52) {
        if (f48839d || this.f48842c.containsKey(w52)) {
            return this.f48842c.b(w52);
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC9758uT a() {
        return new C7867j60(this.f48840a);
    }
}
