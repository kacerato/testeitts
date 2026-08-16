package fl;

import android.location.GnssNavigationMessage;
import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.p;

public class C13256f {

    public static final Integer f86477A;

    public static final Integer f86478B;

    public static final Integer f86479C;

    public static final Integer f86480D;

    public static final Integer f86481E;

    public static final Integer f86482F;

    public static final Integer f86483G;

    public static final Integer f86484H;

    public static final Integer f86485I;

    public static final Integer f86486J;

    public static final Integer f86487K;

    public static final Integer f86488L;

    public static final Integer f86489M;

    public static final Integer f86490N;

    public static final Integer f86491O;

    public static final Integer f86492P;

    public static final Integer f86493Q;

    public static final Integer f86494R;

    public static final Integer f86495S;

    public static final Integer f86496T;

    public static final Integer f86497U;

    public static final Integer f86498V;

    public static final Integer f86499W;

    public static final Integer f86500X;

    public static final Map<Integer, C13256f> f86501Y;

    public static final Map<C13256f, Integer> f86502Z;

    public static final C13256f f86503c;

    public static final C13256f f86504d;

    public static final C13256f f86505e;

    public static final C13256f f86506f;

    public static final C13256f f86507g;

    public static final C13256f f86508h;

    public static final C13256f f86509i;

    public static final C13256f f86510j;

    public static final C13256f f86511k;

    public static final C13256f f86512l;

    public static final C13256f f86513m;

    public static final C13256f f86514n;

    public static final C13256f f86515o;

    public static final C13256f f86516p;

    public static final C13256f f86517q;

    public static final C13256f f86518r;

    public static final C13256f f86519s;

    public static final C13256f f86520t;

    public static final C13256f f86521u;

    public static final C13256f f86522v;

    public static final C13256f f86523w;

    public static final C13256f f86524x;

    public static final C13256f f86525y;

    public static final C13256f f86526z;

    public final String f86527a;

    public final C13251a f86528b;

    static {
        C13256f c13256f = new C13256f("gemss128", 128, 174, 12, 12, 4, 513, 9, 0);
        f86503c = c13256f;
        C13256f c13256f2 = new C13256f("gemss192", 192, 265, 20, 22, 4, 513, 9, 0);
        f86504d = c13256f2;
        C13256f c13256f3 = new C13256f("gemss256", 256, 354, 33, 30, 4, 513, 9, 0);
        f86505e = c13256f3;
        C13256f c13256f4 = new C13256f("bluegemss128", 128, 175, 14, 13, 4, 129, 7, 0);
        f86506f = c13256f4;
        C13256f c13256f5 = new C13256f("bluegemss192", 192, 265, 23, 22, 4, 129, 7, 0);
        f86507g = c13256f5;
        C13256f c13256f6 = new C13256f("bluegemss256", 256, 358, 32, 34, 4, 129, 7, 0);
        f86508h = c13256f6;
        C13256f c13256f7 = new C13256f("redgemss128", 128, 177, 15, 15, 4, 17, 4, 0);
        f86509i = c13256f7;
        C13256f c13256f8 = new C13256f("redgemss192", 192, 266, 25, 23, 4, 17, 4, 0);
        f86510j = c13256f8;
        C13256f c13256f9 = new C13256f("redgemss256", 256, 358, 35, 34, 4, 17, 4, 0);
        f86511k = c13256f9;
        C13256f c13256f10 = new C13256f("whitegemss128", 128, 175, 12, 12, 3, 513, 9, 0);
        f86512l = c13256f10;
        C13256f c13256f11 = new C13256f("whitegemss192", 192, 268, 21, 21, 3, 513, 9, 0);
        f86513m = c13256f11;
        C13256f c13256f12 = new C13256f("whitegemss256", 256, 364, 29, 31, 3, 513, 9, 0);
        f86514n = c13256f12;
        C13256f c13256f13 = new C13256f("cyangemss128", 128, 177, 13, 14, 3, 129, 7, 0);
        f86515o = c13256f13;
        C13256f c13256f14 = new C13256f("cyangemss192", 192, 270, 22, 23, 3, 129, 7, 0);
        f86516p = c13256f14;
        C13256f c13256f15 = new C13256f("cyangemss256", 256, 364, 32, 31, 3, 129, 7, 0);
        f86517q = c13256f15;
        C13256f c13256f16 = new C13256f("magentagemss128", 128, 178, 15, 15, 3, 17, 4, 0);
        f86518r = c13256f16;
        C13256f c13256f17 = new C13256f("magentagemss192", 192, 271, 24, 24, 3, 17, 4, 0);
        f86519s = c13256f17;
        C13256f c13256f18 = new C13256f("magentagemss256", 256, 366, 33, 33, 3, 17, 4, 0);
        f86520t = c13256f18;
        C13256f c13256f19 = new C13256f("fgemss128", 128, 266, 11, 10, 1, 129, 7, 0);
        f86521u = c13256f19;
        C13256f c13256f20 = new C13256f("fgemss192", 192, 402, 18, 18, 1, DisplayMetrics.DENSITY_XXXHIGH, 9, 7);
        f86522v = c13256f20;
        C13256f c13256f21 = new C13256f("fgemss256", 256, 537, 26, 25, 1, 1152, 10, 7);
        f86523w = c13256f21;
        C13256f c13256f22 = new C13256f("dualmodems128", 128, 266, 11, 10, 1, 129, 7, 0);
        f86524x = c13256f22;
        C13256f c13256f23 = new C13256f("dualmodems192", 192, 402, 18, 18, 1, 129, 7, 0);
        f86525y = c13256f23;
        C13256f c13256f24 = new C13256f("dualmodems256", 256, 544, 32, 32, 1, 129, 7, 0);
        f86526z = c13256f24;
        Integer j10 = org.bouncycastle.util.k.j(257);
        f86477A = j10;
        Integer j11 = org.bouncycastle.util.k.j(258);
        f86478B = j11;
        Integer j12 = org.bouncycastle.util.k.j(259);
        f86479C = j12;
        Integer j13 = org.bouncycastle.util.k.j(513);
        f86480D = j13;
        Integer j14 = org.bouncycastle.util.k.j(514);
        f86481E = j14;
        Integer j15 = org.bouncycastle.util.k.j(515);
        f86482F = j15;
        Integer j16 = org.bouncycastle.util.k.j(769);
        f86483G = j16;
        Integer j17 = org.bouncycastle.util.k.j(770);
        f86484H = j17;
        Integer j18 = org.bouncycastle.util.k.j(771);
        f86485I = j18;
        Integer j19 = org.bouncycastle.util.k.j(1025);
        f86486J = j19;
        Integer j20 = org.bouncycastle.util.k.j(1026);
        f86487K = j20;
        Integer j21 = org.bouncycastle.util.k.j(1027);
        f86488L = j21;
        Integer j22 = org.bouncycastle.util.k.j(1281);
        f86489M = j22;
        Integer j23 = org.bouncycastle.util.k.j(1282);
        f86490N = j23;
        Integer j24 = org.bouncycastle.util.k.j(1283);
        f86491O = j24;
        Integer j25 = org.bouncycastle.util.k.j(GnssNavigationMessage.TYPE_GAL_I);
        f86492P = j25;
        Integer j26 = org.bouncycastle.util.k.j(GnssNavigationMessage.TYPE_GAL_F);
        f86493Q = j26;
        Integer j27 = org.bouncycastle.util.k.j(1539);
        f86494R = j27;
        Integer j28 = org.bouncycastle.util.k.j(1793);
        f86495S = j28;
        Integer j29 = org.bouncycastle.util.k.j(1794);
        f86496T = j29;
        Integer j30 = org.bouncycastle.util.k.j(1795);
        f86497U = j30;
        Integer j31 = org.bouncycastle.util.k.j(2049);
        f86498V = j31;
        Integer j32 = org.bouncycastle.util.k.j(2050);
        f86499W = j32;
        Integer j33 = org.bouncycastle.util.k.j(2051);
        f86500X = j33;
        HashMap hashMap = new HashMap();
        f86501Y = hashMap;
        HashMap hashMap2 = new HashMap();
        f86502Z = hashMap2;
        hashMap.put(j10, c13256f);
        hashMap.put(j11, c13256f2);
        hashMap.put(j12, c13256f3);
        hashMap.put(j13, c13256f4);
        hashMap.put(j14, c13256f5);
        hashMap.put(j15, c13256f6);
        hashMap.put(j16, c13256f7);
        hashMap.put(j17, c13256f8);
        hashMap.put(j18, c13256f9);
        hashMap.put(j19, c13256f10);
        hashMap.put(j20, c13256f11);
        hashMap.put(j21, c13256f12);
        hashMap.put(j22, c13256f13);
        hashMap.put(j23, c13256f14);
        hashMap.put(j24, c13256f15);
        hashMap.put(j25, c13256f16);
        hashMap.put(j26, c13256f17);
        hashMap.put(j27, c13256f18);
        hashMap.put(j28, c13256f19);
        hashMap.put(j29, c13256f20);
        hashMap.put(j30, c13256f21);
        hashMap.put(j31, c13256f22);
        hashMap.put(j32, c13256f23);
        hashMap.put(j33, c13256f24);
        hashMap2.put(c13256f, j10);
        hashMap2.put(c13256f2, j11);
        hashMap2.put(c13256f3, j12);
        hashMap2.put(c13256f4, j13);
        hashMap2.put(c13256f5, j14);
        hashMap2.put(c13256f6, j15);
        hashMap2.put(c13256f7, j16);
        hashMap2.put(c13256f8, j17);
        hashMap2.put(c13256f9, j18);
        hashMap2.put(c13256f10, j19);
        hashMap2.put(c13256f11, j20);
        hashMap2.put(c13256f12, j21);
        hashMap2.put(c13256f13, j22);
        hashMap2.put(c13256f14, j23);
        hashMap2.put(c13256f15, j24);
        hashMap2.put(c13256f16, j25);
        hashMap2.put(c13256f17, j26);
        hashMap2.put(c13256f18, j27);
        hashMap2.put(c13256f19, j28);
        hashMap2.put(c13256f20, j29);
        hashMap2.put(c13256f21, j30);
        hashMap2.put(c13256f22, j31);
        hashMap2.put(c13256f23, j32);
        hashMap2.put(c13256f24, j33);
    }

    public C13256f(String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.f86527a = str;
        this.f86528b = new C13251a(i10, i11, i12, i13, i14, i15, i16, i17);
    }

    public static Integer c(C13256f c13256f) {
        return f86502Z.get(c13256f);
    }

    public static C13256f e(Integer num) {
        return f86501Y.get(num);
    }

    public byte[] a() {
        return p.k(c(this).intValue());
    }

    public C13251a b() {
        return this.f86528b;
    }

    public String d() {
        return this.f86527a;
    }
}
