package Hk;

import java.math.BigInteger;
import yk.C16204f;

public class c {

    public static final C16204f.b f8617a;

    public static final C16204f.b f8618b;

    public static final C16204f.b f8619c;

    public static final C16204f.b f8620d;

    static {
        C16204f.b z10 = C16204f.h(C16204f.g("ok", BigInteger.ZERO), "its-aa-cantparse", "its-aa-badcontenttype", "its-aa-imnottherecipient", "its-aa-unknownencryptionalgorithm", "its-aa-decryptionfailed", "its-aa-keysdontmatch", "its-aa-incompleterequest", "its-aa-invalidencryptionkey", "its-aa-outofsyncrequest", "its-aa-unknownea", "its-aa-invalidea", "its-aa-deniedpermissions", "aa-ea-cantreachea", "ea-aa-cantparse", "ea-aa-badcontenttype", "ea-aa-imnottherecipient", "ea-aa-unknownencryptionalgorithm", "ea-aa-decryptionfailed", "invalidaa", "invalidaasignature", "wrongea", "unknownits", "invalidsignature", "invalidencryptionkey", "deniedpermissions", "deniedtoomanycerts").z("AuthorizationResponseCode");
        f8617a = z10;
        f8618b = C16204f.y(C16204f.s(16).q("requestHash"), z10.q("responseCode"), C16204f.v(Jk.a.f10637a.q("certificate")), C16204f.j(new Object[0])).z("InnerAtResponse");
        C16204f.b z11 = C16204f.y(Mk.a.f15405i.q("eaId"), C16204f.s(16).q("keyTag"), Ik.a.f10043a.q("certificateFormat"), Ik.a.f10044b.q("requestedSubjectAttributes"), C16204f.j(new Object[0])).z("SharedAtRequest");
        f8619c = z11;
        f8620d = C16204f.y(Ik.a.f10046d.q("publicKeys"), C16204f.s(32).q("hmacKey"), z11.q("sharedAtRequest"), Ik.a.f10045c.q("ecSignature")).z("InnerAtRequest");
    }
}
