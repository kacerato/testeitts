package com.android.tools.r8.internal;

public final class C7912jO extends AbstractC8965pj {

    public final E50 f49219a;

    public GO f49220b = null;

    public final C4855Ad f49221c;

    public final C8246lO f49222d;

    public final TN f49223e;

    public final AbstractC7552hC f49224f;

    public C7912jO(B50 b50) {
        b50.getClass();
        this.f49219a = new E50(b50, "member");
        C4855Ad c4855Ad = new C4855Ad(new E50(b50, "member-annotated-by"));
        this.f49221c = c4855Ad;
        c4855Ad.a("memberAnnotatedByClassName", EnumC10616zd.f54416c);
        c4855Ad.a("memberAnnotatedByClassConstant", EnumC10616zd.f54417d);
        c4855Ad.a("memberAnnotatedByClassNamePattern", EnumC10616zd.f54415b);
        C8246lO c8246lO = new C8246lO(b50);
        this.f49222d = c8246lO;
        TN tn2 = new TN(b50);
        this.f49223e = tn2;
        this.f49224f = AbstractC7552hC.a(c4855Ad, c8246lO, tn2);
    }

    @Override
    public final boolean a() {
        return this.f49220b != null || super.a();
    }

    @Override
    public final AbstractC7552hC b() {
        return this.f49224f;
    }

    @Override
    public final Q2 a(String str) {
        if (str.equals("memberAccess")) {
            IO io2 = IO.f41072e;
            GO go = new GO();
            this.f49220b = go;
            return new C7747iO(this.f49219a, go);
        }
        return super.a(str);
    }
}
