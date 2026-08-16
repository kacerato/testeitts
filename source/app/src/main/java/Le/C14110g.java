package le;

import Wd.J;
import Wd.O;
import Zd.Q;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13971e;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14110g extends O implements InterfaceC13971e, Externalizable {

    public static final long f96343u = 1;

    public class a extends J implements Q {

        public final O f96344e;

        public a(O o10) {
            super(o10);
            this.f96344e = o10;
        }

        @Override
        public int next() {
            j();
            return this.f96344e.f27487q[this.f27465d];
        }
    }

    public C14110g() {
    }

    @Override
    public boolean A1(int[] iArr) {
        int length = iArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (remove(iArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean K1(int[] iArr) {
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!contains(iArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean M1(int[] iArr) {
        Arrays.sort(iArr);
        int[] iArr2 = this.f27487q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = iArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(iArr, iArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public int[] P0(int[] iArr) {
        int[] iArr2 = this.f27487q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                iArr[i10] = iArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = iArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            iArr[i12] = this.f27488r;
        }
        return iArr;
    }

    @Override
    public boolean add(int i10) {
        if (of(i10) < 0) {
            return false;
        }
        ef(this.f27489s);
        return true;
    }

    @Override
    public boolean addAll(Collection<? extends Integer> collection) {
        Iterator<? extends Integer> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next().intValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean b2(Sd.g gVar) {
        Q it = gVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        super.clear();
        int[] iArr = this.f27487q;
        byte[] bArr = this.f27568l;
        int length = iArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            iArr[i10] = this.f27488r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Integer) || !contains(((Integer) obj).intValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean d2(Sd.g gVar) {
        Q it = gVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (remove(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13971e)) {
            return false;
        }
        InterfaceC13971e interfaceC13971e = (InterfaceC13971e) obj;
        if (interfaceC13971e.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13971e.contains(this.f27487q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        int[] iArr = this.f27487q;
        int length = iArr.length;
        byte[] bArr = this.f27568l;
        this.f27487q = new int[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(iArr[i11]);
            }
            length = i11;
        }
    }

    @Override
    public boolean h2(Sd.g gVar) {
        Q it = gVar.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
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
                i10 += Vd.b.d(this.f27487q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public Q iterator() {
        return new a(this);
    }

    @Override
    public boolean j2(Sd.g gVar) {
        boolean z10 = false;
        if (this == gVar) {
            return false;
        }
        Q it = iterator();
        while (it.hasNext()) {
            if (!gVar.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte readByte = objectInput.readByte();
        super.readExternal(objectInput);
        int readInt = objectInput.readInt();
        if (readByte >= 1) {
            this.f27454d = objectInput.readFloat();
            int readInt2 = objectInput.readInt();
            this.f27488r = readInt2;
            if (readInt2 != 0) {
                Arrays.fill(this.f27487q, readInt2);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            add(objectInput.readInt());
            readInt = i10;
        }
    }

    @Override
    public boolean remove(int i10) {
        int mf2 = mf(i10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Integer) && remove(((Integer) obj).intValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        Q it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Integer.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public int[] toArray() {
        int[] iArr = new int[size()];
        int[] iArr2 = this.f27487q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return iArr;
            }
            if (bArr[i11] == 1) {
                iArr[i10] = iArr2[i11];
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
                sb2.append(this.f27487q[i11]);
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
        objectOutput.writeInt(this.f27488r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeInt(this.f27487q[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z2(int[] iArr) {
        int length = iArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (add(iArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    public C14110g(int i10) {
        super(i10);
    }

    public C14110g(int i10, float f10) {
        super(i10, f10);
    }

    public C14110g(int i10, float f10, int i11) {
        super(i10, f10, i11);
        if (i11 != 0) {
            Arrays.fill(this.f27487q, i11);
        }
    }

    public C14110g(Collection<? extends Integer> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    public C14110g(Sd.g gVar) {
        this(Math.max(gVar.size(), 10));
        if (gVar instanceof C14110g) {
            C14110g c14110g = (C14110g) gVar;
            this.f27454d = c14110g.f27454d;
            int i10 = c14110g.f27488r;
            this.f27488r = i10;
            if (i10 != 0) {
                Arrays.fill(this.f27487q, i10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        b2(gVar);
    }

    public C14110g(int[] iArr) {
        this(Math.max(iArr.length, 10));
        z2(iArr);
    }
}
