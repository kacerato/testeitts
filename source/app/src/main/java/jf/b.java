package jf;

import java.util.logging.Logger;
import v0.C15761c;

public class b implements Comparable<b> {

    public static final Logger f92892d = Logger.getLogger(b.class.getName());

    public static final boolean f92893e = false;

    public final int f92894b;

    public final int f92895c;

    public b(int i10, int i11) {
        if (i10 < i11) {
            this.f92895c = i10;
            this.f92894b = i11;
        } else {
            this.f92894b = i10;
            this.f92895c = i11;
        }
    }

    @Override
    public int compareTo(b bVar) {
        int compare = Float.compare(this.f92895c, bVar.c());
        if (compare != 0) {
            return compare;
        }
        return Float.compare(this.f92894b, bVar.b());
    }

    public int b() {
        return this.f92894b;
    }

    public int c() {
        return this.f92895c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            b bVar = (b) obj;
            if (bVar.b() == this.f92894b && bVar.c() == this.f92895c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((C15761c.f121060w + this.f92895c) * 29) + this.f92894b;
    }

    public String toString() {
        return String.format("{%d,%d}", Integer.valueOf(this.f92895c), Integer.valueOf(this.f92894b));
    }
}
