package Hk;

import yk.C16204f;

public class b {

    public static final C16204f.b f8598a;

    public static final C16204f.b f8599b;

    public static final C16204f.b f8600c;

    public static final C16204f.b f8601d;

    public static final C16204f.b f8602e;

    public static final C16204f.b f8603f;

    public static final C16204f.b f8604g;

    public static final C16204f.b f8605h;

    public static final C16204f.b f8606i;

    public static final C16204f.b f8607j;

    public static final C16204f.b f8608k;

    public static final C16204f.b f8609l;

    public static final C16204f.b f8610m;

    public static final C16204f.b f8611n;

    public static final C16204f.b f8612o;

    public static final C16204f.b f8613p;

    public static final C16204f.b f8614q;

    public static final C16204f.b f8615r;

    public static final C16204f.b f8616s;

    static {
        C16204f.b bVar = Mk.a.f15405i;
        C16204f.b z10 = bVar.z("CrlEntry");
        f8598a = z10;
        C16204f.b z11 = C16204f.z(z10).z("SequenceOfCrlEntry");
        f8599b = z11;
        C16204f.b bVar2 = Ik.a.f10047e;
        C16204f.b q10 = bVar2.q("version");
        C16204f.b bVar3 = Mk.a.f15415n;
        f8600c = C16204f.y(q10, bVar3.q("thisUpdate"), bVar3.q("nextUpdate"), z11.q("entries"), C16204f.j(new Object[0])).z("ToBeSignedCrl");
        C16204f.b z12 = C16204f.k().z("Url");
        f8601d = z12;
        C16204f.b z13 = z12.z("DcDelete");
        f8602e = z13;
        C16204f.b z14 = C16204f.y(z12.q("url"), Mk.a.f15413m.q("cert")).z("DcEntry");
        f8603f = z14;
        C16204f.b bVar4 = Jk.a.f10637a;
        C16204f.b z15 = C16204f.y(bVar4.q("aaCertificate"), z12.q("accessPoint")).z("AaEntry");
        f8604g = z15;
        C16204f.b z16 = C16204f.y(bVar4.q("eaCertificate"), z12.q("aaAccessPoint"), C16204f.v(z12.q("itsAccessPoint"))).z("EaEntry");
        f8605h = z16;
        C16204f.b z17 = C16204f.y(bVar4.q("selfsignedRootCa"), C16204f.v(bVar4.q("successorTo"))).z("RootCaEntry");
        f8606i = z17;
        C16204f.b z18 = C16204f.y(bVar4.q("selfSignedTLMCertificate"), C16204f.v(bVar4.q("successorTo")), z12.q("accessPoint")).z("TlmEntry");
        f8607j = z18;
        C16204f.b z19 = C16204f.d(bVar.q("cert"), z13.q("dc"), C16204f.j(new Object[0])).z("CtlDelete");
        f8608k = z19;
        C16204f.b z20 = C16204f.d(z17.q("rca"), z16.q("ea"), z15.q("aa"), z14.q("dc"), z18.q("tlm"), C16204f.j(new Object[0])).z("CtlEntry");
        f8609l = z20;
        C16204f.b z21 = C16204f.d(z20.q("add"), z19.q("delete"), C16204f.j(new Object[0])).z("CtlCommand");
        f8610m = z21;
        C16204f.b z22 = C16204f.z(z21).z("SequenceOfCtlCommand");
        f8611n = z22;
        C16204f.b z23 = C16204f.y(bVar2.q("version"), bVar3.q("nextUpdate"), C16204f.c().q("isFullCtl"), C16204f.n(0L, 255L).q("ctlSequence"), z22.q("ctlCommands"), C16204f.j(new Object[0])).z("CtlFormat");
        f8612o = z23;
        f8613p = z23.z("DeltaCtl");
        f8614q = z23.z("FullCtl");
        f8615r = z23.z("ToBeSignedRcaCtl");
        f8616s = z23.z("ToBeSignedRcaCtl");
    }
}
