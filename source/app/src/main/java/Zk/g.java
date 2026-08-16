package Zk;

public class g implements Yk.e {

    public static final g f31488k = new g("bike128", 12323, 142, 134, 256, 5, 3, 128);

    public static final g f31489l = new g("bike192", 24659, 206, 199, 256, 5, 3, 192);

    public static final g f31490m = new g("bike256", 40973, 274, 264, 256, 5, 3, 256);

    public String f31491b;

    public int f31492c;

    public int f31493d;

    public int f31494e;

    public int f31495f;

    public int f31496g;

    public int f31497h;

    public final int f31498i;

    public a f31499j;

    public g(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f31491b = str;
        this.f31492c = i10;
        this.f31493d = i11;
        this.f31494e = i12;
        this.f31495f = i13;
        this.f31496g = i14;
        this.f31497h = i15;
        this.f31498i = i16;
        this.f31499j = new a(i10, i11, i12, i13, i14, i15);
    }

    public a a() {
        return this.f31499j;
    }

    public int b() {
        return this.f31495f;
    }

    public int c() {
        return this.f31495f / 8;
    }

    public String d() {
        return this.f31491b;
    }

    public int e() {
        return this.f31496g;
    }

    public int f() {
        return this.f31492c;
    }

    public int g() {
        return (this.f31492c + 7) / 8;
    }

    public int h() {
        return this.f31498i;
    }

    public int i() {
        return this.f31494e;
    }

    public int j() {
        return this.f31497h;
    }

    public int k() {
        return this.f31493d;
    }
}
