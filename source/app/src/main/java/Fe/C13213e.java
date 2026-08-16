package fe;

import Wd.AbstractC3174q;
import Wd.H;
import Wd.b0;
import Zd.Q;
import Zd.j0;
import ae.C3602a;
import ee.c0;
import he.S;
import he.h0;
import he.k0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import oe.InterfaceC14499a;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C13213e<K> extends AbstractC3174q<K> implements c0<K>, Externalizable {

    public static final long f86307v = 1;

    public final h0<K> f86308s;

    public transient int[] f86309t;

    public int f86310u;

    public class a implements h0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, int i10) {
            C13213e.this.Y9(k10, i10);
            return true;
        }
    }

    public class b implements h0<K> {

        public boolean f86312a = true;

        public final StringBuilder f86313b;

        public b(StringBuilder sb2) {
            this.f86313b = sb2;
        }

        @Override
        public boolean a(K k10, int i10) {
            if (this.f86312a) {
                this.f86312a = false;
            } else {
                this.f86313b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86313b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(i10);
            return true;
        }
    }

    public class c extends C13213e<K>.d<K> {
        public c() {
            super(C13213e.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13213e.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13213e c13213e = C13213e.this;
            return c13213e.f86310u != c13213e.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13213e.this);
        }
    }

    public abstract class d<E> extends AbstractSet<E> implements Set<E>, Iterable<E> {
        public d() {
        }

        @Override
        public boolean add(E e10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        public abstract boolean c(E e10);

        @Override
        public void clear() {
            C13213e.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13213e.this.isEmpty();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean remove(Object obj) {
            return d(obj);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13213e.this.size();
        }

        @Override
        public Object[] toArray() {
            Object[] objArr = new Object[size()];
            Iterator<E> it = iterator();
            int i10 = 0;
            while (it.hasNext()) {
                objArr[i10] = it.next();
                i10++;
            }
            return objArr;
        }

        public d(C13213e c13213e, a aVar) {
            this();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            int size = size();
            if (tArr.length < size) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
            }
            Iterator<E> it = iterator();
            for (int i10 = 0; i10 < size; i10++) {
                tArr[i10] = it.next();
            }
            if (tArr.length > size) {
                tArr[size] = null;
            }
            return tArr;
        }
    }

    public class C1611e implements Sd.g {

        public class a implements S {

            public boolean f86318a = true;

            public final StringBuilder f86319b;

            public a(StringBuilder sb2) {
                this.f86319b = sb2;
            }

            @Override
            public boolean a(int i10) {
                if (this.f86318a) {
                    this.f86318a = false;
                } else {
                    this.f86319b.append(", ");
                }
                this.f86319b.append(i10);
                return true;
            }
        }

        public class b implements Q {

            public H f86321b;

            public int f86322c;

            public int f86323d;

            public b() {
                C13213e c13213e = C13213e.this;
                this.f86321b = c13213e;
                this.f86322c = c13213e.size();
                this.f86323d = this.f86321b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86323d = i10;
                if (i10 < 0) {
                    throw new NoSuchElementException();
                }
            }

            @Override
            public boolean hasNext() {
                return i() >= 0;
            }

            public final int i() {
                int i10;
                Object obj;
                if (this.f86322c != this.f86321b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13213e.this.f27557l;
                int i11 = this.f86323d;
                while (true) {
                    i10 = i11 - 1;
                    if (i11 <= 0 || !((obj = objArr[i10]) == b0.f27556p || obj == b0.f27555o)) {
                        break;
                    }
                    i11 = i10;
                }
                return i10;
            }

            @Override
            public int next() {
                h();
                return C13213e.this.f86309t[this.f86323d];
            }

            @Override
            public void remove() {
                if (this.f86322c != this.f86321b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86321b.kf();
                    C13213e.this.hf(this.f86323d);
                    this.f86321b.ff(false);
                    this.f86322c--;
                } catch (Throwable th2) {
                    this.f86321b.ff(false);
                    throw th2;
                }
            }
        }

        public C1611e() {
        }

        @Override
        public boolean A1(int[] iArr) {
            int length = iArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (remove(iArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean K1(int[] iArr) {
            for (int i10 : iArr) {
                if (!C13213e.this.Q(i10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean M1(int[] iArr) {
            Arrays.sort(iArr);
            C13213e c13213e = C13213e.this;
            int[] iArr2 = c13213e.f86309t;
            Object[] objArr = c13213e.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && Arrays.binarySearch(iArr, iArr2[i10]) < 0) {
                    C13213e.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public int[] P0(int[] iArr) {
            return C13213e.this.e0(iArr);
        }

        @Override
        public boolean U0(S s10) {
            return C13213e.this.m0(s10);
        }

        @Override
        public boolean add(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends Integer> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b2(Sd.g gVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13213e.this.clear();
        }

        @Override
        public boolean contains(int i10) {
            return C13213e.this.Q(i10);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Integer) {
                    if (!C13213e.this.Q(((Integer) obj).intValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d2(Sd.g gVar) {
            if (this == gVar) {
                clear();
                return true;
            }
            Q it = gVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean h2(Sd.g gVar) {
            Q it = gVar.iterator();
            while (it.hasNext()) {
                if (!C13213e.this.Q(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int i() {
            return C13213e.this.f86310u;
        }

        @Override
        public boolean isEmpty() {
            return C13213e.this.f27452b == 0;
        }

        @Override
        public Q iterator() {
            return new b();
        }

        @Override
        public boolean j2(Sd.g gVar) {
            boolean z10 = false;
            if (this == gVar) {
                return false;
            }
            Q it = iterator();
            while (it.hasNext()) {
                if (!gVar.contains(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean remove(int i10) {
            C13213e c13213e = C13213e.this;
            int[] iArr = c13213e.f86309t;
            Object[] objArr = c13213e.f27557l;
            int length = iArr.length;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i11];
                if (obj != b0.f27556p && obj != b0.f27555o && i10 == iArr[i11]) {
                    C13213e.this.hf(i11);
                    return true;
                }
                length = i11;
            }
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Integer) && remove(((Integer) obj).intValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Q it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Integer.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13213e.this.f27452b;
        }

        @Override
        public int[] toArray() {
            return C13213e.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13213e.this.m0(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean z2(int[] iArr) {
            throw new UnsupportedOperationException();
        }
    }

    public class f<K> extends C3602a<K> implements j0<K> {

        public final C13213e<K> f86325g;

        public f(C13213e<K> c13213e) {
            super(c13213e);
            this.f86325g = c13213e;
        }

        @Override
        public int e(int i10) {
            int value = value();
            this.f86325g.f86309t[this.f27462e] = i10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86325g.f27557l[this.f27462e];
        }

        @Override
        public int value() {
            return this.f86325g.f86309t[this.f27462e];
        }
    }

    public C13213e() {
        this.f86308s = new a();
    }

    @Override
    public void Ba(c0<? extends K> c0Var) {
        c0Var.n9(this.f86308s);
    }

    @Override
    public boolean Be(h0<? super K> h0Var) {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        kf();
        try {
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && !h0Var.a(obj, iArr[i10])) {
                    hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        } finally {
            ff(true);
        }
    }

    @Override
    public K[] C0(K[] kArr) {
        int size = size();
        if (kArr.length < size) {
            kArr = (K[]) ((Object[]) Array.newInstance(kArr.getClass().getComponentType(), size));
        }
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return kArr;
            }
            Object obj = objArr[i11];
            if (obj == b0.f27556p || obj == b0.f27555o) {
                length = i11;
            } else {
                kArr[i10] = obj;
                length = i11;
                i10++;
            }
        }
    }

    @Override
    public int Eb(K k10, int i10, int i11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i12 = (-wf2) - 1;
            int[] iArr = this.f86309t;
            int i13 = i10 + iArr[i12];
            iArr[i12] = i13;
            z10 = false;
            i11 = i13;
        } else {
            this.f86309t[wf2] = i11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean G(k0<? super K> k0Var) {
        return rf(k0Var);
    }

    public final int Hf(int i10, int i11) {
        int i12 = this.f86310u;
        boolean z10 = true;
        if (i11 < 0) {
            i11 = (-i11) - 1;
            i12 = this.f86309t[i11];
            z10 = false;
        }
        this.f86309t[i11] = i10;
        if (z10) {
            ef(this.f27558m);
        }
        return i12;
    }

    @Override
    public boolean Q(int i10) {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        int length = iArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o && i10 == iArr[i11]) {
                return true;
            }
            length = i11;
        }
    }

    @Override
    public int Y9(K k10, int i10) {
        return Hf(i10, wf(k10));
    }

    @Override
    public int a4(K k10, int i10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86309t[(-wf2) - 1] : Hf(i10, wf2);
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
        int[] iArr = this.f86309t;
        Arrays.fill(iArr, 0, iArr.length, this.f86310u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public int[] e0(int[] iArr) {
        int size = size();
        if (iArr.length < size) {
            iArr = new int[size];
        }
        int[] iArr2 = this.f86309t;
        Object[] objArr = this.f27557l;
        int length = iArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                iArr[i10] = iArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (iArr.length > size) {
            iArr[size] = this.f86310u;
        }
        return iArr;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        if (c0Var.size() != size()) {
            return false;
        }
        try {
            j0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                int value = it.value();
                if (value == this.f86310u) {
                    if (c0Var.get(key) != c0Var.i() || !c0Var.containsKey(key)) {
                        return false;
                    }
                } else if (value != c0Var.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public void f(Ud.e eVar) {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != b0.f27555o) {
                iArr[i10] = eVar.a(iArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public int get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86310u : this.f86309t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        int[] iArr = this.f86309t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        int[] iArr2 = new int[i10];
        this.f86309t = iArr2;
        Arrays.fill(iArr2, this.f86310u);
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Df(this.f27557l[(-wf2) - 1], obj);
                }
                this.f86309t[wf2] = iArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int d10 = Vd.b.d(iArr[i11]);
                Object obj2 = objArr[i11];
                i10 += d10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86309t[i10] = this.f86310u;
        super.hf(i10);
    }

    @Override
    public int i() {
        return this.f86310u;
    }

    @Override
    public j0<K> iterator() {
        return new f(this);
    }

    @Override
    public Object[] j() {
        Object[] objArr = new Object[size()];
        Object[] objArr2 = this.f27557l;
        int length = objArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return objArr;
            }
            Object obj = objArr2[i11];
            if (obj == b0.f27556p || obj == b0.f27555o) {
                length = i11;
            } else {
                objArr[i10] = obj;
                length = i11;
                i10++;
            }
        }
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f86309t = new int[jf2];
        return jf2;
    }

    @Override
    public Sd.g k() {
        return new C1611e();
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public boolean m0(S s10) {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !s10.a(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean n9(h0<? super K> h0Var) {
        Object[] objArr = this.f27557l;
        int[] iArr = this.f86309t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !h0Var.a(obj, iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends K, ? extends Integer> map) {
        for (Map.Entry<? extends K, ? extends Integer> entry : map.entrySet()) {
            Y9(entry.getKey(), entry.getValue().intValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86310u = objectInput.readInt();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            Y9(objectInput.readObject(), objectInput.readInt());
            readInt = i10;
        }
    }

    @Override
    public int remove(Object obj) {
        int i10 = this.f86310u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return i10;
        }
        int i11 = this.f86309t[tf2];
        hf(tf2);
        return i11;
    }

    @Override
    public boolean s5(K k10, int i10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        int[] iArr = this.f86309t;
        iArr[tf2] = iArr[tf2] + i10;
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        n9(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public int[] values() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f86309t;
        Object[] objArr = this.f27557l;
        int length = iArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return iArr;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                iArr[i10] = iArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.f27672q);
        objectOutput.writeInt(this.f86310u);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27557l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = this.f27557l[i10];
            if (obj != b0.f27555o && obj != b0.f27556p) {
                objectOutput.writeObject(obj);
                objectOutput.writeInt(this.f86309t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return s5(k10, 1);
    }

    public C13213e(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86308s = new a();
        this.f86310u = Vd.a.f26858g;
    }

    public C13213e(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86308s = new a();
        this.f86310u = Vd.a.f26858g;
    }

    public C13213e(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86308s = new a();
        this.f86310u = Vd.a.f26858g;
    }

    public C13213e(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, int i11) {
        super(interfaceC14499a, i10, f10);
        this.f86308s = new a();
        this.f86310u = i11;
        if (i11 != 0) {
            Arrays.fill(this.f86309t, i11);
        }
    }

    public C13213e(InterfaceC14499a<? super K> interfaceC14499a, c0<? extends K> c0Var) {
        this(interfaceC14499a, c0Var.size(), 0.5f, c0Var.i());
        if (c0Var instanceof C13213e) {
            C13213e c13213e = (C13213e) c0Var;
            this.f27454d = c13213e.f27454d;
            int i10 = c13213e.f86310u;
            this.f86310u = i10;
            this.f27672q = c13213e.f27672q;
            if (i10 != 0) {
                Arrays.fill(this.f86309t, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ba(c0Var);
    }
}
