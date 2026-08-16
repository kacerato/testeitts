package al;

public class j implements Yk.e {

    public static int[] f32366i;

    public static final j f32371n;

    public static final j f32372o;

    public final String f32381b;

    public final int f32382c;

    public final int f32383d;

    public final int f32384e;

    public final boolean f32385f;

    public final int f32386g;

    public final C3674d f32387h;

    public static int[] f32367j = {10, 9, 6, 0};

    public static int[] f32368k = {7, 2, 1, 0};

    public static int[] f32369l = {8, 0};

    public static int[] f32370m = {7, 2, 1, 0};

    public static final j f32373p = new j("mceliece460896", 13, 4608, 96, f32367j, false, 192);

    public static final j f32374q = new j("mceliece460896f", 13, 4608, 96, f32367j, true, 192);

    public static final j f32375r = new j("mceliece6688128", 13, 6688, 128, f32368k, false, 256);

    public static final j f32376s = new j("mceliece6688128f", 13, 6688, 128, f32368k, true, 256);

    public static final j f32377t = new j("mceliece6960119", 13, 6960, 119, f32369l, false, 256);

    public static final j f32378u = new j("mceliece6960119f", 13, 6960, 119, f32369l, true, 256);

    public static final j f32379v = new j("mceliece8192128", 13, 8192, 128, f32370m, false, 256);

    public static final j f32380w = new j("mceliece8192128f", 13, 8192, 128, f32370m, true, 256);

    static {
        int[] iArr = {3, 1, 0};
        f32366i = iArr;
        f32371n = new j("mceliece348864", 12, 3488, 64, iArr, false, 128);
        f32372o = new j("mceliece348864f", 12, 3488, 64, f32366i, true, 128);
    }

    public j(String str, int i10, int i11, int i12, int[] iArr, boolean z10, int i13) {
        this.f32381b = str;
        this.f32382c = i10;
        this.f32383d = i11;
        this.f32384e = i12;
        this.f32385f = z10;
        this.f32386g = i13;
        this.f32387h = new C3674d(i10, i11, i12, iArr, z10, i13);
    }

    public C3674d a() {
        return this.f32387h;
    }

    public int b() {
        return this.f32382c;
    }

    public int c() {
        return this.f32385f ? 32 : 0;
    }

    public int d() {
        return this.f32383d;
    }

    public String e() {
        return this.f32381b;
    }

    public int f() {
        return this.f32385f ? 64 : 0;
    }

    public int g() {
        return this.f32386g;
    }

    public int h() {
        return this.f32384e;
    }
}
