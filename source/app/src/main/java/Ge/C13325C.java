package ge;

import ee.InterfaceC13059B;
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

public class C13325C extends Wd.C implements InterfaceC13059B, Externalizable {

    public static final long f88499w = 1;

    public transient float[] f88500v;

    public class a implements he.E {

        public boolean f88501a = true;

        public final StringBuilder f88502b;

        public a(StringBuilder sb2) {
            this.f88502b = sb2;
        }

        @Override
        public boolean a(float f10, float f11) {
            if (this.f88501a) {
                this.f88501a = false;
            } else {
                this.f88502b.append(", ");
            }
            this.f88502b.append(f10);
            this.f88502b.append("=");
            this.f88502b.append(f11);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.F {
        public b(C13325C c13325c) {
            super(c13325c);
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13325C.this.f27426q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13325C.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public float setValue(float f10) {
            float value = value();
            C13325C.this.f88500v[this.f27465d] = f10;
            return value;
        }

        @Override
        public float value() {
            return C13325C.this.f88500v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13325C.this.f27426q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13325C.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements Zd.H {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13325C.this.f88500v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13325C.this.hf(this.f27465d);
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

            public boolean f88508a = true;

            public final StringBuilder f88509b;

            public a(StringBuilder sb2) {
                this.f88509b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88508a) {
                    this.f88508a = false;
                } else {
                    this.f88509b.append(", ");
                }
                this.f88509b.append(f10);
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
                if (!C13325C.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13325C.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13325C c13325c = C13325C.this;
            float[] fArr2 = c13325c.f27426q;
            byte[] bArr = c13325c.f27568l;
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
                    C13325C.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13325C.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13325C.this.f27428s != C13325C.this.c(f10);
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
            C13325C.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13325C.this.H(((Float) obj).floatValue())) {
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
            int length = C13325C.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13325C c13325c = C13325C.this;
                if (c13325c.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13325c.f27426q[i10])) {
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
            int length = C13325C.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13325C c13325c = C13325C.this;
                if (c13325c.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13325c.f27426q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13325C.this.f27427r;
        }

        @Override
        public boolean isEmpty() {
            return C13325C.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13325C c13325c = C13325C.this;
            return new c(c13325c);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13325C.this.j0(i10);
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
            return C13325C.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13325C.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13325C.this.j0(new a(sb2));
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
            return C13325C.this.d0(fArr);
        }
    }

    public class f implements Sd.f {

        public class a implements he.I {

            public boolean f88512a = true;

            public final StringBuilder f88513b;

            public a(StringBuilder sb2) {
                this.f88513b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88512a) {
                    this.f88512a = false;
                } else {
                    this.f88513b.append(", ");
                }
                this.f88513b.append(f10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean C2(Sd.f fVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean D1(Sd.f fVar) {
            Zd.H it = fVar.iterator();
            while (it.hasNext()) {
                if (!C13325C.this.U(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13325C.this.U(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13325C c13325c = C13325C.this;
            float[] fArr2 = c13325c.f88500v;
            byte[] bArr = c13325c.f27568l;
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
                    C13325C.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13325C.this.U(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            C13325C c13325c = C13325C.this;
            float[] fArr = c13325c.f88500v;
            float[] fArr2 = c13325c.f27426q;
            int length = fArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f11 = fArr2[i10];
                if (f11 != 0.0f && f11 != 2.0f && f10 == fArr[i10]) {
                    C13325C.this.hf(i10);
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
            C13325C.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13325C.this.U(((Float) obj).floatValue())) {
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
            return C13325C.this.f27428s;
        }

        @Override
        public boolean isEmpty() {
            return C13325C.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13325C c13325c = C13325C.this;
            return new d(c13325c);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13325C.this.B(i10);
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
            return C13325C.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13325C.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13325C.this.B(new a(sb2));
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
            return C13325C.this.c0(fArr);
        }
    }

    public C13325C() {
    }

    @Override
    public boolean B(he.I i10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88500v;
        int length = fArr.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i11] == 1 && !i10.a(fArr[i11])) {
                return false;
            }
            length = i11;
        }
    }

    @Override
    public boolean G0(float f10) {
        return G9(f10, 1.0f);
    }

    @Override
    public boolean G9(float f10, float f11) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        float[] fArr = this.f88500v;
        fArr[nf2] = fArr[nf2] + f11;
        return true;
    }

    @Override
    public boolean Gc(he.E e10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27426q;
        float[] fArr2 = this.f88500v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !e10.a(fArr[i10], fArr2[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public float J5(float f10, float f11) {
        return zf(f10, f11, pf(f10));
    }

    @Override
    public float Se(float f10, float f11, float f12) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            float[] fArr = this.f88500v;
            float f13 = f11 + fArr[pf2];
            fArr[pf2] = f13;
            z10 = false;
            f12 = f13;
        } else {
            this.f88500v[pf2] = f12;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27429t);
        }
        return f12;
    }

    @Override
    public boolean U(float f10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88500v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && f10 == fArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public void U5(InterfaceC13059B interfaceC13059B) {
        cf(interfaceC13059B.size());
        Zd.F it = interfaceC13059B.iterator();
        while (it.hasNext()) {
            it.g();
            J5(it.key(), it.value());
        }
    }

    @Override
    public float c(float f10) {
        float f11 = this.f27428s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return f11;
        }
        float f12 = this.f88500v[nf2];
        hf(nf2);
        return f12;
    }

    @Override
    public float[] c0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f88500v;
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
    public void clear() {
        super.clear();
        float[] fArr = this.f27426q;
        Arrays.fill(fArr, 0, fArr.length, this.f27427r);
        float[] fArr2 = this.f88500v;
        Arrays.fill(fArr2, 0, fArr2.length, this.f27428s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27426q;
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
        if (!(obj instanceof InterfaceC13059B)) {
            return false;
        }
        InterfaceC13059B interfaceC13059B = (InterfaceC13059B) obj;
        if (interfaceC13059B.size() != size()) {
            return false;
        }
        float[] fArr = this.f88500v;
        byte[] bArr = this.f27568l;
        float i10 = i();
        float i11 = interfaceC13059B.i();
        int length = fArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1) {
                float q02 = interfaceC13059B.q0(this.f27426q[i12]);
                float f10 = fArr[i12];
                if (f10 != q02 && f10 != i10 && q02 != i11) {
                    return false;
                }
            }
            length = i12;
        }
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27426q;
        int length = fArr.length;
        float[] fArr2 = this.f88500v;
        byte[] bArr = this.f27568l;
        this.f27426q = new float[i10];
        this.f88500v = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88500v[pf(fArr[i11])] = fArr2[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88500v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27426q[i11]) ^ Vd.b.c(this.f88500v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88500v[i10] = this.f27428s;
        super.hf(i10);
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.F iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27426q;
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
        this.f88500v = new float[jf2];
        return jf2;
    }

    @Override
    public Sd.f k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public void n(Ud.d dVar) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f88500v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                fArr[i10] = dVar.a(fArr[i10]);
            }
            length = i10;
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Float> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Float> entry : map.entrySet()) {
            J5(entry.getKey().floatValue(), entry.getValue().floatValue());
        }
    }

    @Override
    public float q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27428s : this.f88500v[nf2];
    }

    @Override
    public boolean r3(he.E e10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27426q;
        float[] fArr2 = this.f88500v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !e10.a(fArr[i10], fArr2[i10])) {
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
            J5(objectInput.readFloat(), objectInput.readFloat());
            readInt = i10;
        }
    }

    @Override
    public float se(float f10, float f11) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88500v[(-pf2) - 1] : zf(f10, f11, pf2);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Gc(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public float[] values() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f88500v;
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
                objectOutput.writeFloat(this.f27426q[i10]);
                objectOutput.writeFloat(this.f88500v[i10]);
            }
            length = i10;
        }
    }

    public final float zf(float f10, float f11, int i10) {
        float f12 = this.f27428s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            f12 = this.f88500v[i10];
            z10 = false;
        }
        this.f88500v[i10] = f11;
        if (z10) {
            ef(this.f27429t);
        }
        return f12;
    }

    public C13325C(int i10) {
        super(i10);
    }

    public C13325C(int i10, float f10) {
        super(i10, f10);
    }

    public C13325C(int i10, float f10, float f11, float f12) {
        super(i10, f10, f11, f12);
    }

    public C13325C(float[] fArr, float[] fArr2) {
        super(Math.max(fArr.length, fArr2.length));
        int min = Math.min(fArr.length, fArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            J5(fArr[i10], fArr2[i10]);
        }
    }

    public C13325C(InterfaceC13059B interfaceC13059B) {
        super(interfaceC13059B.size());
        if (interfaceC13059B instanceof C13325C) {
            C13325C c13325c = (C13325C) interfaceC13059B;
            this.f27454d = c13325c.f27454d;
            float f10 = c13325c.f27427r;
            this.f27427r = f10;
            this.f27428s = c13325c.f27428s;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27426q, f10);
            }
            float f11 = this.f27428s;
            if (f11 != 0.0f) {
                Arrays.fill(this.f88500v, f11);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        U5(interfaceC13059B);
    }
}
