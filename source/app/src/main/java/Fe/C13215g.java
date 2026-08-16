package fe;

import Sd.i;
import Ud.h;
import Wd.AbstractC3174q;
import Wd.H;
import Wd.b0;
import Zd.s0;
import ae.C3602a;
import ee.e0;
import he.k0;
import he.l0;
import he.t0;
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

public class C13215g<K> extends AbstractC3174q<K> implements e0<K>, Externalizable {

    public static final long f86347v = 1;

    public final l0<K> f86348s;

    public transient short[] f86349t;

    public short f86350u;

    public class a implements l0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, short s10) {
            C13215g.this.ga(k10, s10);
            return true;
        }
    }

    public class b implements l0<K> {

        public boolean f86352a = true;

        public final StringBuilder f86353b;

        public b(StringBuilder sb2) {
            this.f86353b = sb2;
        }

        @Override
        public boolean a(K k10, short s10) {
            if (this.f86352a) {
                this.f86352a = false;
            } else {
                this.f86353b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86353b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append((int) s10);
            return true;
        }
    }

    public class c extends C13215g<K>.d<K> {
        public c() {
            super(C13215g.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13215g.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13215g c13215g = C13215g.this;
            return c13215g.f86350u != c13215g.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13215g.this);
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
            C13215g.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13215g.this.isEmpty();
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
            return C13215g.this.size();
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

        public d(C13215g c13215g, a aVar) {
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

    public class e<K> extends C3602a<K> implements Zd.l0<K> {

        public final C13215g<K> f86357g;

        public e(C13215g<K> c13215g) {
            super(c13215g);
            this.f86357g = c13215g;
        }

        @Override
        public short c(short s10) {
            short value = value();
            this.f86357g.f86349t[this.f27462e] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86357g.f27557l[this.f27462e];
        }

        @Override
        public short value() {
            return this.f86357g.f86349t[this.f27462e];
        }
    }

    public class f implements i {

        public class a implements t0 {

            public boolean f86360a = true;

            public final StringBuilder f86361b;

            public a(StringBuilder sb2) {
                this.f86361b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f86360a) {
                    this.f86360a = false;
                } else {
                    this.f86361b.append(", ");
                }
                this.f86361b.append((int) s10);
                return true;
            }
        }

        public class b implements s0 {

            public H f86363b;

            public int f86364c;

            public int f86365d;

            public b() {
                C13215g c13215g = C13215g.this;
                this.f86363b = c13215g;
                this.f86364c = c13215g.size();
                this.f86365d = this.f86363b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86365d = i10;
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
                if (this.f86364c != this.f86363b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13215g.this.f27557l;
                int i11 = this.f86365d;
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
            public short next() {
                h();
                return C13215g.this.f86349t[this.f86365d];
            }

            @Override
            public void remove() {
                if (this.f86364c != this.f86363b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86363b.kf();
                    C13215g.this.hf(this.f86365d);
                    this.f86363b.ff(false);
                    this.f86364c--;
                } catch (Throwable th2) {
                    this.f86363b.ff(false);
                    throw th2;
                }
            }
        }

        public f() {
        }

        @Override
        public boolean A2(short[] sArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean F1(i iVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public short[] N0(short[] sArr) {
            return C13215g.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return C13215g.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!C13215g.this.L(s10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean addAll(Collection<? extends Short> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c1(short s10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13215g.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!C13215g.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            C13215g c13215g = C13215g.this;
            short[] sArr = c13215g.f86349t;
            Object[] objArr = c13215g.f27557l;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && s10 == sArr[i10]) {
                    C13215g.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return C13215g.this.N(t0Var);
        }

        @Override
        public short i() {
            return C13215g.this.f86350u;
        }

        @Override
        public boolean isEmpty() {
            return C13215g.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            return new b();
        }

        @Override
        public boolean n1(short[] sArr) {
            int length = sArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (d(sArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean o1(i iVar) {
            if (this == iVar) {
                clear();
                return true;
            }
            s0 it = iVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (d(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean q2(i iVar) {
            boolean z10 = false;
            if (this == iVar) {
                return false;
            }
            s0 it = iterator();
            while (it.hasNext()) {
                if (!iVar.W0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean r1(short[] sArr) {
            Arrays.sort(sArr);
            C13215g c13215g = C13215g.this;
            short[] sArr2 = c13215g.f86349t;
            Object[] objArr = c13215g.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && Arrays.binarySearch(sArr, sArr2[i10]) < 0) {
                    C13215g.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Short) && d(((Short) obj).shortValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            s0 it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Short.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13215g.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return C13215g.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13215g.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!C13215g.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public C13215g() {
        this.f86348s = new a();
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

    public final short Hf(short s10, int i10) {
        short s11 = this.f86350u;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f86349t[i10];
            z10 = false;
        }
        this.f86349t[i10] = s10;
        if (z10) {
            ef(this.f27558m);
        }
        return s11;
    }

    @Override
    public void Ic(e0<? extends K> e0Var) {
        e0Var.l3(this.f86348s);
    }

    @Override
    public boolean L(short s10) {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && s10 == sArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public boolean N(t0 t0Var) {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public short N3(K k10, short s10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86349t[(-wf2) - 1] : Hf(s10, wf2);
    }

    @Override
    public boolean S4(K k10, short s10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        short[] sArr = this.f86349t;
        sArr[tf2] = (short) (sArr[tf2] + s10);
        return true;
    }

    @Override
    public boolean T6(l0<? super K> l0Var) {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
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
                if (obj != b0.f27556p && obj != b0.f27555o && !l0Var.a(obj, sArr[i10])) {
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
    public short U2(K k10, short s10, short s11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            short[] sArr = this.f86349t;
            short s12 = (short) (sArr[i10] + s10);
            sArr[i10] = s12;
            z10 = false;
            s11 = s12;
        } else {
            this.f86349t[wf2] = s11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return s11;
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
        short[] sArr = this.f86349t;
        Arrays.fill(sArr, 0, sArr.length, this.f86350u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        if (e0Var.size() != size()) {
            return false;
        }
        try {
            Zd.l0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                short value = it.value();
                if (value == this.f86350u) {
                    if (e0Var.get(key) != e0Var.i() || !e0Var.containsKey(key)) {
                        return false;
                    }
                } else if (value != e0Var.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public short ga(K k10, short s10) {
        return Hf(s10, wf(k10));
    }

    @Override
    public short get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86350u : this.f86349t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        short[] sArr = this.f86349t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        short[] sArr2 = new short[i10];
        this.f86349t = sArr2;
        Arrays.fill(sArr2, this.f86350u);
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
                this.f86349t[wf2] = sArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
        int length = sArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int d10 = Vd.b.d(sArr[i11]);
                Object obj2 = objArr[i11];
                i10 += d10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86349t[i10] = this.f86350u;
        super.hf(i10);
    }

    @Override
    public short i() {
        return this.f86350u;
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f86349t;
        Object[] objArr = this.f27557l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (sArr.length > size) {
            sArr[size] = this.f86350u;
        }
        return sArr;
    }

    @Override
    public Zd.l0<K> iterator() {
        return new e(this);
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
        this.f86349t = new short[jf2];
        return jf2;
    }

    @Override
    public i k() {
        return new f();
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public boolean l3(l0<? super K> l0Var) {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !l0Var.a(obj, sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends K, ? extends Short> map) {
        for (Map.Entry<? extends K, ? extends Short> entry : map.entrySet()) {
            ga(entry.getKey(), entry.getValue().shortValue());
        }
    }

    @Override
    public void r(h hVar) {
        Object[] objArr = this.f27557l;
        short[] sArr = this.f86349t;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != b0.f27555o) {
                sArr[i10] = hVar.a(sArr[i10]);
            }
            length = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86350u = objectInput.readShort();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            ga(objectInput.readObject(), objectInput.readShort());
            readInt = i10;
        }
    }

    @Override
    public short remove(Object obj) {
        short s10 = this.f86350u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return s10;
        }
        short s11 = this.f86349t[tf2];
        hf(tf2);
        return s11;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        l3(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f86349t;
        Object[] objArr = this.f27557l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                sArr[i10] = sArr2[i11];
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
        objectOutput.writeShort(this.f86350u);
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
                objectOutput.writeShort(this.f86349t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return S4(k10, (short) 1);
    }

    public C13215g(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86348s = new a();
        this.f86350u = Vd.a.f26856e;
    }

    public C13215g(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86348s = new a();
        this.f86350u = Vd.a.f26856e;
    }

    public C13215g(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86348s = new a();
        this.f86350u = Vd.a.f26856e;
    }

    public C13215g(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, short s10) {
        super(interfaceC14499a, i10, f10);
        this.f86348s = new a();
        this.f86350u = s10;
        if (s10 != 0) {
            Arrays.fill(this.f86349t, s10);
        }
    }

    public C13215g(InterfaceC14499a<? super K> interfaceC14499a, e0<? extends K> e0Var) {
        this(interfaceC14499a, e0Var.size(), 0.5f, e0Var.i());
        if (e0Var instanceof C13215g) {
            C13215g c13215g = (C13215g) e0Var;
            this.f27454d = c13215g.f27454d;
            short s10 = c13215g.f86350u;
            this.f86350u = s10;
            this.f27672q = c13215g.f27672q;
            if (s10 != 0) {
                Arrays.fill(this.f86349t, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Ic(e0Var);
    }
}
