package cl;

public class i implements Yk.e {

    public static final i f35008f = new i("kyber512", 2, 256, false);

    public static final i f35009g = new i("kyber768", 3, 256, false);

    public static final i f35010h = new i("kyber1024", 4, 256, false);

    public final String f35011b;

    public final int f35012c;

    public final int f35013d;

    public final boolean f35014e;

    public i(String str, int i10, int i11, boolean z10) {
        this.f35011b = str;
        this.f35012c = i10;
        this.f35013d = i11;
        this.f35014e = z10;
    }

    public C4219b a() {
        return new C4219b(this.f35012c, this.f35014e);
    }

    public String b() {
        return this.f35011b;
    }

    public int c() {
        return this.f35013d;
    }
}
