package gi;

import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class f {

    public final String f90023a;

    public final char f90024b;

    public int f90025c;

    public f(String str) {
        this(str, IIndexConstants.PARAMETER_SEPARATOR);
    }

    public boolean a() {
        return this.f90025c < this.f90023a.length();
    }

    public String b() {
        if (this.f90025c >= this.f90023a.length()) {
            return null;
        }
        int i10 = this.f90025c + 1;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            int i11 = this.f90025c + 1;
            this.f90025c = i11;
            if (i11 < this.f90023a.length()) {
                char charAt = this.f90023a.charAt(this.f90025c);
                if (z10) {
                    z10 = false;
                } else if (charAt == '\"') {
                    z11 = !z11;
                } else if (z11) {
                    continue;
                } else if (charAt == '\\') {
                    z10 = true;
                } else if (charAt == this.f90024b) {
                    break;
                }
            } else if (z10 || z11) {
                throw new IllegalArgumentException("badly formatted directory string");
            }
        }
        return this.f90023a.substring(i10, this.f90025c);
    }

    public f(String str, char c10) {
        str.getClass();
        if (c10 == '\"' || c10 == '\\') {
            throw new IllegalArgumentException("reserved separator character");
        }
        this.f90023a = str;
        this.f90024b = c10;
        this.f90025c = str.length() < 1 ? 0 : -1;
    }
}
