package ge;

import ae.C3602a;
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
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class c0<K> extends Wd.b0<K> implements ee.b0<K>, Externalizable {

    public static final long f88968t = 1;

    public final he.g0<K> f88969q;

    public transient float[] f88970r;

    public float f88971s;

    public class a implements he.g0<K> {
        public a() {
        }

        @Override
        public boolean a(K k10, float f10) {
            c0.this.wa(k10, f10);
            return true;
        }
    }

    public class b implements he.g0<K> {

        public boolean f88973a = true;

        public final StringBuilder f88974b;

        public b(StringBuilder sb2) {
            this.f88974b = sb2;
        }

        @Override
        public boolean a(K k10, float f10) {
            if (this.f88973a) {
                this.f88973a = false;
            } else {
                this.f88974b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f88974b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append(f10);
            return true;
        }
    }

    public class c extends c0<K>.d<K> {
        public c() {
            super(c0.this, null);
        }

        @Override
        public boolean c(K k10) {
            return c0.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            c0 c0Var = c0.this;
            return c0Var.f88971s != c0Var.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(c0.this);
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
            c0.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return c0.this.isEmpty();
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
            return c0.this.size();
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

        public d(c0 c0Var, a aVar) {
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

    public class e implements Sd.f {

        public class a implements he.I {

            public boolean f88979a = true;

            public final StringBuilder f88980b;

            public a(StringBuilder sb2) {
                this.f88980b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88979a) {
                    this.f88979a = false;
                } else {
                    this.f88980b.append(", ");
                }
                this.f88980b.append(f10);
                return true;
            }
        }

        public class b implements Zd.H {

            public Wd.H f88982b;

            public int f88983c;

            public int f88984d;

            public b() {
                c0 c0Var = c0.this;
                this.f88982b = c0Var;
                this.f88983c = c0Var.size();
                this.f88984d = this.f88982b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f88984d = i10;
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
                if (this.f88983c != this.f88982b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = c0.this.f27557l;
                int i11 = this.f88984d;
                while (true) {
                    i10 = i11 - 1;
                    if (i11 <= 0 || !((obj = objArr[i10]) == Wd.b0.f27556p || obj == Wd.b0.f27555o)) {
                        break;
                    }
                    i11 = i10;
                }
                return i10;
            }

            @Override
            public float next() {
                h();
                return c0.this.f88970r[this.f88984d];
            }

            @Override
            public void remove() {
                if (this.f88983c != this.f88982b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f88982b.kf();
                    c0.this.hf(this.f88984d);
                    this.f88982b.ff(false);
                    this.f88983c--;
                } catch (Throwable th2) {
                    this.f88982b.ff(false);
                    throw th2;
                }
            }
        }

        public e() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!c0.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!c0.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            c0 c0Var = c0.this;
            float[] fArr2 = c0Var.f88970r;
            Object[] objArr = c0Var.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && Arrays.binarySearch(fArr, fArr2[i10]) < 0) {
                    c0.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean Z0(float f10) {
            return c0.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            c0 c0Var = c0.this;
            float[] fArr = c0Var.f88970r;
            Object[] objArr = c0Var.f27557l;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && f10 == fArr[i10]) {
                    c0.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean c2(Sd.f fVar) {
            boolean z10 = false;
            if (this == fVar) {
                return false;
            }
            Zd.H it = iterator();
            while (it.hasNext()) {
                if (!fVar.Z0(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public void clear() {
            c0.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!c0.this.U(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean f1(float f10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean g2(Sd.f fVar) {
            if (this == fVar) {
                clear();
                return true;
            }
            Zd.H it = fVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (c(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public float i() {
            return c0.this.f88971s;
        }

        @Override
        public boolean isEmpty() {
            return c0.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            return new b();
        }

        @Override
        public boolean k1(he.I i10) {
            return c0.this.B(i10);
        }

        @Override
        public boolean l2(float[] fArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Float) && c(((Float) obj).floatValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            Zd.H it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Float.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return c0.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return c0.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            c0.this.B(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean x1(float[] fArr) {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (c(fArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public float[] toArray(float[] fArr) {
            return c0.this.c0(fArr);
        }
    }

    public class f<K> extends C3602a<K> implements Zd.i0<K> {

        public final c0<K> f88986g;

        public f(c0<K> c0Var) {
            super(c0Var);
            this.f88986g = c0Var;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f88986g.f27557l[this.f27462e];
        }

        @Override
        public float setValue(float f10) {
            float value = value();
            this.f88986g.f88970r[this.f27462e] = f10;
            return value;
        }

        @Override
        public float value() {
            return this.f88986g.f88970r[this.f27462e];
        }
    }

    public c0() {
        this.f88969q = new a();
        this.f88971s = Vd.a.f26860i;
    }

    private float Hf(float f10, int i10) {
        float f11 = this.f88971s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f11 = this.f88970r[i10];
            z10 = false;
        }
        this.f88970r[i10] = f10;
        if (z10) {
            ef(this.f27558m);
        }
        return f11;
    }

    @Override
    public boolean B(he.I i10) {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
        int length = fArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !i10.a(fArr[i11])) {
                return false;
            }
            length = i11;
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
            if (obj == Wd.b0.f27556p || obj == Wd.b0.f27555o) {
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
    public boolean G(he.k0<? super K> k0Var) {
        return rf(k0Var);
    }

    @Override
    public boolean U(float f10) {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && f10 == fArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void Z8(ee.b0<? extends K> b0Var) {
        b0Var.tc(this.f88969q);
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f88970r;
        Object[] objArr = this.f27557l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (fArr.length > size) {
            fArr[size] = this.f88971s;
        }
        return fArr;
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, Wd.b0.f27556p);
        float[] fArr = this.f88970r;
        Arrays.fill(fArr, 0, fArr.length, this.f88971s);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean e5(K k10, float f10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        float[] fArr = this.f88970r;
        fArr[tf2] = fArr[tf2] + f10;
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ee.b0)) {
            return false;
        }
        ee.b0 b0Var = (ee.b0) obj;
        if (b0Var.size() != size()) {
            return false;
        }
        try {
            Zd.i0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                float value = it.value();
                if (value == this.f88971s) {
                    if (b0Var.get(key) != b0Var.i() || !b0Var.containsKey(key)) {
                        return false;
                    }
                } else if (value != b0Var.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public float get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f88971s : this.f88970r[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        float[] fArr = this.f88970r;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, Wd.b0.f27556p);
        float[] fArr2 = new float[i10];
        this.f88970r = fArr2;
        Arrays.fill(fArr2, this.f88971s);
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int wf2 = wf(obj);
                if (wf2 < 0) {
                    Df(this.f27557l[(-wf2) - 1], obj);
                }
                this.f27557l[wf2] = obj;
                this.f88970r[wf2] = fArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
        int length = fArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                int c10 = Vd.b.c(fArr[i11]);
                Object obj2 = objArr[i11];
                i10 += c10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88970r[i10] = this.f88971s;
        super.hf(i10);
    }

    @Override
    public float i() {
        return this.f88971s;
    }

    @Override
    public Zd.i0<K> iterator() {
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
            if (obj == Wd.b0.f27556p || obj == Wd.b0.f27555o) {
                length = i11;
            } else {
                objArr[i10] = obj;
                length = i11;
                i10++;
            }
        }
    }

    @Override
    public float j4(K k10, float f10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f88970r[(-wf2) - 1] : Hf(f10, wf2);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88970r = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new e();
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public void n(Ud.d dVar) {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != Wd.b0.f27555o) {
                fArr[i10] = dVar.a(fArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public float pb(K k10, float f10, float f11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            float[] fArr = this.f88970r;
            float f12 = f10 + fArr[i10];
            fArr[i10] = f12;
            z10 = false;
            f11 = f12;
        } else {
            this.f88970r[wf2] = f11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return f11;
    }

    @Override
    public void putAll(Map<? extends K, ? extends Float> map) {
        for (Map.Entry<? extends K, ? extends Float> entry : map.entrySet()) {
            wa(entry.getKey(), entry.getValue().floatValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f88971s = objectInput.readFloat();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            wa(objectInput.readObject(), objectInput.readFloat());
            readInt = i10;
        }
    }

    @Override
    public float remove(Object obj) {
        float f10 = this.f88971s;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return f10;
        }
        float f11 = this.f88970r[tf2];
        hf(tf2);
        return f11;
    }

    @Override
    public boolean tc(he.g0<? super K> g0Var) {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !g0Var.a(obj, fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        tc(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v9(he.g0<? super K> g0Var) {
        Object[] objArr = this.f27557l;
        float[] fArr = this.f88970r;
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
                if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o && !g0Var.a(obj, fArr[i10])) {
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
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f88970r;
        Object[] objArr = this.f27557l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            Object obj = objArr[i11];
            if (obj != Wd.b0.f27556p && obj != Wd.b0.f27555o) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public float wa(K k10, float f10) {
        return Hf(f10, wf(k10));
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeFloat(this.f88971s);
        objectOutput.writeInt(this.f27452b);
        int length = this.f27557l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = this.f27557l[i10];
            if (obj != Wd.b0.f27555o && obj != Wd.b0.f27556p) {
                objectOutput.writeObject(obj);
                objectOutput.writeFloat(this.f88970r[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return e5(k10, 1.0f);
    }

    public c0(int i10) {
        super(i10);
        this.f88969q = new a();
        this.f88971s = Vd.a.f26860i;
    }

    public c0(int i10, float f10) {
        super(i10, f10);
        this.f88969q = new a();
        this.f88971s = Vd.a.f26860i;
    }

    public c0(int i10, float f10, float f11) {
        super(i10, f10);
        this.f88969q = new a();
        this.f88971s = f11;
        if (f11 != 0.0f) {
            Arrays.fill(this.f88970r, f11);
        }
    }

    public c0(ee.b0<? extends K> b0Var) {
        this(b0Var.size(), 0.5f, b0Var.i());
        if (b0Var instanceof c0) {
            c0 c0Var = (c0) b0Var;
            this.f27454d = c0Var.f27454d;
            float f10 = c0Var.f88971s;
            this.f88971s = f10;
            if (f10 != 0.0f) {
                Arrays.fill(this.f88970r, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        Z8(b0Var);
    }
}
