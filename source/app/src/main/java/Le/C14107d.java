package le;

import Wd.AbstractC3178v;
import Wd.J;
import Zd.InterfaceC3466y;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13969c;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14107d extends AbstractC3178v implements InterfaceC13969c, Externalizable {

    public static final long f96331u = 1;

    public class a extends J implements InterfaceC3466y {

        public final AbstractC3178v f96332e;

        public a(AbstractC3178v abstractC3178v) {
            super(abstractC3178v);
            this.f96332e = abstractC3178v;
        }

        @Override
        public double next() {
            j();
            return this.f96332e.f27694q[this.f27465d];
        }
    }

    public C14107d() {
    }

    @Override
    public boolean C1(Sd.e eVar) {
        InterfaceC3466y it = eVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (a(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean G1(Sd.e eVar) {
        InterfaceC3466y it = eVar.iterator();
        while (it.hasNext()) {
            if (!Y0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean J1(Sd.e eVar) {
        boolean z10 = false;
        if (this == eVar) {
            return false;
        }
        InterfaceC3466y it = iterator();
        while (it.hasNext()) {
            if (!eVar.Y0(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean Y1(double[] dArr) {
        Arrays.sort(dArr);
        double[] dArr2 = this.f27694q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = dArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(dArr, dArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean a(double d10) {
        int mf2 = mf(d10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean add(double d10) {
        if (of(d10) < 0) {
            return false;
        }
        ef(this.f27696s);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends Double> collection) {
        Iterator<? extends Double> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next().doubleValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        super.clear();
        double[] dArr = this.f27694q;
        byte[] bArr = this.f27568l;
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            dArr[i10] = this.f27695r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Double) || !Y0(((Double) obj).doubleValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13969c)) {
            return false;
        }
        InterfaceC13969c interfaceC13969c = (InterfaceC13969c) obj;
        if (interfaceC13969c.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13969c.Y0(this.f27694q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        double[] dArr = this.f27694q;
        int length = dArr.length;
        byte[] bArr = this.f27568l;
        this.f27694q = new double[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(dArr[i11]);
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
                i10 += Vd.b.b(this.f27694q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public InterfaceC3466y iterator() {
        return new a(this);
    }

    @Override
    public boolean m2(double[] dArr) {
        int length = dArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (add(dArr[i10])) {
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
            double readDouble = objectInput.readDouble();
            this.f27695r = readDouble;
            if (readDouble != 0.0d) {
                Arrays.fill(this.f27694q, readDouble);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            add(objectInput.readDouble());
            readInt = i10;
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Double) && a(((Double) obj).doubleValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        InterfaceC3466y it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Double.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean s1(double[] dArr) {
        int length = dArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!Y0(dArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public double[] toArray() {
        double[] dArr = new double[size()];
        double[] dArr2 = this.f27694q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return dArr;
            }
            if (bArr[i11] == 1) {
                dArr[i10] = dArr2[i11];
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
                sb2.append(this.f27694q[i11]);
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
    public boolean w1(double[] dArr) {
        int length = dArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (a(dArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        objectOutput.writeFloat(this.f27454d);
        objectOutput.writeDouble(this.f27695r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeDouble(this.f27694q[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean x2(Sd.e eVar) {
        InterfaceC3466y it = eVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public C14107d(int i10) {
        super(i10);
    }

    public C14107d(int i10, float f10) {
        super(i10, f10);
    }

    public C14107d(int i10, float f10, double d10) {
        super(i10, f10, d10);
        if (d10 != 0.0d) {
            Arrays.fill(this.f27694q, d10);
        }
    }

    public C14107d(Collection<? extends Double> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    @Override
    public double[] toArray(double[] dArr) {
        double[] dArr2 = this.f27694q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                dArr[i10] = dArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = dArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            dArr[i12] = this.f27695r;
        }
        return dArr;
    }

    public C14107d(Sd.e eVar) {
        this(Math.max(eVar.size(), 10));
        if (eVar instanceof C14107d) {
            C14107d c14107d = (C14107d) eVar;
            this.f27454d = c14107d.f27454d;
            double d10 = c14107d.f27695r;
            this.f27695r = d10;
            if (d10 != 0.0d) {
                Arrays.fill(this.f27694q, d10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        x2(eVar);
    }

    public C14107d(double[] dArr) {
        this(Math.max(dArr.length, 10));
        m2(dArr);
    }
}
