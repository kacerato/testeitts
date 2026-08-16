package th;

import hi.C13496h;
import hi.C13505q;
import java.io.IOException;
import oh.AbstractC14545v;

public class z extends C15426b {
    public z(int i10, AbstractC14545v abstractC14545v) {
        super(i10, abstractC14545v);
    }

    public static z C(Object obj) {
        if (obj == null || (obj instanceof z)) {
            return (z) obj;
        }
        if (obj instanceof C15426b) {
            try {
                return C(((C15426b) obj).getEncoded());
            } catch (IOException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            }
        }
        if (obj instanceof byte[]) {
            try {
                obj = oh.B.B((byte[]) obj);
            } catch (IOException unused) {
                throw new IllegalArgumentException("Invalid encoding in OOBCert");
            }
        }
        if (obj instanceof oh.E) {
            return new z(C13505q.v(obj));
        }
        if (obj instanceof oh.M) {
            oh.M S10 = oh.M.S(obj, 128);
            return new z(S10.g(), S10.O());
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    public static z D(oh.M m10, boolean z10) {
        if (m10 == null) {
            return null;
        }
        if (z10) {
            return C(m10.O());
        }
        throw new IllegalArgumentException("tag must be explicit");
    }

    public z(C13496h c13496h) {
        super(1, c13496h);
    }

    public z(C13505q c13505q) {
        super(c13505q);
    }
}
