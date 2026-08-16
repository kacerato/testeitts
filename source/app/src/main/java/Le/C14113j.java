package le;

import Wd.J;
import Wd.h0;
import Zd.s0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13973g;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14113j extends h0 implements InterfaceC13973g, Externalizable {

    public static final long f96361u = 1;

    public class a extends J implements s0 {

        public final h0 f96362e;

        public a(h0 h0Var) {
            super(h0Var);
            this.f96362e = h0Var;
        }

        @Override
        public short next() {
            j();
            return this.f96362e.f27614q[this.f27465d];
        }
    }

    public C14113j() {
    }

    @Override
    public boolean A2(short[] sArr) {
        int length = sArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (c1(sArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean F1(Sd.i iVar) {
        s0 it = iVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public short[] N0(short[] sArr) {
        short[] sArr2 = this.f27614q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                sArr[i10] = sArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = sArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            sArr[i12] = this.f27615r;
        }
        return sArr;
    }

    @Override
    public boolean Z1(short[] sArr) {
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!W0(sArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean addAll(Collection<? extends Short> collection) {
        Iterator<? extends Short> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (c1(it.next().shortValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean c1(short s10) {
        if (of(s10) < 0) {
            return false;
        }
        ef(this.f27616s);
        return true;
    }

    @Override
    public void clear() {
        super.clear();
        short[] sArr = this.f27614q;
        byte[] bArr = this.f27568l;
        int length = sArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            sArr[i10] = this.f27615r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Short) || !W0(((Short) obj).shortValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean d(short s10) {
        int mf2 = mf(s10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13973g)) {
            return false;
        }
        InterfaceC13973g interfaceC13973g = (InterfaceC13973g) obj;
        if (interfaceC13973g.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13973g.W0(this.f27614q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        short[] sArr = this.f27614q;
        int length = sArr.length;
        byte[] bArr = this.f27568l;
        this.f27614q = new short[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(sArr[i11]);
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
                i10 += Vd.b.d(this.f27614q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public s0 iterator() {
        return new a(this);
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
        short[] sArr2 = this.f27614q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = sArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(sArr, sArr2[i10]) < 0) {
                hf(i10);
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
            short readShort = objectInput.readShort();
            this.f27615r = readShort;
            if (readShort != 0) {
                Arrays.fill(this.f27614q, readShort);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            c1(objectInput.readShort());
            readInt = i10;
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
    public short[] toArray() {
        short[] sArr = new short[size()];
        short[] sArr2 = this.f27614q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
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
                sb2.append((int) this.f27614q[i11]);
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
    public boolean v2(Sd.i iVar) {
        s0 it = iVar.iterator();
        while (it.hasNext()) {
            if (!W0(it.next())) {
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
        objectOutput.writeShort(this.f27615r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeShort(this.f27614q[i10]);
            }
            length = i10;
        }
    }

    public C14113j(int i10) {
        super(i10);
    }

    public C14113j(int i10, float f10) {
        super(i10, f10);
    }

    public C14113j(int i10, float f10, short s10) {
        super(i10, f10, s10);
        if (s10 != 0) {
            Arrays.fill(this.f27614q, s10);
        }
    }

    public C14113j(Collection<? extends Short> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    public C14113j(Sd.i iVar) {
        this(Math.max(iVar.size(), 10));
        if (iVar instanceof C14113j) {
            C14113j c14113j = (C14113j) iVar;
            this.f27454d = c14113j.f27454d;
            short s10 = c14113j.f27615r;
            this.f27615r = s10;
            if (s10 != 0) {
                Arrays.fill(this.f27614q, s10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        F1(iVar);
    }

    public C14113j(short[] sArr) {
        this(Math.max(sArr.length, 10));
        A2(sArr);
    }
}
