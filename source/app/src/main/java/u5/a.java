package U5;

import org.apache.commons.lang3.ArrayUtils;

public class a {

    public String f25785a;

    public String[] f25786b;

    public String[] f25787c;

    public EnumC0713a f25788d;

    public int f25789e;

    public int f25790f;

    public boolean f25791g;

    public boolean f25792h;

    public boolean f25793i;

    public enum EnumC0713a {
        DOWNLOADS_INVERSE,
        DOWNLOADS,
        PRICE,
        PRICE_INVERSE,
        PUBLISH_DATE_INVERSE,
        PUBLISH_DATE
    }

    public a() {
        this.f25785a = "";
        this.f25788d = EnumC0713a.DOWNLOADS;
        this.f25789e = 10;
    }

    public void a(String tag) {
        int i10 = 0;
        if (this.f25787c == null) {
            this.f25787c = new String[0];
        }
        String[] strArr = new String[this.f25787c.length + 1];
        while (true) {
            String[] strArr2 = this.f25787c;
            if (i10 >= strArr2.length) {
                strArr[strArr2.length] = tag;
                this.f25787c = strArr;
                return;
            } else {
                strArr[i10] = strArr2[i10];
                i10++;
            }
        }
    }

    public void b(String user) {
        int i10 = 0;
        if (this.f25786b == null) {
            this.f25786b = new String[0];
        }
        String[] strArr = new String[this.f25786b.length + 1];
        while (true) {
            String[] strArr2 = this.f25786b;
            if (i10 >= strArr2.length) {
                strArr[strArr2.length] = user;
                this.f25786b = strArr;
                return;
            } else {
                strArr[i10] = strArr2[i10];
                i10++;
            }
        }
    }

    public a c() {
        a aVar = new a();
        aVar.t(this.f25785a);
        aVar.u((String[]) ArrayUtils.clone(this.f25786b));
        aVar.s((String[]) ArrayUtils.clone(this.f25787c));
        aVar.r(this.f25788d);
        aVar.m(this.f25789e);
        aVar.o(this.f25790f);
        aVar.p(this.f25791g);
        aVar.q(this.f25792h);
        aVar.n(this.f25793i);
        return aVar;
    }

    public int d() {
        return this.f25789e;
    }

    public int e() {
        return this.f25790f;
    }

    public EnumC0713a f() {
        return this.f25788d;
    }

    public String[] g() {
        return this.f25787c;
    }

    public String h() {
        return this.f25785a;
    }

    public String[] i() {
        return this.f25786b;
    }

    public boolean j() {
        return this.f25793i;
    }

    public boolean k() {
        return this.f25791g;
    }

    public boolean l() {
        return this.f25792h;
    }

    public void m(int count) {
        this.f25789e = count;
    }

    public void n(boolean ignoreTemplates) {
        this.f25793i = ignoreTemplates;
    }

    public void o(int offset) {
        this.f25790f = offset;
    }

    public void p(boolean onlyFree) {
        this.f25791g = onlyFree;
    }

    public void q(boolean onlyPaid) {
        this.f25792h = onlyPaid;
    }

    public void r(EnumC0713a sortBy) {
        if (sortBy == null) {
            throw new NullPointerException("sortBy can't be null");
        }
        this.f25788d = sortBy;
    }

    public void s(String... tags) {
        this.f25787c = tags;
    }

    public void t(String text) {
        this.f25785a = text;
    }

    public void u(String... users) {
        this.f25786b = users;
    }

    public a(String text) {
        this.f25785a = "";
        this.f25788d = EnumC0713a.DOWNLOADS;
        this.f25789e = 10;
        this.f25785a = text;
    }

    public a(String text, String[] users, String[] tags, EnumC0713a sortBy) {
        this.f25785a = "";
        EnumC0713a enumC0713a = EnumC0713a.DOWNLOADS;
        this.f25789e = 10;
        this.f25785a = text;
        this.f25786b = users;
        this.f25787c = tags;
        this.f25788d = sortBy;
        if (sortBy == null) {
            throw new NullPointerException("sortBy can't be null");
        }
    }

    public a(String text, String[] users, String[] tags, EnumC0713a sortBy, int count, int offset) {
        this.f25785a = "";
        EnumC0713a enumC0713a = EnumC0713a.DOWNLOADS;
        this.f25785a = text;
        this.f25786b = users;
        this.f25787c = tags;
        this.f25788d = sortBy;
        this.f25789e = count;
        this.f25790f = offset;
        if (sortBy == null) {
            throw new NullPointerException("sortBy can't be null");
        }
    }
}
