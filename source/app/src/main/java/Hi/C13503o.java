package hi;

import j3.C13804a;
import java.math.BigInteger;
import java.util.Hashtable;
import oh.AbstractC14545v;
import oh.C14522j;

public class C13503o extends AbstractC14545v {

    public static final int f90857c = 0;

    public static final int f90858d = 1;

    public static final int f90859e = 2;

    public static final int f90860f = 3;

    public static final int f90861g = 4;

    public static final int f90862h = 5;

    public static final int f90863i = 6;

    public static final int f90864j = 8;

    public static final int f90865k = 9;

    public static final int f90866l = 10;

    public static final int f90867m = 0;

    public static final int f90868n = 1;

    public static final int f90869o = 2;

    public static final int f90870p = 3;

    public static final int f90871q = 4;

    public static final int f90872r = 5;

    public static final int f90873s = 6;

    public static final int f90874t = 8;

    public static final int f90875u = 9;

    public static final int f90876v = 10;

    public static final String[] f90877w = {C13804a.f92557d, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static final Hashtable f90878x = new Hashtable();

    public C14522j f90879b;

    public C13503o(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Invalid CRL reason : not in (0..MAX)");
        }
        this.f90879b = new C14522j(i10);
    }

    public static C13503o u(Object obj) {
        if (obj instanceof C13503o) {
            return (C13503o) obj;
        }
        if (obj != null) {
            return w(C14522j.F(obj).L());
        }
        return null;
    }

    public static C13503o w(int i10) {
        Integer j10 = org.bouncycastle.util.k.j(i10);
        Hashtable hashtable = f90878x;
        if (!hashtable.containsKey(j10)) {
            hashtable.put(j10, new C13503o(i10));
        }
        return (C13503o) hashtable.get(j10);
    }

    @Override
    public oh.B r() {
        return this.f90879b;
    }

    public String toString() {
        int intValue = v().intValue();
        return "CRLReason: " + ((intValue < 0 || intValue > 10) ? "invalid" : f90877w[intValue]);
    }

    public BigInteger v() {
        return this.f90879b.H();
    }
}
