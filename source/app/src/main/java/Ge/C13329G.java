package ge;

import Zd.s0;
import he.t0;
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

public class C13329G extends Wd.G implements ee.F, Externalizable {

    public static final long f88565w = 1;

    public transient short[] f88566v;

    public class a implements he.J {

        public boolean f88567a = true;

        public final StringBuilder f88568b;

        public a(StringBuilder sb2) {
            this.f88568b = sb2;
        }

        @Override
        public boolean a(float f10, short s10) {
            if (this.f88567a) {
                this.f88567a = false;
            } else {
                this.f88568b.append(", ");
            }
            this.f88568b.append(f10);
            this.f88568b.append("=");
            this.f88568b.append((int) s10);
            return true;
        }
    }

    public class b extends Wd.J implements Zd.K {
        public b(C13329G c13329g) {
            super(c13329g);
        }

        @Override
        public short c(short s10) {
            short value = value();
            C13329G.this.f88566v[this.f27465d] = s10;
            return value;
        }

        @Override
        public void g() {
            j();
        }

        @Override
        public float key() {
            return C13329G.this.f27445q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13329G.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }

        @Override
        public short value() {
            return C13329G.this.f88566v[this.f27465d];
        }
    }

    public class c extends Wd.J implements Zd.H {
        public c(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public float next() {
            j();
            return C13329G.this.f27445q[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13329G.this.hf(this.f27465d);
                this.f27463b.ff(false);
                this.f27464c--;
            } catch (Throwable th2) {
                this.f27463b.ff(false);
                throw th2;
            }
        }
    }

    public class d extends Wd.J implements s0 {
        public d(Wd.c0 c0Var) {
            super(c0Var);
        }

        @Override
        public short next() {
            j();
            return C13329G.this.f88566v[this.f27465d];
        }

        @Override
        public void remove() {
            if (this.f27464c != this.f27463b.size()) {
                throw new ConcurrentModificationException();
            }
            try {
                this.f27463b.kf();
                C13329G.this.hf(this.f27465d);
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

            public boolean f88574a = true;

            public final StringBuilder f88575b;

            public a(StringBuilder sb2) {
                this.f88575b = sb2;
            }

            @Override
            public boolean a(float f10) {
                if (this.f88574a) {
                    this.f88574a = false;
                } else {
                    this.f88575b.append(", ");
                }
                this.f88575b.append(f10);
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
                if (!C13329G.this.H(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean L1(float[] fArr) {
            for (float f10 : fArr) {
                if (!C13329G.this.Z0(f10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean V1(float[] fArr) {
            Arrays.sort(fArr);
            C13329G c13329g = C13329G.this;
            float[] fArr2 = c13329g.f27445q;
            byte[] bArr = c13329g.f27568l;
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
                    C13329G.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
            }
        }

        @Override
        public boolean Z0(float f10) {
            return C13329G.this.Z0(f10);
        }

        @Override
        public boolean addAll(Collection<? extends Float> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean c(float f10) {
            return C13329G.this.f27447s != C13329G.this.c(f10);
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
            C13329G.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Float) {
                    if (!C13329G.this.H(((Float) obj).floatValue())) {
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
            int length = C13329G.this.f27568l.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return true;
                }
                C13329G c13329g = C13329G.this;
                if (c13329g.f27568l[i10] == 1 && !interfaceC13970d.Z0(c13329g.f27445q[i10])) {
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
            int length = C13329G.this.f27568l.length;
            int i10 = 0;
            while (true) {
                int i11 = length - 1;
                if (length <= 0) {
                    return i10;
                }
                C13329G c13329g = C13329G.this;
                if (c13329g.f27568l[i11] == 1) {
                    i10 += Vd.b.c(c13329g.f27445q[i11]);
                }
                length = i11;
            }
        }

        @Override
        public float i() {
            return C13329G.this.f27446r;
        }

        @Override
        public boolean isEmpty() {
            return C13329G.this.f27452b == 0;
        }

        @Override
        public Zd.H iterator() {
            C13329G c13329g = C13329G.this;
            return new c(c13329g);
        }

        @Override
        public boolean k1(he.I i10) {
            return C13329G.this.j0(i10);
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
            return C13329G.this.f27452b;
        }

        @Override
        public float[] toArray() {
            return C13329G.this.j();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13329G.this.j0(new a(sb2));
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
            return C13329G.this.d0(fArr);
        }
    }

    public class f implements Sd.i {

        public class a implements t0 {

            public boolean f88578a = true;

            public final StringBuilder f88579b;

            public a(StringBuilder sb2) {
                this.f88579b = sb2;
            }

            @Override
            public boolean a(short s10) {
                if (this.f88578a) {
                    this.f88578a = false;
                } else {
                    this.f88579b.append(", ");
                }
                this.f88579b.append((int) s10);
                return true;
            }
        }

        public f() {
        }

        @Override
        public boolean A2(short[] sArr) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean F1(Sd.i iVar) {
            throw new UnsupportedOperationException();
        }

        @Override
        public short[] N0(short[] sArr) {
            return C13329G.this.i0(sArr);
        }

        @Override
        public boolean W0(short s10) {
            return C13329G.this.L(s10);
        }

        @Override
        public boolean Z1(short[] sArr) {
            for (short s10 : sArr) {
                if (!C13329G.this.L(s10)) {
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
            C13329G.this.clear();
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            for (Object obj : collection) {
                if (obj instanceof Short) {
                    if (!C13329G.this.L(((Short) obj).shortValue())) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override
        public boolean d(short s10) {
            C13329G c13329g = C13329G.this;
            short[] sArr = c13329g.f88566v;
            float[] fArr = c13329g.f27445q;
            int length = sArr.length;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return false;
                }
                float f10 = fArr[i10];
                if (f10 != 0.0f && f10 != 2.0f && s10 == sArr[i10]) {
                    C13329G.this.hf(i10);
                    return true;
                }
                length = i10;
            }
        }

        @Override
        public boolean h1(t0 t0Var) {
            return C13329G.this.N(t0Var);
        }

        @Override
        public short i() {
            return C13329G.this.f27447s;
        }

        @Override
        public boolean isEmpty() {
            return C13329G.this.f27452b == 0;
        }

        @Override
        public s0 iterator() {
            C13329G c13329g = C13329G.this;
            return new d(c13329g);
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
        public boolean o1(Sd.i iVar) {
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
        public boolean q2(Sd.i iVar) {
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
            C13329G c13329g = C13329G.this;
            short[] sArr2 = c13329g.f88566v;
            byte[] bArr = c13329g.f27568l;
            int length = sArr2.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] != 1 || Arrays.binarySearch(sArr, sArr2[i10]) >= 0) {
                    length = i10;
                } else {
                    C13329G.this.hf(i10);
                    length = i10;
                    z10 = true;
                }
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
            return C13329G.this.f27452b;
        }

        @Override
        public short[] toArray() {
            return C13329G.this.values();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            C13329G.this.N(new a(sb2));
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }

        @Override
        public boolean v2(Sd.i iVar) {
            s0 it = iVar.iterator();
            while (it.hasNext()) {
                if (!C13329G.this.L(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public C13329G() {
    }

    @Override
    public short Ce(float f10, short s10) {
        int pf2 = pf(f10);
        return pf2 < 0 ? this.f88566v[(-pf2) - 1] : zf(f10, s10, pf2);
    }

    @Override
    public short E2(float f10, short s10, short s11) {
        int pf2 = pf(f10);
        boolean z10 = true;
        if (pf2 < 0) {
            pf2 = (-pf2) - 1;
            short[] sArr = this.f88566v;
            short s12 = (short) (sArr[pf2] + s10);
            sArr[pf2] = s12;
            z10 = false;
            s11 = s12;
        } else {
            this.f88566v[pf2] = s11;
        }
        byte b10 = this.f27568l[pf2];
        if (z10) {
            ef(this.f27448t);
        }
        return s11;
    }

    @Override
    public boolean G0(float f10) {
        return V9(f10, (short) 1);
    }

    @Override
    public boolean H(float f10) {
        return Z0(f10);
    }

    @Override
    public boolean L(short s10) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88566v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (bArr[i10] == 1 && s10 == sArr[i10]) {
                return true;
            }
            length = i10;
        }
    }

    @Override
    public boolean N(t0 t0Var) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88566v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !t0Var.a(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public short T5(float f10, short s10) {
        return zf(f10, s10, pf(f10));
    }

    @Override
    public boolean V9(float f10, short s10) {
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return false;
        }
        short[] sArr = this.f88566v;
        sArr[nf2] = (short) (sArr[nf2] + s10);
        return true;
    }

    @Override
    public boolean Yd(he.J j10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27445q;
        short[] sArr = this.f88566v;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i10] == 1 && !j10.a(fArr[i10], sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public short c(float f10) {
        short s10 = this.f27447s;
        int nf2 = nf(f10);
        if (nf2 < 0) {
            return s10;
        }
        short s11 = this.f88566v[nf2];
        hf(nf2);
        return s11;
    }

    @Override
    public void clear() {
        super.clear();
        float[] fArr = this.f27445q;
        Arrays.fill(fArr, 0, fArr.length, this.f27446r);
        short[] sArr = this.f88566v;
        Arrays.fill(sArr, 0, sArr.length, this.f27447s);
        byte[] bArr = this.f27568l;
        Arrays.fill(bArr, 0, bArr.length, (byte) 0);
    }

    @Override
    public float[] d0(float[] fArr) {
        int size = size();
        if (fArr.length < size) {
            fArr = new float[size];
        }
        float[] fArr2 = this.f27445q;
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
        short q02;
        short s10;
        if (!(obj instanceof ee.F)) {
            return false;
        }
        ee.F f10 = (ee.F) obj;
        if (f10.size() != size()) {
            return false;
        }
        short[] sArr = this.f88566v;
        byte[] bArr = this.f27568l;
        short i10 = i();
        short i11 = f10.i();
        int length = sArr.length;
        while (true) {
            int i12 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (bArr[i12] == 1 && (s10 = sArr[i12]) != (q02 = f10.q0(this.f27445q[i12])) && s10 != i10 && q02 != i11) {
                return false;
            }
            length = i12;
        }
    }

    @Override
    public boolean g7(he.J j10) {
        byte[] bArr = this.f27568l;
        float[] fArr = this.f27445q;
        short[] sArr = this.f88566v;
        kf();
        try {
            int length = fArr.length;
            boolean z10 = false;
            while (true) {
                int i10 = length - 1;
                if (length <= 0) {
                    return z10;
                }
                if (bArr[i10] == 1 && !j10.a(fArr[i10], sArr[i10])) {
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
    public void gf(int i10) {
        float[] fArr = this.f27445q;
        int length = fArr.length;
        short[] sArr = this.f88566v;
        byte[] bArr = this.f27568l;
        this.f27445q = new float[i10];
        this.f88566v = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                this.f88566v[pf(fArr[i11])] = sArr[i11];
            }
            length = i11;
        }
    }

    public int hashCode() {
        byte[] bArr = this.f27568l;
        int length = this.f88566v.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (bArr[i11] == 1) {
                i10 += Vd.b.c(this.f27445q[i11]) ^ Vd.b.d(this.f88566v[i11]);
            }
            length = i11;
        }
    }

    @Override
    public void hf(int i10) {
        this.f88566v[i10] = this.f27447s;
        super.hf(i10);
    }

    @Override
    public short[] i0(short[] sArr) {
        int size = size();
        if (sArr.length < size) {
            sArr = new short[size];
        }
        short[] sArr2 = this.f88566v;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
    }

    @Override
    public boolean isEmpty() {
        return this.f27452b == 0;
    }

    @Override
    public Zd.K iterator() {
        return new b(this);
    }

    @Override
    public float[] j() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27445q;
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
        this.f88566v = new short[jf2];
        return jf2;
    }

    @Override
    public Sd.i k() {
        return new f();
    }

    @Override
    public InterfaceC13970d keySet() {
        return new e();
    }

    @Override
    public void lb(ee.F f10) {
        cf(f10.size());
        Zd.K it = f10.iterator();
        while (it.hasNext()) {
            it.g();
            T5(it.key(), it.value());
        }
    }

    @Override
    public void putAll(Map<? extends Float, ? extends Short> map) {
        cf(map.size());
        for (Map.Entry<? extends Float, ? extends Short> entry : map.entrySet()) {
            T5(entry.getKey().floatValue(), entry.getValue().shortValue());
        }
    }

    @Override
    public short q0(float f10) {
        int nf2 = nf(f10);
        return nf2 < 0 ? this.f27447s : this.f88566v[nf2];
    }

    @Override
    public void r(Ud.h hVar) {
        byte[] bArr = this.f27568l;
        short[] sArr = this.f88566v;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i10] == 1) {
                sArr[i10] = hVar.a(sArr[i10]);
            }
            length = i10;
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
            T5(objectInput.readFloat(), objectInput.readShort());
            readInt = i10;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Yd(new a(sb2));
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public short[] values() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f88566v;
        byte[] bArr = this.f27568l;
        int length = sArr2.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return sArr;
            }
            if (bArr[i11] == 1) {
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
        objectOutput.writeInt(this.f27452b);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeFloat(this.f27445q[i10]);
                objectOutput.writeShort(this.f88566v[i10]);
            }
            length = i10;
        }
    }

    public final short zf(float f10, short s10, int i10) {
        short s11 = this.f27447s;
        boolean z10 = true;
        if (i10 < 0) {
            i10 = (-i10) - 1;
            s11 = this.f88566v[i10];
            z10 = false;
        }
        this.f88566v[i10] = s10;
        if (z10) {
            ef(this.f27448t);
        }
        return s11;
    }

    public C13329G(int i10) {
        super(i10);
    }

    public C13329G(int i10, float f10) {
        super(i10, f10);
    }

    public C13329G(int i10, float f10, float f11, short s10) {
        super(i10, f10, f11, s10);
    }

    public C13329G(float[] fArr, short[] sArr) {
        super(Math.max(fArr.length, sArr.length));
        int min = Math.min(fArr.length, sArr.length);
        for (int i10 = 0; i10 < min; i10++) {
            T5(fArr[i10], sArr[i10]);
        }
    }

    public C13329G(ee.F f10) {
        super(f10.size());
        if (f10 instanceof C13329G) {
            C13329G c13329g = (C13329G) f10;
            this.f27454d = c13329g.f27454d;
            float f11 = c13329g.f27446r;
            this.f27446r = f11;
            this.f27447s = c13329g.f27447s;
            if (f11 != 0.0f) {
                Arrays.fill(this.f27445q, f11);
            }
            short s10 = this.f27447s;
            if (s10 != 0) {
                Arrays.fill(this.f88566v, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        lb(f10);
    }
}
