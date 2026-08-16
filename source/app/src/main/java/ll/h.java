package ll;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Ii.M;
import Ii.O;

public class h implements InterfaceC2379k {

    public static final h f96578k;

    public static final h f96579l;

    public static final h f96580m;

    public static final h f96581n;

    public static final h f96582o;

    public static final h f96583p;

    public static final int f96584q = 32;

    public static final int f96585r = 32;

    public static final int f96586s = 16;

    public final int f96587b;

    public final int f96588c;

    public final int f96589d;

    public final int f96590e;

    public final int f96591f;

    public final int f96592g;

    public final InterfaceC2392y f96593h;

    public final n f96594i;

    public final String f96595j;

    static {
        n nVar = n.CLASSIC;
        f96578k = new h("rainbow-III-classic", 3, nVar);
        n nVar2 = n.CIRCUMZENITHAL;
        f96579l = new h("rainbow-III-circumzenithal", 3, nVar2);
        n nVar3 = n.COMPRESSED;
        f96580m = new h("rainbow-III-compressed", 3, nVar3);
        f96581n = new h("rainbow-V-classic", 5, nVar);
        f96582o = new h("rainbow-V-circumzenithal", 5, nVar2);
        f96583p = new h("rainbow-V-compressed", 5, nVar3);
    }

    public h(String str, int i10, n nVar) {
        InterfaceC2392y m10;
        this.f96595j = str;
        if (i10 == 3) {
            this.f96587b = 68;
            this.f96589d = 32;
            this.f96590e = 48;
            m10 = new M();
        } else {
            if (i10 != 5) {
                throw new IllegalArgumentException("No valid version. Please choose one of the following: 3, 5");
            }
            this.f96587b = 96;
            this.f96589d = 36;
            this.f96590e = 64;
            m10 = new O();
        }
        this.f96593h = m10;
        int i11 = this.f96587b;
        int i12 = this.f96589d;
        this.f96588c = i11 + i12;
        int i13 = this.f96590e;
        this.f96591f = i11 + i12 + i13;
        this.f96592g = i12 + i13;
        this.f96594i = nVar;
    }

    public InterfaceC2392y a() {
        return this.f96593h;
    }

    public int b() {
        return 32;
    }

    public int c() {
        return 16;
    }

    public int d() {
        return 32;
    }

    public int e() {
        return this.f96592g;
    }

    public int f() {
        return this.f96591f;
    }

    public String g() {
        return this.f96595j;
    }

    public int h() {
        return this.f96589d;
    }

    public int i() {
        return this.f96590e;
    }

    public int j() {
        return this.f96587b;
    }

    public int k() {
        return this.f96588c;
    }

    public n l() {
        return this.f96594i;
    }
}
