package h1;

import org.eclipse.jdt.internal.core.JavaElement;

public final class C extends B {

    public final char f90177a;

    public C(char c10) {
        this.f90177a = c10;
    }

    @Override
    public final boolean a(char c10) {
        return c10 == this.f90177a;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = JavaElement.JEM_ESCAPE;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i10 = this.f90177a;
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[5 - i11] = "0123456789ABCDEF".charAt(i10 & 15);
            i10 >>= 4;
        }
        return "CharMatcher.is('" + String.copyValueOf(cArr) + "')";
    }
}
