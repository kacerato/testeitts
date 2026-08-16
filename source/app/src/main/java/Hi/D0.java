package hi;

import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class D0 {

    public String f90610a;

    public int f90611b;

    public char f90612c;

    public StringBuffer f90613d;

    public D0(String str) {
        this(str, IIndexConstants.PARAMETER_SEPARATOR);
    }

    public boolean a() {
        return this.f90611b != this.f90610a.length();
    }

    public String b() {
        if (this.f90611b == this.f90610a.length()) {
            return null;
        }
        int i10 = this.f90611b + 1;
        this.f90613d.setLength(0);
        boolean z10 = false;
        boolean z11 = false;
        while (i10 != this.f90610a.length()) {
            char charAt = this.f90610a.charAt(i10);
            if (charAt == '\"') {
                if (!z10) {
                    z11 = !z11;
                }
            } else if (!z10 && !z11) {
                if (charAt == '\\') {
                    this.f90613d.append(charAt);
                    z10 = true;
                } else {
                    if (charAt == this.f90612c) {
                        break;
                    }
                    this.f90613d.append(charAt);
                }
                i10++;
            }
            this.f90613d.append(charAt);
            z10 = false;
            i10++;
        }
        this.f90611b = i10;
        return this.f90613d.toString();
    }

    public D0(String str, char c10) {
        this.f90613d = new StringBuffer();
        this.f90610a = str;
        this.f90611b = -1;
        this.f90612c = c10;
    }
}
