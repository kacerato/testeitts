package ge;

import Zd.InterfaceC3458p;
import ee.InterfaceC13084z;
import he.InterfaceC13462q;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import ke.InterfaceC13970d;
import org.apache.commons.math3.geometry.VectorFormat;

public class C13323A extends Wd.A implements InterfaceC13084z, Externalizable {

    public static final long f88467w = 1;

    public transient char[] f88468v;

    public class a implements he.C {

        public boolean f88469a = true;

        public final StringBuilder f88470b;

        public a(StringBuilder sb2) {
            this.f88470b = sb2;
        }

        @Override
        public boolean a(float f10, char c10) {
            if (this.f88469a) {
                this.f88469a = false;
            } else {
                this.f88470b.append(", ");
            }
            this.f88470b.append(f10);
            this.f88470b.append("=");
            this.f88470b.append(c10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.D {
        public b(C13323A c13323a) {
            super(c13323a);
        }

        @Override
        public char a(char c10) {
            char value = value();
            C13323A.this.f88468v[this.f27465d] = c10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13323A.this.f27416q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13323A.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public char value() {
            return C13323A.this.f88468v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13323A.this.f27416q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13323A.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements InterfaceC3458p {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public char next() {
            j();
            return C13323A.this.f88468v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13323A.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class e implements InterfaceC13970d {

        public class a implements he.I {

            public boolean f88476a = true;

            public final StringBuilder f88477b;

            public a(StringBuilder sb2) {
                this.f88477b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88476a) {
                    this.f88476a = false;
                } else {
                    this.f88477b.append(", ");
                }
                this.f88477b.append(f10);
                return true;
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
                if (!C13323A.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13323A.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13323A c13323a = C13323A.this;
            float[] fArr2 = c13323a.f27416q;
            byte[] bArr = c13323a.f27568l;
            int length = fArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(fArr, fArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13323A.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13323A.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13323A.this.f27418s != C13323A.this.c(f10);
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
            C13323A.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13323A.this.H(((Float) obj).floatValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof InterfaceC13970d)) {
                return false;
            }
            InterfaceC13970d interfaceC13970d = (InterfaceC13970d) obj;
            if (interfaceC13970d.size() != size()) {
                return false;
            }
            int length = C13323A.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13323A c13323a = C13323A.this;
                if (c13323a.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13323a.f27416q[i10])) {
                    return false;
                }
                length = i10;
            }
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
        public int hashCode() {
            int length = C13323A.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13323A c13323a = C13323A.this;
                if (c13323a.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13323a.f27416q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13323A.this.f27417r;
        }

        @Override
        public boolean isEmpty() {
            return C13323A.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13323A c13323a = C13323A.this;
            return new c(c13323a);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13323A.this.j0(i10);
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
            return C13323A.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13323A.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13323A.this.j0(new a(sb2));
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
            return C13323A.this.d0(fArr);
        }
    }

    public class f implements Sd.b {

        public class a implements InterfaceC13462q {

            public boolean f88480a = true;

            public final StringBuilder f88481b;

            public a(StringBuilder sb2) {
                this.f88481b = sb2;
            }

            @Override
            public boolean a(char c10) {
                if (this.f88480a) {
                    this.f88480a = false;
                } else {
                    this.f88481b.append(", ");
                }
                this.f88481b.append(c10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public char[] Q0(char[] cArr) {
            return C13323A.this.Z(cArr);
        }

        @Override
        public boolean X1(char[] cArr) {
            Arrays.sort(cArr);
            C13323A c13323a = C13323A.this;
            char[] cArr2 = c13323a.f88468v;
            byte[] bArr = c13323a.f27568l;
            int length = cArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(cArr, cArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13323A.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean addAll(Collection<? extends Character> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean b(char c10) {
            C13323A c13323a = C13323A.this;
            char[] cArr = c13323a.f88468v;
            float[] fArr = c13323a.f27416q;
            int length = cArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i10];
                if (f10 != 0.0f && f10 != 2.0f && c10 == cArr[i10]) {
                    C13323A.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean b1(char c10) {
            return C13323A.this.O(c10);
        }

        @Override
        public void clear() {
            C13323A.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Character) {
                    if (!C13323A.this.O(((Character) obj).charValue())) {
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
            return C13323A.this.K(interfaceC13462q);
        }

        @Override
        public char i() {
            return C13323A.this.f27418s;
        }

        @Override
        public boolean isEmpty() {
            return C13323A.this.f27452b == 0;
        }

        @Override
        public InterfaceC3458p iterator() {
            C13323A c13323a = C13323A.this;
            return new d(c13323a);
        }

        @Override
        public boolean n2(char[] cArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean p2(Sd.b bVar) {
            InterfaceC3458p it = bVar.iterator();
            while (it.hasNext()) {
                if (!C13323A.this.O(it.next())) {
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
            return C13323A.this.f27452b;
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
            return C13323A.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13323A.this.K(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean u1(char[] cArr) {
            for (char c10 : cArr) {
                if (!C13323A.this.O(c10)) {
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

    public C13323A() {
    }

    @Override
    public char F5(float f10, char c10) {
        return zf(f10, c10, pf(f10));
    }

    @Override
    public boolean G0(float f10) {
        return J9(f10, (char) 1);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public boolean J9(float f10, char c10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        char[] cArr = this.f88468v;
        cArr[nf2] = (char) (cArr[nf2] + c10);
        return true;
    }

    @Override
    public boolean K(InterfaceC13462q interfaceC13462q) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88468v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !interfaceC13462q.a(cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean O(char c10) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88468v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && c10 == cArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void S7(InterfaceC13084z interfaceC13084z) {
        cf(interfaceC13084z.size());
        Zd.D it = interfaceC13084z.iterator();
        while (it.hasNext()) {
            it.g();
            F5(it.key(), it.value());
        }
    }

    @Override
    public char[] Z(char[] cArr) {
        int size = size();
        if (cArr.length < size) {
            cArr = new char[size];
        }
        char[] cArr2 = this.f88468v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean Zb(he.C c10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27416q;
        char[] cArr = this.f88468v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !c10.a(fArr[i10], cArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public char c(float f10) {
        char c10 = this.f27418s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return c10;
        }
        char c11 = this.f88468v[nf2];
        hf(nf2);
        return c11;
    }

    @Override
    public void clear() {
        super.clear();
        float[] fArr = this.f27416q;
        Arrays.fill(fArr, 0, fArr.length, this.f27417r);
        char[] cArr = this.f88468v;
        Arrays.fill(cArr, 0, cArr.length, this.f27418s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27416q;
        byte[] bArr = this.f27568l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    public boolean equals(Object obj) {
        char q02;
        char c10;
        if (!(obj instanceof InterfaceC13084z)) {
            return false;
        }
        InterfaceC13084z interfaceC13084z = (InterfaceC13084z) obj;
        if (interfaceC13084z.size() != size()) {
            return false;
        }
        char[] cArr = this.f88468v;
        byte[] bArr = this.f27568l;
        char i10 = i();
        char i11 = interfaceC13084z.i();
        int length = cArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (c10 = cArr[i12]) != (q02 = interfaceC13084z.q0(this.f27416q[i12])) && c10 != i10 && q02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public void g(Ud.b bVar) {
        byte[] bArr = this.f27568l;
        char[] cArr = this.f88468v;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                cArr[i10] = bVar.a(cArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27416q;
        int length = fArr.length;
        char[] cArr = this.f88468v;
        byte[] bArr = this.f27568l;
        this.f27416q = new float[i10];
        this.f88468v = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88468v[pf(fArr[i11])] = cArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88468v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27416q[i11]) ^ Vd.b.d(this.f88468v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88468v[i10] = this.f27418s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.D iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27416q;
        byte[] bArr = this.f27568l;
        int length = fArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return fArr;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean j0(he.I i10) {
        return k1(i10);
    }

    @Override
    public int jf(int i10) {
        int jf2 = super.jf(i10);
        this.f88468v = new char[jf2];
        return jf2;
    }

    @Override
    public Sd.b k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public char p9(float f10, char c10, char c11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            char[] cArr = this.f88468v;
            char c12 = (char) (cArr[pf2] + c10);
            cArr[pf2] = c12;
            z10 = false;
            c11 = c12;
        } else {
            this.f88468v[pf2] = c11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27419t);
        }
        return c11;
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Character> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Character> entry : map.entrySet()) {
            F5(entry.getKey().floatValue(), entry.getValue().charValue());
        }
    }

    @Override
    public char q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27418s : this.f88468v[nf2];
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        int readInt = objectInput.readInt();
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            F5(objectInput.readFloat(), objectInput.readChar());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Zb(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public boolean v5(he.C c10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27416q;
        char[] cArr = this.f88468v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !c10.a(fArr[i10], cArr[i10])) {
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
    public char[] values() {
        char[] cArr = new char[size()];
        char[] cArr2 = this.f88468v;
        byte[] bArr = this.f27568l;
        int length = cArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return cArr;
            }
            if (bArr[i11] == 1) {
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
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeFloat(this.f27416q[i10]);
                objectOutput.writeChar(this.f88468v[i10]);
            }
            length = i10;
        }
    }

    @Override
    public char xe(float f10, char c10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88468v[(-pf2) - 1] : zf(f10, c10, pf2);
    }

    public final char zf(float f10, char c10, int i10) {
        char c11 = this.f27418s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            c11 = this.f88468v[i10];
            z10 = false;
        }
        this.f88468v[i10] = c10;
        if (z10) {
            ef(this.f27419t);
        }
        return c11;
    }

    public C13323A(int i10) {
        super(i10);
    }

    public C13323A(int i10, float f10) {
        super(i10, f10);
    }

    public C13323A(int i10, float f10, float f11, char c10) {
        super(i10, f10, f11, c10);
    }

    public C13323A(float[] fArr, char[] cArr) {
        super(Math.max(fArr.length, cArr.length));
        int min = Math.min(fArr.length, cArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            F5(fArr[i10], cArr[i10]);
        }
    }

    public C13323A(InterfaceC13084z interfaceC13084z) {
        super(interfaceC13084z.size());
        if (interfaceC13084z instanceof C13323A) {
            C13323A c13323a = (C13323A) interfaceC13084z;
            this.f27454d = c13323a.f27454d;
            float f10 = c13323a.f27417r;
            this.f27417r = f10;
            this.f27418s = c13323a.f27418s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27416q, f10);
            }
            char c10 = this.f27418s;
            if (c10 != 0) {
                Arrays.fill(this.f88468v, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        S7(interfaceC13084z);
    }
}
