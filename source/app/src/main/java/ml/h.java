package ml;

public class h implements Yk.e {

    public static final h f97505f = new h("lightsaberkem128r3", 2, 128, false, false);

    public static final h f97506g = new h("saberkem128r3", 3, 128, false, false);

    public static final h f97507h = new h("firesaberkem128r3", 4, 128, false, false);

    public static final h f97508i = new h("lightsaberkem192r3", 2, 192, false, false);

    public static final h f97509j = new h("saberkem192r3", 3, 192, false, false);

    public static final h f97510k = new h("firesaberkem192r3", 4, 192, false, false);

    public static final h f97511l = new h("lightsaberkem256r3", 2, 256, false, false);

    public static final h f97512m = new h("saberkem256r3", 3, 256, false, false);

    public static final h f97513n = new h("firesaberkem256r3", 4, 256, false, false);

    public static final h f97514o = new h("lightsaberkem90sr3", 2, 256, true, false);

    public static final h f97515p = new h("saberkem90sr3", 3, 256, true, false);

    public static final h f97516q = new h("firesaberkem90sr3", 4, 256, true, false);

    public static final h f97517r = new h("ulightsaberkemr3", 2, 256, false, true);

    public static final h f97518s = new h("usaberkemr3", 3, 256, false, true);

    public static final h f97519t = new h("ufiresaberkemr3", 4, 256, false, true);

    public static final h f97520u = new h("ulightsaberkem90sr3", 2, 256, true, true);

    public static final h f97521v = new h("usaberkem90sr3", 3, 256, true, true);

    public static final h f97522w = new h("ufiresaberkem90sr3", 4, 256, true, true);

    public final String f97523b;

    public final int f97524c;

    public final int f97525d;

    public final C14324b f97526e;

    public h(String str, int i10, int i11, boolean z10, boolean z11) {
        this.f97523b = str;
        this.f97524c = i10;
        this.f97525d = i11;
        this.f97526e = new C14324b(i10, i11, z10, z11);
    }

    public C14324b a() {
        return this.f97526e;
    }

    public int b() {
        return this.f97524c;
    }

    public String c() {
        return this.f97523b;
    }

    public int d() {
        return this.f97525d;
    }
}
