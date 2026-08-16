package h1;

import com.google.firebase.analytics.FirebaseAnalytics;

public final class K extends N {

    public final F f90180i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(L l10, C13408b c13408b, CharSequence charSequence, F f10) {
        super(c13408b, charSequence);
        this.f90180i = f10;
    }

    @Override
    public final int c(int i10) {
        return i10 + 1;
    }

    @Override
    public final int d(int i10) {
        CharSequence charSequence = this.f90184d;
        int length = charSequence.length();
        J.b(i10, length, FirebaseAnalytics.d.f67690b0);
        while (i10 < length) {
            if (this.f90180i.a(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }
}
