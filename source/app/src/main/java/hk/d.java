package Hk;

import java.math.BigInteger;
import yk.C16204f;

public class d {

    public static final C16204f.b f8621a;

    public static final C16204f.b f8622b;

    public static final C16204f.b f8623c;

    static {
        C16204f.b z10 = C16204f.h(C16204f.g("ok", BigInteger.ZERO), "cantparse", "badcontenttype", "imnottherecipient", "unknownencryptionalgorithm", "decryptionfailed", "invalidaa", "invalidaasignature", "wrongea", "unknownits", "invalidsignature", "invalidencryptionkey", "deniedpermissions", "deniedtoomanycerts", "deniedrequest").z("AuthorizationValidationResponseCode");
        f8621a = z10;
        f8622b = C16204f.y(c.f8619c.q("sharedAtRequest"), Ik.a.f10045c.q("ecSignature"), C16204f.j(new Object[0])).z("AuthorizationValidationRequest");
        f8623c = C16204f.y(C16204f.s(16).q("requestHash"), z10.q("responseCode"), C16204f.v(Ik.a.f10044b.q("confirmedSubjectAttributes")), C16204f.j(new Object[0])).z("AuthorizationValidationResponse");
    }
}
