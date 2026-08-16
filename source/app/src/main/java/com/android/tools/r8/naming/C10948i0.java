package com.android.tools.r8.naming;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.graph.C4798y;

public final class C10948i0 extends C10953j0 {

    public final String f55927g;

    public C10948i0(C4798y c4798y) {
        super(c4798y);
        this.f55927g = AbstractC4281a.a(c4798y.E().x().f45397b, 1, 0);
    }

    @Override
    public final String a(char[] cArr, L l10) {
        String a10 = super.a(cArr, l10);
        if (cArr.length >= this.f55927g.length() + 1) {
            int i10 = 0;
            while (i10 < this.f55927g.length()) {
                char charAt = this.f55927g.charAt(i10);
                i10++;
                if (charAt != cArr[i10]) {
                }
            }
            return a10;
        }
        return this.f55927g + a10;
    }
}
