package hj;

import Ah.h;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.util.Hashtable;
import oh.C14549x;

public abstract class AbstractC13515b {

    public static final Hashtable f91047a;

    static {
        Hashtable hashtable = new Hashtable();
        f91047a = hashtable;
        hashtable.put(h.f635l, "SHA1withRSA");
        hashtable.put(h.f636m, "SHA256withRSA");
        hashtable.put(h.f637n, "SHA1withRSAandMGF1");
        hashtable.put(h.f638o, "SHA256withRSAandMGF1");
        hashtable.put(h.f639p, "SHA512withRSA");
        hashtable.put(h.f640q, "SHA512withRSAandMGF1");
        hashtable.put(h.f642s, "SHA1withECDSA");
        hashtable.put(h.f643t, "SHA224withECDSA");
        hashtable.put(h.f644u, "SHA256withECDSA");
        hashtable.put(h.f645v, "SHA384withECDSA");
        hashtable.put(h.f646w, "SHA512withECDSA");
    }

    public abstract Signature a(String str) throws NoSuchProviderException, NoSuchAlgorithmException;

    public Signature b(C14549x c14549x) throws NoSuchProviderException, NoSuchAlgorithmException {
        return a((String) f91047a.get(c14549x));
    }
}
