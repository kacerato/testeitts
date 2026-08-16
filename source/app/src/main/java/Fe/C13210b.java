package fe;

import Wd.AbstractC3174q;
import Wd.H;
import Wd.b0;
import Zd.InterfaceC3458p;
import Zd.g0;
import ae.C3602a;
import ee.Z;
import he.InterfaceC13462q;
import he.e0;
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

public class C13210b<K> extends AbstractC3174q<K> implements Z<K>, Externalizable {

    public static final long f86247v = 1;

    public final e0<K> f86248s;

    public transient char[] f86249t;

    public char f86250u;

    public class a implements e0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, char c10) {
            C13210b.this.qa(k10, c10);
            return true;
        }
    }

    public class C1607b implements e0<K> {

        public boolean f86252a = true;

        public final StringBuilder f86253b;

        public C1607b(StringBuilder sb2) {
            this.f86253b = sb2;
        }

        @Override
        public boolean a(K k10, char c10) {
            if (this.f86252a) {
                this.f86252a = false;
            } else {
                this.f86253b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86253b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(c10);
            return true;
        }
    }

    public class c extends C13210b<K>.d<K> {
        public c() {
            super(C13210b.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13210b.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13210b c13210b = C13210b.this;
            return c13210b.f86250u != c13210b.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13210b.this);
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
            C13210b.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13210b.this.isEmpty();
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
            return C13210b.this.size();
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

        public d(C13210b c13210b, a aVar) {
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

    public class e implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f86258a = true;

            public final StringBuilder f86259b;

            public a(StringBuilder sb2) {
                this.f86259b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f86258a) {
                    this.f86258a = false;
                } else {
                    this.f86259b.append(", ");
                }
                this.f86259b.append(c10);
                return true;
            }
        }

        public class C1608b implements InterfaceC3458p {

            public H f86261b;

            public int f86262c;

            public int f86263d;

            public C1608b() {
                C13210b c13210b = C13210b.this;
                this.f86261b = c13210b;
                this.f86262c = c13210b.size();
                this.f86263d = this.f86261b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86263d = i10;
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
                if (this.f86262c != this.f86261b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13210b.this.f27557l;
                int i11 = this.f86263d;
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
            public char next() {
                h();
                return C13210b.this.f86249t[this.f86263d];
            }

            @Override
            public void remove() {
                if (this.f86262c != this.f86261b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86261b.kf();
                    C13210b.this.hf(this.f86263d);
                    this.f86261b.ff(false);
                    this.f86262c--;
                } catch (Throwable th2) {
                    this.f86261b.ff(false);
                    throw th2;
                }
            }
        }

        public e() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13210b.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13210b c13210b = C13210b.this;
            char[] cArr2 = c13210b.f86249t;
            Object[] objArr = c13210b.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && Arrays.binarySearch(cArr, cArr2[i10]) < 0) {
                    C13210b.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean addAll(Collection<? extends Character> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b(char c10) {
            C13210b c13210b = C13210b.this;
            char[] cArr = c13210b.f86249t;
            Object[] objArr = c13210b.f27557l;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && c10 == cArr[i10]) {
                    C13210b.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return C13210b.this.O(c10);
        }

        @Override
        public void clear() {
            C13210b.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13210b.this.O(((Character) obj).charValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean e1(char c10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g1(InterfaceC13462q interfaceC13462q) {
            return C13210b.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return C13210b.this.f86250u;
        }

        @Override
        public boolean isEmpty() {
            return C13210b.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            return new C1608b();
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13210b.this.O(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Character) && b(((Character) obj).charValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3458p it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Character.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13210b.this.f27452b;
        }

        @Override
        public boolean t2(Sd.b bVar) {
            if (this == bVar) {
                clear();
                return true;
            }
            InterfaceC3458p it = bVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (b(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public char[] toArray() {
            return C13210b.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13210b.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13210b.this.O(c10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean u2(Sd.b bVar) {
            boolean z10 = false;
            if (this == bVar) {
                return false;
            }
            InterfaceC3458p it = iterator();
            while (it.hasNext()) {
                if (!bVar.b1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean v1(char[] cArr) {
            int length = cArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (b(cArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean z1(Sd.b bVar) {
            throw new UnsupportedOperationException();
        }
    }

    public class f<K> extends C3602a<K> implements g0<K> {

        public final C13210b<K> f86265g;

        public f(C13210b<K> c13210b) {
            super(c13210b);
            this.f86265g = c13210b;
        }

        @Override
        public char a(char c10) {
            char value = value();
            this.f86265g.f86249t[this.f27462e] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86265g.f27557l[this.f27462e];
        }

        @Override
        public char value() {
            return this.f86265g.f86249t[this.f27462e];
        }
    }

    public C13210b() {
        this.f86248s = new a();
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean G(k0<? super K> k0Var) {
        return rf(k0Var);
    }

    public final char Hf(char c10, int i10) {
        char c11 = this.f86250u;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f86249t[i10];
            z10 = false;
        }
        this.f86249t[i10] = c10;
        if (z10) {
            ef(this.f27558m);
        }
        return c11;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean O(char c10) {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && c10 == cArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void Ya(Z<? extends K> z10) {
        z10.p7(this.f86248s);
    }

    @Override
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f86249t;
        Object[] objArr = this.f27557l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                cArr[i10] = cArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (cArr.length > size) {
            cArr[size] = this.f86250u;
        }
        return cArr;
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
        char[] cArr = this.f86249t;
        Arrays.fill(cArr, 0, cArr.length, this.f86250u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Z)) {
            return false;
        }
        Z z10 = (Z) obj;
        if (z10.size() != size()) {
            return false;
        }
        try {
            g0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                char value = it.value();
                if (value == this.f86250u) {
                    if (z10.get(key) != z10.i() || !z10.containsKey(key)) {
                        return false;
                    }
                } else if (value != z10.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != b0.f27555o) {
                cArr[i10] = bVar.a(cArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public char get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86250u : this.f86249t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        char[] cArr = this.f86249t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        char[] cArr2 = new char[i10];
        this.f86249t = cArr2;
        Arrays.fill(cArr2, this.f86250u);
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
                this.f86249t[wf2] = cArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public char h4(K k10, char c10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86249t[(-wf2) - 1] : Hf(c10, wf2);
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
        int length = cArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int d10 = Vd.b.d(cArr[i11]);
                Object obj2 = objArr[i11];
                i10 += d10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86249t[i10] = this.f86250u;
        super.hf(i10);
    }

    @Override
    public char i() {
        return this.f86250u;
    }

    @Override
    public g0<K> iterator() {
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
    public boolean je(e0<? super K> e0Var) {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
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
                if (obj != b0.f27556p && obj != b0.f27555o && !e0Var.a(obj, cArr[i10])) {
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
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f86249t = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new e();
    }

    @Override
    public boolean k5(K k10, char c10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        char[] cArr = this.f86249t;
        cArr[tf2] = (char) (cArr[tf2] + c10);
        return true;
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public char m9(K k10, char c10, char c11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            char[] cArr = this.f86249t;
            char c12 = (char) (cArr[i10] + c10);
            cArr[i10] = c12;
            z10 = false;
            c11 = c12;
        } else {
            this.f86249t[wf2] = c11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return c11;
    }

    @Override
    public boolean p7(e0<? super K> e0Var) {
        Object[] objArr = this.f27557l;
        char[] cArr = this.f86249t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !e0Var.a(obj, cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends K, ? extends Character> map) {
        for (Map.Entry<? extends K, ? extends Character> entry : map.entrySet()) {
            qa(entry.getKey(), entry.getValue().charValue());
        }
    }

    @Override
    public char qa(K k10, char c10) {
        return Hf(c10, wf(k10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86250u = objectInput.readChar();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            qa(objectInput.readObject(), objectInput.readChar());
            readInt = i10;
        }
    }

    @Override
    public char remove(Object obj) {
        char c10 = this.f86250u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return c10;
        }
        char c11 = this.f86249t[tf2];
        hf(tf2);
        return c11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        p7(new C1607b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f86249t;
        Object[] objArr = this.f27557l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                cArr[i10] = cArr2[i11];
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
        objectOutput.writeChar(this.f86250u);
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
                objectOutput.writeChar(this.f86249t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return k5(k10, (char) 1);
    }

    public C13210b(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86248s = new a();
        this.f86250u = Vd.a.f26857f;
    }

    public C13210b(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86248s = new a();
        this.f86250u = Vd.a.f26857f;
    }

    public C13210b(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86248s = new a();
        this.f86250u = Vd.a.f26857f;
    }

    public C13210b(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, char c10) {
        super(interfaceC14499a, i10, f10);
        this.f86248s = new a();
        this.f86250u = c10;
        if (c10 != 0) {
            Arrays.fill(this.f86249t, c10);
        }
    }

    public C13210b(InterfaceC14499a<? super K> interfaceC14499a, Z<? extends K> z10) {
        this(interfaceC14499a, z10.size(), 0.5f, z10.i());
        if (z10 instanceof C13210b) {
            C13210b c13210b = (C13210b) z10;
            this.f27454d = c13210b.f27454d;
            char c10 = c13210b.f86250u;
            this.f86250u = c10;
            this.f27672q = c13210b.f27672q;
            if (c10 != 0) {
                Arrays.fill(this.f86249t, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ya(z10);
    }
}
