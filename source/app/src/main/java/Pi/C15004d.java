package pi;

import Bi.C2378j;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import hi.C13486b;
import java.security.SecureRandom;
import oh.C14549x;
import org.bouncycastle.cert.crmf.CRMFException;

public class C15004d {
    public static Object a(boolean z10, InterfaceC2379k interfaceC2379k, C13486b c13486b) throws CRMFException {
        try {
            return org.bouncycastle.crypto.util.c.c(z10, interfaceC2379k, c13486b);
        } catch (IllegalArgumentException e10) {
            throw new CRMFException(e10.getMessage(), e10);
        }
    }

    public C2378j b(C14549x c14549x, SecureRandom secureRandom) throws CRMFException {
        try {
            return org.bouncycastle.crypto.util.d.b(c14549x, secureRandom);
        } catch (IllegalArgumentException e10) {
            throw new CRMFException(e10.getMessage(), e10);
        }
    }

    public C13486b c(C14549x c14549x, C3360o0 c3360o0, SecureRandom secureRandom) throws CRMFException {
        try {
            return org.bouncycastle.crypto.util.a.a(c14549x, c3360o0.b().length * 8, secureRandom);
        } catch (IllegalArgumentException e10) {
            throw new CRMFException(e10.getMessage(), e10);
        }
    }
}
