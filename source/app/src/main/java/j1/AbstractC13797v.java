package j1;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

public abstract class AbstractC13797v extends r implements Set {

    @CheckForNull
    public transient AbstractC13796u f92540c;

    public static int j(int i10) {
        int max = Math.max(i10, 2);
        if (max >= 751619276) {
            if (max < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static AbstractC13797v m(Object obj, Object obj2) {
        return o(2, obj, obj2);
    }

    public static AbstractC13797v o(int i10, Object... objArr) {
        if (i10 == 0) {
            return C13800y.f92547j;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new C13801z(obj);
        }
        int j10 = j(i10);
        Object[] objArr2 = new Object[j10];
        int i11 = j10 - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object obj2 = objArr[i14];
            if (obj2 == null) {
                throw new NullPointerException("at index " + i14);
            }
            int hashCode = obj2.hashCode();
            int a10 = C13793q.a(hashCode);
            while (true) {
                int i15 = a10 & i11;
                Object obj3 = objArr2[i15];
                if (obj3 == null) {
                    objArr[i13] = obj2;
                    objArr2[i15] = obj2;
                    i12 += hashCode;
                    i13++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    a10++;
                }
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new C13801z(obj4);
        }
        if (j(i13) < j10 / 2) {
            return o(i13, objArr);
        }
        if (i13 <= 0) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new C13800y(objArr, i12, objArr2, i11, i13);
    }

    @Override
    public abstract AbstractC13776A iterator();

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC13797v) && n() && ((AbstractC13797v) obj).n() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        Iterator it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 += next != null ? next.hashCode() : 0;
        }
        return i10;
    }

    public final AbstractC13796u k() {
        AbstractC13796u abstractC13796u = this.f92540c;
        if (abstractC13796u != null) {
            return abstractC13796u;
        }
        AbstractC13796u l10 = l();
        this.f92540c = l10;
        return l10;
    }

    public AbstractC13796u l() {
        Object[] array = toArray();
        int i10 = AbstractC13796u.f92539d;
        return AbstractC13796u.i(array, array.length);
    }

    public boolean n() {
        return false;
    }
}
