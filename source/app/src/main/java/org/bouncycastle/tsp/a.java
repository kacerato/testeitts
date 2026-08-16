package org.bouncycastle.tsp;

import ci.C4190a;
import com.google.android.material.timepicker.ChipTextInputComboView;
import oh.C14539s;

public class a {

    public C4190a f102243a;

    public a(C4190a c4190a) {
        this.f102243a = c4190a;
    }

    public final String a(int i10) {
        StringBuilder sb2;
        String str;
        if (i10 < 10) {
            sb2 = new StringBuilder();
            str = ChipTextInputComboView.b.f65192c;
        } else {
            if (i10 >= 100) {
                return Integer.toString(i10);
            }
            sb2 = new StringBuilder();
            str = "0";
        }
        sb2.append(str);
        sb2.append(i10);
        return sb2.toString();
    }

    public int b() {
        return e(this.f102243a.v());
    }

    public int c() {
        return e(this.f102243a.x());
    }

    public int d() {
        return e(this.f102243a.y());
    }

    public final int e(C14539s c14539s) {
        if (c14539s != null) {
            return c14539s.O();
        }
        return 0;
    }

    public String toString() {
        return d() + "." + a(c()) + a(b());
    }
}
