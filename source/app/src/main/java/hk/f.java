package Hk;

import java.math.BigInteger;
import yk.C16204f;

public class f {

    public static final C16204f.b f8625a;

    public static final C16204f.b f8626b;

    public static final C16204f.b f8627c;

    public static final C16204f.b f8628d;

    static {
        C16204f.b z10 = C16204f.h(C16204f.g("ok", BigInteger.ZERO), "cantparse", "badcontenttype", "imnottherecipient", "unknownencryptionalgorithm", "decryptionfailed", "unknownits", "invalidsignature", "invalidencryptionkey", "baditsstatus", "incompleterequest", "deniedpermissions", "invalidkeys", "deniedrequest", C16204f.j(new Object[0])).z("EnrolmentResponseCode");
        f8625a = z10;
        f8626b = C16204f.y(C16204f.s(16).q("requestHash"), z10.q("responseCode"), C16204f.v(Jk.a.f10637a.q("certificate")), C16204f.j(new Object[0])).z("InnerEcResponse");
        f8627c = C16204f.y(C16204f.r().q("itsId"), Ik.a.f10043a.q("certificateFormat"), Ik.a.f10046d.q("publicKeys"), Ik.a.f10044b.q("requestedSubjectAttributes"), C16204f.j(new Object[0])).z("InnerEcRequest");
        f8628d = Jk.a.f10640d.z("InnerEcRequestSignedForPop");
    }
}
