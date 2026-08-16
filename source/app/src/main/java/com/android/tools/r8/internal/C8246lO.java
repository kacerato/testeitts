package com.android.tools.r8.internal;

public final class C8246lO extends AbstractC8965pj {

    public final B50 f49962a;

    public PO f49963b = null;

    public VO f49964c = null;

    public final C4855Ad f49965d;

    public final C8152kq0 f49966e;

    public final C9766uX f49967f;

    public final C6764cX f49968g;

    public final AbstractC7552hC f49969h;

    public C8246lO(B50 b50) {
        this.f49962a = b50;
        b50.getClass();
        C4855Ad c4855Ad = new C4855Ad(new E50(b50, "method-annotated-by"));
        this.f49965d = c4855Ad;
        c4855Ad.a("methodAnnotatedByClassName", EnumC10616zd.f54416c);
        c4855Ad.a("methodAnnotatedByClassConstant", EnumC10616zd.f54417d);
        c4855Ad.a("methodAnnotatedByClassNamePattern", EnumC10616zd.f54415b);
        C8152kq0 c8152kq0 = new C8152kq0(new E50(b50, "method-name"));
        this.f49966e = c8152kq0;
        c8152kq0.a("methodName", EnumC7985jq0.f49367b);
        c8152kq0.a("methodNamePattern", EnumC7985jq0.f49368c);
        C9766uX c9766uX = new C9766uX(new E50(b50, "return-type"));
        this.f49967f = c9766uX;
        EnumC9332ru0 enumC9332ru0 = EnumC9332ru0.f52218c;
        c9766uX.a("methodReturnType", enumC9332ru0);
        c9766uX.a("methodReturnTypeConstant", EnumC9332ru0.f52219d);
        EnumC9332ru0 enumC9332ru02 = EnumC9332ru0.f52217b;
        c9766uX.a("methodReturnTypePattern", enumC9332ru02);
        C6764cX c6764cX = new C6764cX(new E50(b50, "parameters"));
        this.f49968g = c6764cX;
        c6764cX.f49023a.a("methodParameters", enumC9332ru0);
        c6764cX.f49023a.a("methodParameterTypePatterns", enumC9332ru02);
        this.f49969h = AbstractC7552hC.a(c4855Ad, c8152kq0, c9766uX, c6764cX);
    }

    @Override
    public final boolean a() {
        return (this.f49963b == null && this.f49964c == null && !super.a()) ? false : true;
    }

    @Override
    public final AbstractC7552hC b() {
        return this.f49969h;
    }

    @Override
    public final Q2 a(String str) {
        if (str.equals("methodAccess")) {
            QO qo = QO.f43567k;
            PO po = new PO();
            this.f49963b = po;
            return new C8079kO(this.f49962a, po);
        }
        return super.a(str);
    }
}
