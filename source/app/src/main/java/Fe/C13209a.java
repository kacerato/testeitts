package fe;

import Wd.AbstractC3174q;
import Wd.H;
import Wd.b0;
import Zd.InterfaceC3449g;
import Zd.f0;
import ae.C3602a;
import ee.Y;
import he.InterfaceC13453h;
import he.d0;
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

public class C13209a<K> extends AbstractC3174q<K> implements Y<K>, Externalizable {

    public static final long f86227v = 1;

    public final d0<K> f86228s;

    public transient byte[] f86229t;

    public byte f86230u;

    public class C1605a implements d0<K> {
        public C1605a() {
        }

        @Override
        public boolean a(K k10, byte b10) {
            C13209a.this.oa(k10, b10);
            return true;
        }
    }

    public class b implements d0<K> {

        public boolean f86232a = true;

        public final StringBuilder f86233b;

        public b(StringBuilder sb2) {
            this.f86233b = sb2;
        }

        @Override
        public boolean a(K k10, byte b10) {
            if (this.f86232a) {
                this.f86232a = false;
            } else {
                this.f86233b.append(DocLint.SEPARATOR);
            }
            StringBuilder sb2 = this.f86233b;
            sb2.append((Object) k10);
            sb2.append("=");
            sb2.append((int) b10);
            return true;
        }
    }

    public class c extends C13209a<K>.d<K> {
        public c() {
            super(C13209a.this, null);
        }

        @Override
        public boolean c(K k10) {
            return C13209a.this.contains(k10);
        }

        @Override
        public boolean d(K k10) {
            C13209a c13209a = C13209a.this;
            return c13209a.f86230u != c13209a.remove(k10);
        }

        @Override
        public Iterator<K> iterator() {
            return new C3602a(C13209a.this);
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
            C13209a.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(Object obj) {
            return c(obj);
        }

        public abstract boolean d(E e10);

        @Override
        public boolean isEmpty() {
            return C13209a.this.isEmpty();
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
            return C13209a.this.size();
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

        public d(C13209a c13209a, C1605a c1605a) {
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

    public class e implements Sd.a {

        public class C1606a implements InterfaceC13453h {

            public boolean f86238a = true;

            public final StringBuilder f86239b;

            public C1606a(StringBuilder sb2) {
                this.f86239b = sb2;
            }

            @Override
            public boolean a(byte b10) {
                if (this.f86238a) {
                    this.f86238a = false;
                } else {
                    this.f86239b.append(", ");
                }
                this.f86239b.append((int) b10);
                return true;
            }
        }

        public class b implements InterfaceC3449g {

            public H f86241b;

            public int f86242c;

            public int f86243d;

            public b() {
                C13209a c13209a = C13209a.this;
                this.f86241b = c13209a;
                this.f86242c = c13209a.size();
                this.f86243d = this.f86241b.Ye();
            }

            public final void h() {
                int i10 = i();
                this.f86243d = i10;
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
                if (this.f86242c != this.f86241b.size()) {
                    throw new ConcurrentModificationException();
                }
                Object[] objArr = C13209a.this.f27557l;
                int i11 = this.f86243d;
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
            public byte next() {
                h();
                return C13209a.this.f86229t[this.f86243d];
            }

            @Override
            public void remove() {
                if (this.f86242c != this.f86241b.size()) {
                    throw new ConcurrentModificationException();
                }
                try {
                    this.f86241b.kf();
                    C13209a.this.hf(this.f86243d);
                    this.f86241b.ff(false);
                    this.f86242c--;
                } catch (Throwable th2) {
                    this.f86241b.ff(false);
                    throw th2;
                }
            }
        }

        public e() {
        }

        @Override
        public boolean E1(Sd.a aVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte[] R0(byte[] bArr) {
            return C13209a.this.a0(bArr);
        }

        @Override
        public boolean V0(InterfaceC13453h interfaceC13453h) {
            return C13209a.this.M(interfaceC13453h);
        }

        @Override
        public boolean W1(byte[] bArr) {
            Arrays.sort(bArr);
            C13209a c13209a = C13209a.this;
            byte[] bArr2 = c13209a.f86229t;
            Object[] objArr = c13209a.f27557l;
            int length = objArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && Arrays.binarySearch(bArr, bArr2[i10]) < 0) {
                    C13209a.this.hf(i10);
                    z10 = true;
                }
                length = i10;
            }
        }

        @Override
        public boolean a1(byte b10) {
            return C13209a.this.P(b10);
        }

        @Override
        public boolean addAll(Collection<? extends Byte> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            C13209a.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Byte) {
                    if (!C13209a.this.P(((Byte) obj).byteValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d1(byte b10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public byte i() {
            return C13209a.this.f86230u;
        }

        @Override
        public boolean i2(Sd.a aVar) {
            if (this == aVar) {
                clear();
                return true;
            }
            InterfaceC3449g it = aVar.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (m(it.next())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean isEmpty() {
            return C13209a.this.f27452b == 0;
        }

        @Override
        public InterfaceC3449g iterator() {
            return new b();
        }

        @Override
        public boolean m(byte b10) {
            C13209a c13209a = C13209a.this;
            byte[] bArr = c13209a.f86229t;
            Object[] objArr = c13209a.f27557l;
            int length = bArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                Object obj = objArr[i10];
                if (obj != b0.f27556p && obj != b0.f27555o && b10 == bArr[i10]) {
                    C13209a.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean o2(byte[] bArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            boolean z10 = false;
            for (Object obj : collection) {
                if ((obj instanceof Byte) && m(((Byte) obj).byteValue())) {
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            InterfaceC3449g it = iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                if (!collection.contains(Byte.valueOf(it.next()))) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean s2(Sd.a aVar) {
            boolean z10 = false;
            if (this == aVar) {
                return false;
            }
            InterfaceC3449g it = iterator();
            while (it.hasNext()) {
                if (!aVar.a1(it.next())) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            return C13209a.this.f27452b;
        }

        @Override
        public boolean t1(byte[] bArr) {
            for (byte b10 : bArr) {
                if (!C13209a.this.P(b10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public byte[] toArray() {
            return C13209a.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13209a.this.M(new C1606a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean w2(Sd.a aVar) {
            InterfaceC3449g it = aVar.iterator();
            while (it.hasNext()) {
                if (!C13209a.this.P(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean y1(byte[] bArr) {
            int length = bArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (m(bArr[i10])) {
                    z10 = true;
                }
                length = i10;
            }
        }
    }

    public class f<K> extends C3602a<K> implements f0<K> {

        public final C13209a<K> f86245g;

        public f(C13209a<K> c13209a) {
            super(c13209a);
            this.f86245g = c13209a;
        }

        @Override
        public byte b(byte b10) {
            byte value = value();
            this.f86245g.f86229t[this.f27462e] = b10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public K key() {
            return (K) this.f86245g.f27557l[this.f27462e];
        }

        @Override
        public byte value() {
            return this.f86245g.f86229t[this.f27462e];
        }
    }

    public C13209a() {
        this.f86228s = new C1605a();
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
    public byte C9(K k10, byte b10, byte b11) {
        int wf2 = wf(k10);
        boolean z10 = true;
        if (wf2 < 0) {
            int i10 = (-wf2) - 1;
            byte[] bArr = this.f86229t;
            byte b12 = (byte) (bArr[i10] + b10);
            bArr[i10] = b12;
            z10 = false;
            b11 = b12;
        } else {
            this.f86229t[wf2] = b11;
        }
        if (z10) {
            ef(this.f27558m);
        }
        return b11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean G(k0<? super K> k0Var) {
        return rf(k0Var);
    }

    public final byte Hf(byte b10, int i10) {
        byte b11 = this.f86230u;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            b11 = this.f86229t[i10];
            z10 = false;
        }
        this.f86229t[i10] = b10;
        if (z10) {
            ef(this.f27558m);
        }
        return b11;
    }

    @Override
    public boolean L7(d0<? super K> d0Var) {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
        int length = objArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !d0Var.a(obj, bArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean M(InterfaceC13453h interfaceC13453h) {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && !interfaceC13453h.a(bArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean P(byte b10) {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            Object obj = objArr[i10];
            if (obj != b0.f27556p && obj != b0.f27555o && b10 == bArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void W8(Y<? extends K> y10) {
        y10.L7(this.f86228s);
    }

    @Override
    public boolean Zd(d0<? super K> d0Var) {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
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
                if (obj != b0.f27556p && obj != b0.f27555o && !d0Var.a(obj, bArr[i10])) {
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
    public byte[] a0(byte[] bArr) {
        int size = size();
        if (bArr.length < size) {
            bArr = new byte[size];
        }
        byte[] bArr2 = this.f86229t;
        Object[] objArr = this.f27557l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                bArr[i10] = bArr2[i11];
                i10++;
            }
            length = i11;
        }
        if (bArr.length > size) {
            bArr[size] = this.f86230u;
        }
        return bArr;
    }

    @Override
    public void clear() {
        super.clear();
        Object[] objArr = this.f27557l;
        Arrays.fill(objArr, 0, objArr.length, b0.f27556p);
        byte[] bArr = this.f86229t;
        Arrays.fill(bArr, 0, bArr.length, this.f86230u);
    }

    @Override
    public boolean containsKey(Object obj) {
        return contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Y)) {
            return false;
        }
        Y y10 = (Y) obj;
        if (y10.size() != size()) {
            return false;
        }
        try {
            f0<K> it = iterator();
            while (it.hasNext()) {
                it.g();
                K key = it.key();
                byte value = it.value();
                if (value == this.f86230u) {
                    if (y10.get(key) != y10.i() || !y10.containsKey(key)) {
                        return false;
                    }
                } else if (value != y10.get(key)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    @Override
    public byte get(Object obj) {
        int tf2 = tf(obj);
        return tf2 < 0 ? this.f86230u : this.f86229t[tf2];
    }

    @Override
    public void gf(int i10) {
        Object[] objArr = this.f27557l;
        int length = objArr.length;
        byte[] bArr = this.f86229t;
        Object[] objArr2 = new Object[i10];
        this.f27557l = objArr2;
        Arrays.fill(objArr2, b0.f27556p);
        byte[] bArr2 = new byte[i10];
        this.f86229t = bArr2;
        Arrays.fill(bArr2, this.f86230u);
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
                this.f86229t[wf2] = bArr[i11];
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                int d10 = Vd.b.d(bArr[i11]);
                Object obj2 = objArr[i11];
                i10 += d10 ^ (obj2 == null ? 0 : obj2.hashCode());
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f86229t[i10] = this.f86230u;
        super.hf(i10);
    }

    @Override
    public byte i() {
        return this.f86230u;
    }

    @Override
    public f0<K> iterator() {
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
        this.f86229t = new byte[jf2];
        return jf2;
    }

    @Override
    public Sd.a k() {
        return new e();
    }

    @Override
    public Set<K> keySet() {
        return new c();
    }

    @Override
    public boolean m5(K k10, byte b10) {
        int tf2 = tf(k10);
        if (tf2 < 0) {
            return false;
        }
        byte[] bArr = this.f86229t;
        bArr[tf2] = (byte) (bArr[tf2] + b10);
        return true;
    }

    @Override
    public byte oa(K k10, byte b10) {
        return Hf(b10, wf(k10));
    }

    @Override
    public void putAll(Map<? extends K, ? extends Byte> map) {
        for (Map.Entry<? extends K, ? extends Byte> entry : map.entrySet()) {
            oa(entry.getKey(), entry.getValue().byteValue());
        }
    }

    @Override
    public byte r4(K k10, byte b10) {
        int wf2 = wf(k10);
        return wf2 < 0 ? this.f86229t[(-wf2) - 1] : Hf(b10, wf2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
        this.f86230u = objectInput.readByte();
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            oa(objectInput.readObject(), objectInput.readByte());
            readInt = i10;
        }
    }

    @Override
    public byte remove(Object obj) {
        byte b10 = this.f86230u;
        int tf2 = tf(obj);
        if (tf2 < 0) {
            return b10;
        }
        byte b11 = this.f86229t[tf2];
        hf(tf2);
        return b11;
    }

    @Override
    public void s(Ud.a aVar) {
        Object[] objArr = this.f27557l;
        byte[] bArr = this.f86229t;
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            Object obj = objArr[i10];
            if (obj != null && obj != b0.f27555o) {
                bArr[i10] = aVar.a(bArr[i10]);
            }
            length = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        L7(new b(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public byte[] values() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f86229t;
        Object[] objArr = this.f27557l;
        int length = bArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            Object obj = objArr[i11];
            if (obj != b0.f27556p && obj != b0.f27555o) {
                bArr[i10] = bArr2[i11];
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
        objectOutput.writeByte(this.f86230u);
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
                objectOutput.writeByte(this.f86229t[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x0(K k10) {
        return m5(k10, (byte) 1);
    }

    public C13209a(InterfaceC14499a<? super K> interfaceC14499a) {
        super(interfaceC14499a);
        this.f86228s = new C1605a();
        this.f86230u = Vd.a.f26855d;
    }

    public C13209a(InterfaceC14499a<? super K> interfaceC14499a, int i10) {
        super(interfaceC14499a, i10);
        this.f86228s = new C1605a();
        this.f86230u = Vd.a.f26855d;
    }

    public C13209a(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10) {
        super(interfaceC14499a, i10, f10);
        this.f86228s = new C1605a();
        this.f86230u = Vd.a.f26855d;
    }

    public C13209a(InterfaceC14499a<? super K> interfaceC14499a, int i10, float f10, byte b10) {
        super(interfaceC14499a, i10, f10);
        this.f86228s = new C1605a();
        this.f86230u = b10;
        if (b10 != 0) {
            Arrays.fill(this.f86229t, b10);
        }
    }

    public C13209a(InterfaceC14499a<? super K> interfaceC14499a, Y<? extends K> y10) {
        this(interfaceC14499a, y10.size(), 0.5f, y10.i());
        if (y10 instanceof C13209a) {
            C13209a c13209a = (C13209a) y10;
            this.f27454d = c13209a.f27454d;
            byte b10 = c13209a.f86230u;
            this.f86230u = b10;
            this.f27672q = c13209a.f27672q;
            if (b10 != 0) {
                Arrays.fill(this.f86229t, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        W8(y10);
    }
}
