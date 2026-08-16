package j1;

import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class L extends M {

    public final String f92488b;

    public L(String str) {
        this.f92488b = str;
    }

    @Override
    public final int N1() {
        return 3;
    }

    @Override
    public final int compareTo(Object obj) {
        M m10 = (M) obj;
        m10.N1();
        String str = this.f92488b;
        int length = str.length();
        String str2 = ((L) m10).f92488b;
        return length != str2.length() ? str.length() - str2.length() : str.compareTo(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && L.class == obj.getClass()) {
            return this.f92488b.equals(((L) obj).f92488b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{3, this.f92488b});
    }

    public final String toString() {
        return JavadocConstants.ANCHOR_PREFIX_END + this.f92488b + JavadocConstants.ANCHOR_PREFIX_END;
    }
}
