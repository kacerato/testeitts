package Wd;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public abstract class b0<T> extends H {

    public static final long f27554n = -3461112548087185871L;

    public static final Object f27555o = new Object();

    public static final Object f27556p = new Object();

    public transient Object[] f27557l;

    public boolean f27558m;

    public b0() {
    }

    public static Set<Object> Af(Object[] objArr) {
        HashSet hashSet = new HashSet();
        for (Object obj : objArr) {
            if (obj != f27556p && obj != f27555o) {
                hashSet.add(obj);
            }
        }
        return hashSet;
    }

    public static String Bf(Object obj) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(obj == null ? "class null" : obj.getClass());
        sb2.append(" id= ");
        sb2.append(System.identityHashCode(obj));
        sb2.append(" hashCode= ");
        sb2.append(obj == null ? 0 : obj.hashCode());
        sb2.append(" toString= ");
        sb2.append(String.valueOf(obj));
        return sb2.toString();
    }

    public static String Cf(int i10, int i11) {
        if (i10 == i11) {
            return "";
        }
        return "[Warning] apparent concurrent modification of the key set. Size before and after rehash() do not match " + i11 + " vs " + i10;
    }

    public static String nf(Object[] objArr, int i10) {
        StringBuilder sb2 = new StringBuilder();
        Set<Object> Af2 = Af(objArr);
        if (Af2.size() != i10) {
            sb2.append("\nhashCode() and/or equals() have inconsistent implementation");
            sb2.append("\nKey set lost entries, now got ");
            sb2.append(Af2.size());
            sb2.append(" instead of ");
            sb2.append(i10);
            sb2.append(". This can manifest itself as an apparent duplicate key.");
        }
        return sb2.toString();
    }

    public static String qf(Object obj, Object obj2) {
        StringBuilder sb2 = new StringBuilder();
        if (obj == obj2) {
            return "a == b";
        }
        if (obj.getClass() != obj2.getClass()) {
            sb2.append("Class of objects differ a=");
            sb2.append((Object) obj.getClass());
            sb2.append(" vs b=");
            sb2.append((Object) obj2.getClass());
            boolean equals = obj.equals(obj2);
            boolean equals2 = obj2.equals(obj);
            if (equals != equals2) {
                sb2.append("\nequals() of a or b object are asymmetric");
                sb2.append("\na.equals(b) =");
                sb2.append(equals);
                sb2.append("\nb.equals(a) =");
                sb2.append(equals2);
            }
        }
        return sb2.toString();
    }

    public final void Df(Object obj, Object obj2) throws IllegalArgumentException {
        throw mf(obj, obj2, "");
    }

    public final void Ef(Object obj, Object obj2, int i10, int i11, Object[] objArr) throws IllegalArgumentException {
        throw mf(obj, obj2, of(obj, obj2, size(), i11, objArr));
    }

    public boolean I1(Object obj, Object obj2) {
        if (obj2 == null || obj2 == f27555o) {
            return false;
        }
        return obj.equals(obj2);
    }

    @Override
    public int Ye() {
        return this.f27557l.length;
    }

    public boolean contains(Object obj) {
        return tf(obj) >= 0;
    }

    @Override
    public void hf(int i10) {
        this.f27557l[i10] = f27555o;
        super.hf(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        Object[] objArr = new Object[jf2];
        this.f27557l = objArr;
        Arrays.fill(objArr, f27556p);
        return jf2;
    }

    public final IllegalArgumentException mf(Object obj, Object obj2, String str) {
        return new IllegalArgumentException("Equal objects must have equal hashcodes. During rehashing, Trove discovered that the following two objects claim to be equal (as in java.lang.Object.equals()) but their hashCodes (or those calculated by your TObjectHashingStrategy) are not equal.This violates the general contract of java.lang.Object.hashCode().  See bullet point two in that method's documentation. object #1 =" + Bf(obj) + "; object #2 =" + Bf(obj2) + "\n" + str);
    }

    public String of(Object obj, Object obj2, int i10, int i11, Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(pf(obj, obj2));
        sb2.append(Cf(i10, i11));
        sb2.append(nf(objArr, i11));
        if (obj == obj2) {
            sb2.append("Inserting same object twice, rehashing bug. Object= ");
            sb2.append(obj2);
        }
        return sb2.toString();
    }

    public final String pf(Object obj, Object obj2) {
        StringBuilder sb2 = new StringBuilder();
        HashSet hashSet = new HashSet();
        for (Object obj3 : this.f27557l) {
            if (obj3 != f27556p && obj3 != f27555o) {
                if (obj3 != null) {
                    hashSet.add(obj3.getClass());
                } else {
                    hashSet.add(null);
                }
            }
        }
        if (hashSet.size() > 1) {
            sb2.append("\nMore than one type used for keys. Watch out for asymmetric equals(). Read about the 'Liskov substitution principle' and the implications for equals() in java.");
            sb2.append("\nKey types: ");
            sb2.append((Object) hashSet);
            sb2.append(qf(obj, obj2));
        }
        return sb2.toString();
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
    }

    public boolean rf(he.k0<? super T> k0Var) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != f27556p && obj != f27555o && !k0Var.a(obj)) {
                return false;
            }
            length = i10;
        }
    }

    public int sf(Object obj) {
        return obj.hashCode();
    }

    public int tf(Object obj) {
        if (obj == null) {
            return uf();
        }
        int sf2 = sf(obj) & Integer.MAX_VALUE;
        Object[] objArr = this.f27557l;
        int length = sf2 % objArr.length;
        Object obj2 = objArr[length];
        if (obj2 == f27556p) {
            return -1;
        }
        return (obj2 == obj || I1(obj, obj2)) ? length : vf(obj, length, sf2, obj2);
    }

    public final int uf() {
        int i10 = 0;
        for (Object obj : this.f27557l) {
            if (obj == null) {
                return i10;
            }
            if (obj == f27556p) {
                return -1;
            }
            i10++;
        }
        return -1;
    }

    public final int vf(Object obj, int i10, int i11, Object obj2) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        do {
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            Object obj3 = objArr[i13];
            if (obj3 == f27556p) {
                return -1;
            }
            if (obj3 == obj || I1(obj, obj3)) {
                return i13;
            }
        } while (i13 != i10);
        return -1;
    }

    public int wf(T t10) {
        this.f27558m = false;
        if (t10 == null) {
            return xf();
        }
        int sf2 = sf(t10) & Integer.MAX_VALUE;
        Object[] objArr = this.f27557l;
        int length = sf2 % objArr.length;
        Object obj = objArr[length];
        if (obj != f27556p) {
            return (obj == t10 || I1(t10, obj)) ? (-length) - 1 : yf(t10, length, sf2, obj);
        }
        this.f27558m = true;
        objArr[length] = t10;
        return length;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
    }

    public final int xf() {
        int i10 = 0;
        int i11 = -1;
        for (Object obj : this.f27557l) {
            if (obj == f27555o && i11 == -1) {
                i11 = i10;
            }
            if (obj == f27556p) {
                if (i11 != -1) {
                    this.f27557l[i11] = null;
                    return i11;
                }
                this.f27558m = true;
                this.f27557l[i10] = null;
                return i10;
            }
            if (obj == null) {
                return (-i10) - 1;
            }
            i10++;
        }
        if (i11 == -1) {
            throw new IllegalStateException("Could not find insertion index for null key. Key set full!?!!");
        }
        this.f27557l[i11] = null;
        return i11;
    }

    public final int yf(T t10, int i10, int i11, Object obj) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        int i12 = (i11 % (length - 2)) + 1;
        int i13 = i10;
        int i14 = -1;
        do {
            if (obj == f27555o && i14 == -1) {
                i14 = i13;
            }
            i13 -= i12;
            if (i13 < 0) {
                i13 += length;
            }
            obj = objArr[i13];
            if (obj == f27556p) {
                if (i14 != -1) {
                    this.f27557l[i14] = t10;
                    return i14;
                }
                this.f27558m = true;
                this.f27557l[i13] = t10;
                return i13;
            }
            if (obj == t10 || I1(t10, obj)) {
                return (-i13) - 1;
            }
        } while (i13 != i10);
        if (i14 == -1) {
            throw new IllegalStateException("No free or removed slots available. Key set full?!!");
        }
        this.f27557l[i14] = t10;
        return i14;
    }

    @Deprecated
    public int zf(T t10) {
        return wf(t10);
    }

    public b0(int i10) {
        super(i10);
    }

    public b0(int i10, float f10) {
        super(i10, f10);
    }
}
