package h1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jspecify.annotations.NullMarked;

@NullMarked
public final class C13408b {

    public final F f90191a;

    public final boolean f90192b;

    public final L f90193c;

    public C13408b(L l10, boolean z10, F f10, int i10) {
        this.f90193c = l10;
        this.f90192b = z10;
        this.f90191a = f10;
    }

    public static C13408b c(F f10) {
        return new C13408b(new L(f10), false, E.f90179b, Integer.MAX_VALUE);
    }

    public final C13408b b() {
        return new C13408b(this.f90193c, true, this.f90191a, Integer.MAX_VALUE);
    }

    public final Iterable d(CharSequence charSequence) {
        return new M(this, charSequence);
    }

    public final List f(CharSequence charSequence) {
        charSequence.getClass();
        Iterator h10 = h(charSequence);
        ArrayList arrayList = new ArrayList();
        while (h10.hasNext()) {
            arrayList.add((String) h10.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final Iterator h(CharSequence charSequence) {
        L l10 = this.f90193c;
        return new K(l10, this, charSequence, l10.f90181a);
    }
}
