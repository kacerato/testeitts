package Kk;

import oh.C14539s;
import oh.InterfaceC14516g;
import yk.C16201c;
import yk.C16204f;
import yk.k;
import yk.l;

public class a {

    public static final C14539s f11458a;

    public static final C14539s f11459b;

    public static final InterfaceC14516g[] f11460c;

    public static final C16204f.b f11461d;

    public static final C16204f.b f11462e;

    public static final C16204f.b f11463f;

    public static final C16204f.b f11464g;

    public static final C16204f.b f11465h;

    public static final C16204f.b f11466i;

    public class C0375a implements k {

        public final C16201c f11467a = a.f11462e.q("content").f();

        public final C16201c f11468b = a.f11464g.q("content").f();

        @Override
        public C16201c a(l lVar) {
            C14539s F10 = C14539s.F(lVar.a(0).r());
            if (F10.A(a.f11458a)) {
                return this.f11467a;
            }
            if (F10.A(a.f11459b)) {
                return this.f11468b;
            }
            throw new IllegalStateException("unknown extension type " + ((Object) F10));
        }

        @Override
        public InterfaceC14516g[] j() {
            return a.f11460c;
        }
    }

    static {
        C14539s c14539s = new C14539s(1L);
        f11458a = c14539s;
        C14539s c14539s2 = new C14539s(2L);
        f11459b = c14539s2;
        f11460c = new InterfaceC14516g[]{c14539s, c14539s2};
        C16204f.b z10 = C16204f.n(0L, 255L).B(c14539s, c14539s2).z("ExtId");
        f11461d = z10;
        C16204f.b bVar = Mk.a.f15405i;
        f11462e = C16204f.y(bVar.q("issuerId"), C16204f.v(Mk.a.f15415n.q("lastKnownUpdate"))).z("EtsiTs102941CrlRequest");
        C16204f.b z11 = C16204f.y(bVar.q("issuerId"), C16204f.v(C16204f.n(0L, 255L).q("lastKnownCtlSequence"))).z("EtsiTs102941CtlRequest");
        f11463f = z11;
        f11464g = z11.z("EtsiTs102941DeltaCtlRequest");
        C16204f.b z12 = C16204f.y(z10.q("id"), C16204f.a(new C0375a()).q("content")).z("Extension");
        f11465h = z12;
        f11466i = z12.z("EtsiOriginatingHeaderInfoExtension");
    }
}
