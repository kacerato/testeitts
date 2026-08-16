package xd;

public class C16085e {

    public String f128092a;

    public final C16083c f128093b;

    public final C16083c f128094c;

    public final C16083c f128095d;

    public final C16083c f128096e;

    public float f128097f;

    public float f128098g;

    public String f128099h;

    public String f128100i;

    public String f128101j;

    public String f128102k;

    public String f128103l;

    public C16085e() {
        this.f128093b = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128094c = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128095d = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128096e = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128097f = 0.0f;
        this.f128098g = 1.0f;
    }

    public C16083c a() {
        return this.f128093b;
    }

    public String b() {
        return this.f128099h;
    }

    public C16083c c() {
        return this.f128094c;
    }

    public String d() {
        return this.f128100i;
    }

    public float e() {
        return this.f128098g;
    }

    public String f() {
        return this.f128103l;
    }

    public String g() {
        return this.f128092a;
    }

    public C16083c h() {
        return this.f128095d;
    }

    public float i() {
        return this.f128097f;
    }

    public String j() {
        return this.f128102k;
    }

    public String k() {
        return this.f128101j;
    }

    public C16083c l() {
        return this.f128096e;
    }

    public void m(String str) {
        this.f128099h = str;
    }

    public void n(String str) {
        this.f128100i = str;
    }

    public void o(float f10) {
        this.f128098g = f10;
    }

    public void p(String str) {
        this.f128103l = str;
    }

    public void q(String str) {
        this.f128092a = str;
    }

    public void r(float f10) {
        this.f128097f = f10;
    }

    public void s(String str) {
        this.f128102k = str;
    }

    public void t(String str) {
        this.f128101j = str;
    }

    public C16085e(String str) {
        this.f128093b = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128094c = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128095d = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128096e = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128097f = 0.0f;
        this.f128098g = 1.0f;
        this.f128092a = str;
    }

    public C16085e(C16085e c16085e) {
        C16083c c16083c = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128093b = c16083c;
        C16083c c16083c2 = new C16083c(1.0f, 1.0f, 1.0f);
        this.f128094c = c16083c2;
        C16083c c16083c3 = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128095d = c16083c3;
        C16083c c16083c4 = new C16083c(0.0f, 0.0f, 0.0f);
        this.f128096e = c16083c4;
        this.f128097f = 0.0f;
        this.f128098g = 1.0f;
        c16083c.b(c16085e.f128093b);
        c16083c2.b(c16085e.f128094c);
        c16083c3.b(c16085e.f128095d);
        c16083c4.b(c16085e.f128096e);
        this.f128097f = c16085e.f128097f;
        this.f128098g = c16085e.f128098g;
        this.f128099h = c16085e.f128099h;
        String str = c16085e.f128103l;
        this.f128100i = str;
        this.f128101j = c16085e.f128101j;
        this.f128102k = c16085e.f128102k;
        this.f128103l = str;
    }
}
