package le;

import Wd.AbstractC3162e;
import Wd.J;
import Zd.InterfaceC3449g;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13967a;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14104a extends AbstractC3162e implements InterfaceC13967a, Externalizable {

    public static final long f96319u = 1;

    public class C1870a extends J implements InterfaceC3449g {

        public final AbstractC3162e f96320e;

        public C1870a(AbstractC3162e abstractC3162e) {
            super(abstractC3162e);
            this.f96320e = abstractC3162e;
        }

        @Override
        public byte next() {
            j();
            return this.f96320e.f27580q[this.f27465d];
        }
    }

    public C14104a() {
    }

    @Override
    public boolean E1(Sd.a aVar) {
        InterfaceC3449g it = aVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (d1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public byte[] R0(byte[] bArr) {
        byte[] bArr2 = this.f27580q;
        byte[] bArr3 = this.f27568l;
        int length = bArr3.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = bArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            bArr[i12] = this.f27581r;
        }
        return bArr;
    }

    @Override
    public boolean W1(byte[] bArr) {
        Arrays.sort(bArr);
        byte[] bArr2 = this.f27580q;
        byte[] bArr3 = this.f27568l;
        this.f27458h = true;
        int length = bArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr3[i10] == 1 && Arrays.binarySearch(bArr, bArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean addAll(Collection<? extends Byte> collection) {
        Iterator<? extends Byte> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (d1(it.next().byteValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        super.clear();
        byte[] bArr = this.f27580q;
        byte[] bArr2 = this.f27568l;
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            bArr[i10] = this.f27581r;
            bArr2[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Byte) || !a1(((Byte) obj).byteValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean d1(byte b10) {
        if (of(b10) < 0) {
            return false;
        }
        ef(this.f27582s);
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13967a)) {
            return false;
        }
        InterfaceC13967a interfaceC13967a = (InterfaceC13967a) obj;
        if (interfaceC13967a.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13967a.a1(this.f27580q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        byte[] bArr = this.f27580q;
        int length = bArr.length;
        byte[] bArr2 = this.f27568l;
        this.f27580q = new byte[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr2[i11] == 1) {
                of(bArr[i11]);
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
                i10 += Vd.b.d(this.f27580q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public boolean i2(Sd.a aVar) {
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
    public InterfaceC3449g iterator() {
        return new C1870a(this);
    }

    @Override
    public boolean m(byte b10) {
        int mf2 = mf(b10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean o2(byte[] bArr) {
        int length = bArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (d1(bArr[i10])) {
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
            byte readByte2 = objectInput.readByte();
            this.f27581r = readByte2;
            if (readByte2 != 0) {
                Arrays.fill(this.f27580q, readByte2);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            d1(objectInput.readByte());
            readInt = i10;
        }
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
    public boolean t1(byte[] bArr) {
        int length = bArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!a1(bArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public byte[] toArray() {
        byte[] bArr = new byte[size()];
        byte[] bArr2 = this.f27580q;
        byte[] bArr3 = this.f27568l;
        int length = bArr3.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return bArr;
            }
            if (bArr3[i11] == 1) {
                bArr[i10] = bArr2[i11];
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
                sb2.append((int) this.f27580q[i11]);
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
    public boolean w2(Sd.a aVar) {
        InterfaceC3449g it = aVar.iterator();
        while (it.hasNext()) {
            if (!a1(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        objectOutput.writeFloat(this.f27454d);
        objectOutput.writeByte(this.f27581r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeByte(this.f27580q[i10]);
            }
            length = i10;
        }
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

    public C14104a(int i10) {
        super(i10);
    }

    public C14104a(int i10, float f10) {
        super(i10, f10);
    }

    public C14104a(int i10, float f10, byte b10) {
        super(i10, f10, b10);
        if (b10 != 0) {
            Arrays.fill(this.f27580q, b10);
        }
    }

    public C14104a(Collection<? extends Byte> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    public C14104a(Sd.a aVar) {
        this(Math.max(aVar.size(), 10));
        if (aVar instanceof C14104a) {
            C14104a c14104a = (C14104a) aVar;
            this.f27454d = c14104a.f27454d;
            byte b10 = c14104a.f27581r;
            this.f27581r = b10;
            if (b10 != 0) {
                Arrays.fill(this.f27580q, b10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        E1(aVar);
    }

    public C14104a(byte[] bArr) {
        this(Math.max(bArr.length, 10));
        o2(bArr);
    }
}
