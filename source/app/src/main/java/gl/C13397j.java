package gl;

import android.util.DisplayMetrics;

public class C13397j implements Yk.e {

    public static final C13397j f90084p = new C13397j("hqc-128", 17669, 46, 384, 16, 31, 15, 66, 75, 75, 16767881, 4, new int[]{89, 69, 153, 116, 176, 117, 111, 75, 73, 233, 242, 233, 65, 210, 21, 139, 103, 173, 67, 118, 105, 210, 174, 110, 74, 69, 228, 82, 255, 181, 1});

    public static final C13397j f90085q = new C13397j("hqc-192", 35851, 56, DisplayMetrics.DENSITY_XXXHIGH, 24, 33, 16, 100, 114, 114, 16742417, 5, new int[]{45, 216, 239, 24, 253, 104, 27, 40, 107, 50, 163, 210, 227, 134, 224, 158, 119, 13, 158, 1, 238, 164, 82, 43, 15, 232, 246, 142, 50, 189, 29, 232, 1});

    public static final C13397j f90086r = new C13397j("hqc-256", 57637, 90, DisplayMetrics.DENSITY_XXXHIGH, 32, 59, 29, 131, 149, 149, 16772367, 5, new int[]{49, 167, 49, 39, 200, 121, 124, 91, 240, 63, 148, 71, 150, 123, 87, 101, 32, 215, 159, 71, 201, 115, 97, 210, 186, 183, 141, 217, 123, 12, 31, 243, 180, 219, 152, 239, 99, 141, 4, 246, 191, 144, 8, 232, 47, 27, 141, 178, 130, 64, 124, 47, 39, 188, 216, 48, 199, 187, 1});

    public static final int f90087s = 8;

    public static final int f90088t = 255;

    public final String f90089b;

    public int f90090c;

    public int f90091d;

    public int f90092e;

    public int f90093f;

    public int f90094g;

    public int f90095h;

    public int f90096i;

    public int f90097j;

    public int f90098k;

    public int f90099l;

    public int f90100m;

    public int[] f90101n;

    public C13391d f90102o;

    public C13397j(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int[] iArr) {
        this.f90089b = str;
        this.f90090c = i10;
        this.f90091d = i11;
        this.f90092e = i12;
        this.f90093f = i13;
        this.f90095h = i15;
        this.f90096i = i16;
        this.f90097j = i17;
        this.f90098k = i18;
        this.f90101n = iArr;
        this.f90094g = i14;
        this.f90099l = i19;
        this.f90100m = i20;
        this.f90102o = new C13391d(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, iArr);
    }

    public int a() {
        return this.f90095h;
    }

    public C13391d b() {
        return this.f90102o;
    }

    public int c() {
        return this.f90093f;
    }

    public int d() {
        return this.f90090c;
    }

    public int e() {
        return this.f90091d;
    }

    public int f() {
        return ((this.f90091d * this.f90092e) + 7) / 8;
    }

    public int g() {
        return this.f90092e;
    }

    public int h() {
        return (this.f90090c + 7) / 8;
    }

    public String i() {
        return this.f90089b;
    }

    public int j() {
        return 16;
    }

    public int k() {
        return 64;
    }

    public int l() {
        return this.f90093f * 8;
    }

    public int m() {
        return this.f90096i;
    }

    public int n() {
        return this.f90098k;
    }

    public int o() {
        return this.f90097j;
    }
}
