package N2;

import G0.A;
import M2.a;
import com.google.android.gms.measurement.internal.C12251a4;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import n1.C14345a;

public final class e implements a {

    public final Set f15478a;

    public final a.b f15479b;

    public final C14345a f15480c;

    public final d f15481d;

    public e(C14345a c14345a, a.b bVar) {
        this.f15479b = bVar;
        this.f15480c = c14345a;
        d dVar = new d(this);
        this.f15481d = dVar;
        c14345a.s(dVar);
        this.f15478a = new HashSet();
    }

    @Override
    public final a.b N1() {
        return this.f15479b;
    }

    @Override
    public final void P1() {
        this.f15478a.clear();
    }

    @Override
    public final void a(Set set) {
        Set set2 = this.f15478a;
        set2.clear();
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (hashSet.size() >= 50) {
                break;
            }
            int i10 = c.f15476g;
            if (str != null && str.length() != 0) {
                int codePointAt = str.codePointAt(0);
                if (!Character.isLetter(codePointAt)) {
                    if (codePointAt == 95) {
                        codePointAt = 95;
                    }
                }
                int length = str.length();
                int charCount = Character.charCount(codePointAt);
                while (true) {
                    if (charCount < length) {
                        int codePointAt2 = str.codePointAt(charCount);
                        if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                            charCount += Character.charCount(codePointAt2);
                        }
                    } else if (str.length() != 0) {
                        int codePointAt3 = str.codePointAt(0);
                        if (Character.isLetter(codePointAt3)) {
                            int length2 = str.length();
                            int charCount2 = Character.charCount(codePointAt3);
                            while (true) {
                                if (charCount2 >= length2) {
                                    String b10 = C12251a4.b(str);
                                    if (b10 != null) {
                                        str = b10;
                                    }
                                    A.r(str);
                                    hashSet.add(str);
                                } else {
                                    int codePointAt4 = str.codePointAt(charCount2);
                                    if (codePointAt4 == 95 || Character.isLetterOrDigit(codePointAt4)) {
                                        charCount2 += Character.charCount(codePointAt4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        set2.addAll(hashSet);
    }

    public final a.b b() {
        return this.f15479b;
    }
}
