package com.android.tools.r8.internal;

public final class C5268Hf0 extends AbstractC5384Jf0 {

    public static final C5268Hf0 f40826c = new C5268Hf0("LINVALID;");

    public static final boolean f40827d = true;

    public final String f40828b;

    public C5268Hf0(String str) {
        if (!f40827d && !C4932Bl.z(str)) {
            throw new AssertionError();
        }
        this.f40828b = str;
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        eVar.getClass();
        return !(eVar instanceof C5268Hf0) || this.f40828b.equals(eVar.g().f40828b);
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        if (!f40827d) {
            eVar.getClass();
            if (!(eVar instanceof C5268Hf0)) {
                throw new AssertionError();
            }
        }
        return this;
    }

    @Override
    public final C5268Hf0 g() {
        return this;
    }

    @Override
    public final boolean s() {
        return this != f40826c;
    }

    @Override
    public final String t() {
        return this.f40828b;
    }
}
