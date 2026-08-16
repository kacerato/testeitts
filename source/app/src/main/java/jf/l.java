package jf;

import java.util.logging.Logger;
import p000if.C13702E;
import v0.C15761c;

public class l {

    public static final Logger f92934e = Logger.getLogger(l.class.getName());

    public final int f92935a;

    public final int f92936b;

    public final int f92937c;

    public final int f92938d;

    public l(int i10, int i11, int i12, int i13) {
        C13702E.i(i10, "minimum width", 1, i12);
        C13702E.i(i11, "minimum height", 1, i13);
        C13702E.i(i12, "maximum width", i10, Integer.MAX_VALUE);
        C13702E.i(i13, "maximum height", i11, Integer.MAX_VALUE);
        this.f92938d = i10;
        this.f92937c = i11;
        this.f92936b = i12;
        this.f92935a = i13;
    }

    public int a(int i10) {
        return f.h(i10, this.f92937c, this.f92935a);
    }

    public int b(int i10) {
        return f.h(i10, this.f92938d, this.f92936b);
    }

    public String c(int i10, int i11) {
        int i12 = this.f92938d;
        if (i10 < i12) {
            return String.format("width must not be < %d", Integer.valueOf(i12));
        }
        int i13 = this.f92936b;
        if (i10 > i13) {
            return String.format("width must not be > %d", Integer.valueOf(i13));
        }
        int i14 = this.f92937c;
        if (i11 < i14) {
            return String.format("height must not be < %d", Integer.valueOf(i14));
        }
        int i15 = this.f92935a;
        return i11 > i15 ? String.format("height must not be > %d", Integer.valueOf(i15)) : "";
    }

    public boolean d(int i10, int i11) {
        return f.v(this.f92937c, i11, this.f92935a) && f.v(this.f92938d, i10, this.f92936b);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            l lVar = (l) obj;
            if (lVar.f92935a == this.f92935a && lVar.f92936b == this.f92936b && lVar.f92937c == this.f92937c && lVar.f92938d == this.f92938d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((C15761c.f121060w + this.f92935a) * 29) + this.f92936b) * 29) + this.f92937c) * 29) + this.f92938d;
    }

    public String toString() {
        return String.format("(%d,%d)-(%d,%d)", Integer.valueOf(this.f92938d), Integer.valueOf(this.f92937c), Integer.valueOf(this.f92936b), Integer.valueOf(this.f92935a));
    }
}
