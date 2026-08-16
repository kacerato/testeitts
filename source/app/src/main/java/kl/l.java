package kl;

import Bi.InterfaceC2379k;

public class l implements InterfaceC2379k {

    public static final l f95444d = new l("picnicl1fs", 1);

    public static final l f95445e = new l("picnicl1ur", 2);

    public static final l f95446f = new l("picnicl3fs", 3);

    public static final l f95447g = new l("picnicl3ur", 4);

    public static final l f95448h = new l("picnicl5fs", 5);

    public static final l f95449i = new l("picnicl5ur", 6);

    public static final l f95450j = new l("picnic3l1", 7);

    public static final l f95451k = new l("picnic3l3", 8);

    public static final l f95452l = new l("picnic3l5", 9);

    public static final l f95453m = new l("picnicl1full", 10);

    public static final l f95454n = new l("picnicl3full", 11);

    public static final l f95455o = new l("picnicl5full", 12);

    public final String f95456b;

    public final int f95457c;

    public static class a {

        public static final C13999d f95458a = new C13999d();
    }

    public static class b {

        public static final C14000e f95459a = new C14000e();
    }

    public static class c {

        public static final f f95460a = new f();
    }

    public l(String str, int i10) {
        this.f95456b = str;
        this.f95457c = i10;
    }

    public h a() {
        switch (this.f95457c) {
            case 1:
            case 2:
            case 7:
            case 10:
                return new h(this.f95457c, a.f95458a);
            case 3:
            case 4:
            case 8:
            case 11:
                return new h(this.f95457c, b.f95459a);
            case 5:
            case 6:
            case 9:
            case 12:
                return new h(this.f95457c, c.f95460a);
            default:
                return null;
        }
    }

    public String b() {
        return this.f95456b;
    }
}
