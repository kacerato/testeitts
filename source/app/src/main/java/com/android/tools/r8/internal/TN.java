package com.android.tools.r8.internal;

public final class TN extends AbstractC8965pj {

    public final B50 f44452a;

    public final C4855Ad f44453b;

    public final C8152kq0 f44454c;

    public final C5707Ow f44455d;

    public C9581tO f44456e = null;

    public C10082wO f44457f = null;

    public final AbstractC7552hC f44458g;

    public TN(B50 b50) {
        this.f44452a = b50;
        b50.getClass();
        C4855Ad c4855Ad = new C4855Ad(new E50(b50, "field-annotated-by"));
        this.f44453b = c4855Ad;
        c4855Ad.a("fieldAnnotatedByClassName", EnumC10616zd.f54416c);
        c4855Ad.a("fieldAnnotatedByClassConstant", EnumC10616zd.f54417d);
        c4855Ad.a("fieldAnnotatedByClassNamePattern", EnumC10616zd.f54415b);
        C8152kq0 c8152kq0 = new C8152kq0(new E50(b50, "field-name"));
        this.f44454c = c8152kq0;
        c8152kq0.a("fieldName", EnumC7985jq0.f49367b);
        c8152kq0.a("fieldNamePattern", EnumC7985jq0.f49368c);
        C5707Ow c5707Ow = new C5707Ow(new E50(b50, "field-type"));
        this.f44455d = c5707Ow;
        c5707Ow.f49023a.a("fieldTypePattern", EnumC9332ru0.f52217b);
        c5707Ow.f49023a.a("fieldType", EnumC9332ru0.f52218c);
        c5707Ow.f49023a.a("fieldTypeConstant", EnumC9332ru0.f52219d);
        this.f44458g = AbstractC7552hC.a(c4855Ad, c8152kq0, c5707Ow);
    }

    @Override
    public final boolean a() {
        return (this.f44456e == null && this.f44457f == null && !super.a()) ? false : true;
    }

    @Override
    public final AbstractC7552hC b() {
        return this.f44458g;
    }

    @Override
    public final Q2 a(String str) {
        if (str.equals("fieldAccess")) {
            C9748uO c9748uO = C9748uO.f52842h;
            C9581tO c9581tO = new C9581tO();
            this.f44456e = c9581tO;
            return new SN(this.f44452a, c9581tO);
        }
        return super.a(str);
    }
}
