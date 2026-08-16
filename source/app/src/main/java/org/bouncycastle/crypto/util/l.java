package org.bouncycastle.crypto.util;

import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import oh.A0;
import oh.C14549x;
import yh.InterfaceC16192a;

public class l extends m {

    public static final C13486b f101076e;

    public static final C13486b f101077f;

    public static final C13486b f101078g;

    public static final C13486b f101079h;

    public static final C13486b f101080i;

    public static final Map f101081j;

    public final int f101082b;

    public final int f101083c;

    public final C13486b f101084d;

    public static class b {

        public int f101085a = 1024;

        public int f101086b = -1;

        public C13486b f101087c = l.f101076e;

        public l d() {
            return new l(this);
        }

        public b e(int i10) {
            this.f101085a = i10;
            return this;
        }

        public b f(C13486b c13486b) {
            this.f101087c = c13486b;
            return this;
        }

        public b g(int i10) {
            this.f101086b = i10;
            return this;
        }
    }

    static {
        C14549x c14549x = Xh.t.f29144w1;
        A0 a02 = A0.f98776c;
        f101076e = new C13486b(c14549x, a02);
        C14549x c14549x2 = Xh.t.f29152z1;
        f101077f = new C13486b(c14549x2, a02);
        C14549x c14549x3 = Xh.t.f29003B1;
        f101078g = new C13486b(c14549x3, a02);
        C14549x c14549x4 = Sh.d.f23363p;
        f101079h = new C13486b(c14549x4, a02);
        C14549x c14549x5 = Sh.d.f23366r;
        f101080i = new C13486b(c14549x5, a02);
        HashMap hashMap = new HashMap();
        f101081j = hashMap;
        hashMap.put(c14549x, org.bouncycastle.util.k.j(20));
        hashMap.put(c14549x2, org.bouncycastle.util.k.j(32));
        hashMap.put(c14549x3, org.bouncycastle.util.k.j(64));
        hashMap.put(Xh.t.f29147x1, org.bouncycastle.util.k.j(28));
        hashMap.put(Xh.t.f29000A1, org.bouncycastle.util.k.j(48));
        hashMap.put(Sh.d.f23361o, org.bouncycastle.util.k.j(28));
        hashMap.put(c14549x4, org.bouncycastle.util.k.j(32));
        hashMap.put(Sh.d.f23365q, org.bouncycastle.util.k.j(48));
        hashMap.put(c14549x5, org.bouncycastle.util.k.j(64));
        hashMap.put(InterfaceC16192a.f130271c, org.bouncycastle.util.k.j(32));
        hashMap.put(Cj.a.f4460e, org.bouncycastle.util.k.j(32));
        hashMap.put(Cj.a.f4461f, org.bouncycastle.util.k.j(64));
        hashMap.put(Fh.b.f6871e0, org.bouncycastle.util.k.j(32));
    }

    public l(b bVar) {
        super(Xh.t.f29107h1);
        this.f101082b = bVar.f101085a;
        C13486b c13486b = bVar.f101087c;
        this.f101084d = c13486b;
        this.f101083c = bVar.f101086b < 0 ? e(c13486b.u()) : bVar.f101086b;
    }

    public static int e(C14549x c14549x) {
        Map map = f101081j;
        if (map.containsKey(c14549x)) {
            return ((Integer) map.get(c14549x)).intValue();
        }
        throw new IllegalStateException("no salt size for algorithm: " + ((Object) c14549x));
    }

    public int b() {
        return this.f101082b;
    }

    public C13486b c() {
        return this.f101084d;
    }

    public int d() {
        return this.f101083c;
    }
}
