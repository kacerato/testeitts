package Tj;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.bouncycastle.util.w;

public class d extends BasicPermission {

    public static final int f25392d = 1;

    public static final int f25393e = 2;

    public static final int f25394f = 4;

    public static final int f25395g = 8;

    public static final int f25396h = 16;

    public static final int f25397i = 32;

    public static final int f25398j = 63;

    public static final String f25399k = "threadlocalecimplicitlyca";

    public static final String f25400l = "ecimplicitlyca";

    public static final String f25401m = "threadlocaldhdefaultparams";

    public static final String f25402n = "dhdefaultparams";

    public static final String f25403o = "acceptableeccurves";

    public static final String f25404p = "additionalecparameters";

    public static final String f25405q = "all";

    public final String f25406b;

    public final int f25407c;

    public d(String str) {
        super(str);
        this.f25406b = f25405q;
        this.f25407c = 63;
    }

    public final int a(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(w.l(str), " ,");
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals(f25399k)) {
                i10 |= 1;
            } else if (nextToken.equals(f25400l)) {
                i10 |= 2;
            } else if (nextToken.equals(f25401m)) {
                i10 |= 4;
            } else if (nextToken.equals(f25402n)) {
                i10 |= 8;
            } else if (nextToken.equals(f25403o)) {
                i10 |= 16;
            } else if (nextToken.equals(f25404p)) {
                i10 |= 32;
            } else if (nextToken.equals(f25405q)) {
                i10 = 63;
            }
        }
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException("unknown permissions passed to mask");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f25407c == dVar.f25407c && getName().equals(dVar.getName());
    }

    @Override
    public String getActions() {
        return this.f25406b;
    }

    public int hashCode() {
        return getName().hashCode() + this.f25407c;
    }

    @Override
    public boolean implies(Permission permission) {
        if (!(permission instanceof d) || !getName().equals(permission.getName())) {
            return false;
        }
        int i10 = this.f25407c;
        int i11 = ((d) permission).f25407c;
        return (i10 & i11) == i11;
    }

    public d(String str, String str2) {
        super(str, str2);
        this.f25406b = str2;
        this.f25407c = a(str2);
    }
}
