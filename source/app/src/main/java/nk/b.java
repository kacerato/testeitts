package Nk;

import oh.C14539s;
import yk.C16204f;

public class b {

    public static final C16204f.b f16410a;

    public static final C16204f.b f16411b;

    public static final C16204f.b f16412c;

    public static final C16204f.b f16413d;

    static {
        C16204f.b z10 = C16204f.d(C16204f.s(16).q("aes128"), C16204f.j(new Object[0])).z("ButterflyExpansion");
        f16410a = z10;
        C16204f.b q10 = z10.q("signingExpansion");
        C16204f.b bVar = Mk.a.f15372J;
        C16204f.b z11 = C16204f.y(q10, bVar.q("encryptionKey"), z10.q("encryptionExpansion")).z("ButterflyParamsOriginal");
        f16411b = z11;
        C16204f.b z12 = C16204f.d(z11.q("original"), z10.q("unified"), z10.q("compactUnified"), bVar.q("encryptionKey"), C16204f.j(new Object[0])).z("AdditionalParams");
        f16412c = z12;
        f16413d = C16204f.y(Mk.a.f15391b.q("version").B(new C14539s(2L)), Mk.a.f15415n.q("generationTime"), Lk.a.f14393C.q("type"), Lk.a.f14391A.q("tbsCert"), C16204f.v(z12.q("additionalParams")), C16204f.j(new Object[0])).z("EeRaCertRequest");
    }
}
