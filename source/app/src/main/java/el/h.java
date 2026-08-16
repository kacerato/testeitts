package el;

import Bi.a0;
import Ii.Q;
import android.util.DisplayMetrics;
import el.g;
import kotlin.jvm.internal.r0;

public class h implements Yk.e {

    public static final short[] f85865h;

    public static final short[] f85866i;

    public static final short[] f85867j;

    public static final h f85868k;

    public static final h f85869l;

    public static final h f85870m;

    public static final h f85871n;

    public static final h f85872o;

    public static final h f85873p;

    public final String f85874b;

    public final int f85875c;

    public final int f85876d;

    public final int f85877e;

    public final int f85878f;

    public final C13161a f85879g;

    static {
        short[] sArr = {4643, 13363, 20579, 25843, 29227, 31145, 32103, 32525, 32689, 32745, 32762, 32766, r0.f95770c};
        f85865h = sArr;
        short[] sArr2 = {5638, 15915, 23689, 28571, 31116, 32217, 32613, 32731, 32760, 32766, r0.f95770c};
        f85866i = sArr2;
        short[] sArr3 = {9142, 23462, 30338, 32361, 32725, 32765, r0.f95770c};
        f85867j = sArr3;
        f85868k = new h("frodokem640aes", DisplayMetrics.DENSITY_XXXHIGH, 15, 2, sArr, new Q(128), new g.a(DisplayMetrics.DENSITY_XXXHIGH, 32768));
        f85869l = new h("frodokem640shake", DisplayMetrics.DENSITY_XXXHIGH, 15, 2, sArr, new Q(128), new g.b(DisplayMetrics.DENSITY_XXXHIGH, 32768));
        f85870m = new h("frodokem976aes", 976, 16, 3, sArr2, new Q(256), new g.a(976, 65536));
        f85871n = new h("frodokem976shake", 976, 16, 3, sArr2, new Q(256), new g.b(976, 65536));
        f85872o = new h("frodokem1344aes", 1344, 16, 4, sArr3, new Q(256), new g.a(1344, 65536));
        f85873p = new h("frodokem1344shake", 1344, 16, 4, sArr3, new Q(256), new g.b(1344, 65536));
    }

    public h(String str, int i10, int i11, int i12, short[] sArr, a0 a0Var, g gVar) {
        this.f85874b = str;
        this.f85875c = i10;
        this.f85876d = i11;
        this.f85877e = i12;
        this.f85878f = i12 * 64;
        this.f85879g = new C13161a(i10, i11, i12, sArr, a0Var, gVar);
    }

    public int a() {
        return this.f85877e;
    }

    public int b() {
        return this.f85876d;
    }

    public C13161a c() {
        return this.f85879g;
    }

    public int d() {
        return this.f85875c;
    }

    public String e() {
        return this.f85874b;
    }

    public int f() {
        return this.f85878f;
    }
}
