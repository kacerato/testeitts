package le;

import Wd.D;
import Wd.J;
import Zd.H;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13970d;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14108e extends D implements InterfaceC13970d, Externalizable {

    public static final long f96334u = 1;

    public class a extends J implements H {

        public final D f96335e;

        public a(D d10) {
            super(d10);
            this.f96335e = d10;
        }

        @Override
        public float next() {
            j();
            return this.f96335e.f27431q[this.f27465d];
        }
    }

    public C14108e() {
    }

    @Override
    public boolean C2(Sd.f fVar) {
        H it = fVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (f1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean D1(Sd.f fVar) {
        H it = fVar.iterator();
        while (it.hasNext()) {
            if (!Z0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean L1(float[] fArr) {
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!Z0(fArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean V1(float[] fArr) {
        Arrays.sort(fArr);
        float[] fArr2 = this.f27431q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = fArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(fArr, fArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean addAll(Collection<? extends Float> collection) {
        Iterator<? extends Float> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (f1(it.next().floatValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean c(float f10) {
        int mf2 = mf(f10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean c2(Sd.f fVar) {
        boolean z10 = false;
        if (this == fVar) {
            return false;
        }
        H it = iterator();
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
        super.clear();
        float[] fArr = this.f27431q;
        byte[] bArr = this.f27568l;
        int length = fArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            fArr[i10] = this.f27432r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Float) || !Z0(((Float) obj).floatValue())) {
                return false;
            }
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
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13970d.Z0(this.f27431q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean f1(float f10) {
        if (of(f10) < 0) {
            return false;
        }
        ef(this.f27433s);
        return true;
    }

    @Override
    public boolean g2(Sd.f fVar) {
        H it = fVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void gf(int i10) {
        float[] fArr = this.f27431q;
        int length = fArr.length;
        byte[] bArr = this.f27568l;
        this.f27431q = new float[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(fArr[i11]);
            }
            length = i11;
        }
    }

    @Override
    public int hashCode() {
        int length = this.f27568l.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return i10;
            }
            if (this.f27568l[i11] == 1) {
                i10 += Vd.b.c(this.f27431q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public H iterator() {
        return new a(this);
    }

    @Override
    public boolean l2(float[] fArr) {
        int length = fArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (f1(fArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte readByte = objectInput.readByte();
        super.readExternal(objectInput);
        int readInt = objectInput.readInt();
        if (readByte >= 1) {
            this.f27454d = objectInput.readFloat();
            float readFloat = objectInput.readFloat();
            this.f27432r = readFloat;
            if (readFloat != 0.0f) {
                Arrays.fill(this.f27431q, readFloat);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            f1(objectInput.readFloat());
            readInt = i10;
        }
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
        H it = iterator();
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
    public float[] toArray() {
        float[] fArr = new float[size()];
        float[] fArr2 = this.f27431q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
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

    public String toString() {
        StringBuilder sb2 = new StringBuilder((this.f27452b * 2) + 2);
        sb2.append("{");
        int length = this.f27568l.length;
        int i10 = 1;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                return sb2.toString();
            }
            if (this.f27568l[i11] == 1) {
                sb2.append(this.f27431q[i11]);
                int i12 = i10 + 1;
                if (i10 < this.f27452b) {
                    sb2.append(DocLint.SEPARATOR);
                }
                i10 = i12;
            }
            length = i11;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        objectOutput.writeFloat(this.f27454d);
        objectOutput.writeFloat(this.f27432r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeFloat(this.f27431q[i10]);
            }
            length = i10;
        }
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

    public C14108e(int i10) {
        super(i10);
    }

    public C14108e(int i10, float f10) {
        super(i10, f10);
    }

    public C14108e(int i10, float f10, float f11) {
        super(i10, f10, f11);
        if (f11 != 0.0f) {
            Arrays.fill(this.f27431q, f11);
        }
    }

    public C14108e(Collection<? extends Float> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    @Override
    public float[] toArray(float[] fArr) {
        float[] fArr2 = this.f27431q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                fArr[i10] = fArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = fArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            fArr[i12] = this.f27432r;
        }
        return fArr;
    }

    public C14108e(Sd.f fVar) {
        this(Math.max(fVar.size(), 10));
        if (fVar instanceof C14108e) {
            C14108e c14108e = (C14108e) fVar;
            this.f27454d = c14108e.f27454d;
            float f10 = c14108e.f27432r;
            this.f27432r = f10;
            if (f10 != 0.0f) {
                Arrays.fill(this.f27431q, f10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        C2(fVar);
    }

    public C14108e(float[] fArr) {
        this(Math.max(fArr.length, 10));
        l2(fArr);
    }
}
