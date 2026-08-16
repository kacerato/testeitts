package le;

import Wd.J;
import Wd.X;
import Zd.b0;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13972f;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14112i extends X implements InterfaceC13972f, Externalizable {

    public static final long f96358u = 1;

    public class a extends J implements b0 {

        public final X f96359e;

        public a(X x10) {
            super(x10);
            this.f96359e = x10;
        }

        @Override
        public long next() {
            j();
            return this.f96359e.f27526q[this.f27465d];
        }
    }

    public C14112i() {
    }

    @Override
    public boolean B1(long[] jArr) {
        int length = jArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (e(jArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean B2(Sd.h hVar) {
        b0 it = hVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (M0(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean H1(Sd.h hVar) {
        b0 it = hVar.iterator();
        while (it.hasNext()) {
            if (!X0(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean M0(long j10) {
        if (of(j10) < 0) {
            return false;
        }
        ef(this.f27528s);
        return true;
    }

    @Override
    public long[] O0(long[] jArr) {
        long[] jArr2 = this.f27526q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = jArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            jArr[i12] = this.f27527r;
        }
        return jArr;
    }

    @Override
    public boolean Q1(long[] jArr) {
        Arrays.sort(jArr);
        long[] jArr2 = this.f27526q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = jArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(jArr, jArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean U1(long[] jArr) {
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!X0(jArr[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean addAll(Collection<? extends Long> collection) {
        Iterator<? extends Long> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (M0(it.next().longValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void clear() {
        super.clear();
        long[] jArr = this.f27526q;
        byte[] bArr = this.f27568l;
        int length = jArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            jArr[i10] = this.f27527r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Long) || !X0(((Long) obj).longValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean e(long j10) {
        int mf2 = mf(j10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13972f)) {
            return false;
        }
        InterfaceC13972f interfaceC13972f = (InterfaceC13972f) obj;
        if (interfaceC13972f.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13972f.X0(this.f27526q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public boolean f2(Sd.h hVar) {
        b0 it = hVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public void gf(int i10) {
        long[] jArr = this.f27526q;
        int length = jArr.length;
        byte[] bArr = this.f27568l;
        this.f27526q = new long[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(jArr[i11]);
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
                i10 += Vd.b.e(this.f27526q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public b0 iterator() {
        return new a(this);
    }

    @Override
    public boolean q1(Sd.h hVar) {
        boolean z10 = false;
        if (this == hVar) {
            return false;
        }
        b0 it = iterator();
        while (it.hasNext()) {
            if (!hVar.X0(it.next())) {
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
            long readLong = objectInput.readLong();
            this.f27527r = readLong;
            if (readLong != 0) {
                Arrays.fill(this.f27526q, readLong);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            M0(objectInput.readLong());
            readInt = i10;
        }
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        boolean z10 = false;
        for (Object obj : collection) {
            if ((obj instanceof Long) && e(((Long) obj).longValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        b0 it = iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(Long.valueOf(it.next()))) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public long[] toArray() {
        long[] jArr = new long[size()];
        long[] jArr2 = this.f27526q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return jArr;
            }
            if (bArr[i11] == 1) {
                jArr[i10] = jArr2[i11];
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
                sb2.append(this.f27526q[i11]);
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
        objectOutput.writeLong(this.f27527r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeLong(this.f27526q[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean y2(long[] jArr) {
        int length = jArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (M0(jArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    public C14112i(int i10) {
        super(i10);
    }

    public C14112i(int i10, float f10) {
        super(i10, f10);
    }

    public C14112i(int i10, float f10, long j10) {
        super(i10, f10, j10);
        if (j10 != 0) {
            Arrays.fill(this.f27526q, j10);
        }
    }

    public C14112i(Collection<? extends Long> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    public C14112i(Sd.h hVar) {
        this(Math.max(hVar.size(), 10));
        if (hVar instanceof C14112i) {
            C14112i c14112i = (C14112i) hVar;
            this.f27454d = c14112i.f27454d;
            long j10 = c14112i.f27527r;
            this.f27527r = j10;
            if (j10 != 0) {
                Arrays.fill(this.f27526q, j10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        B2(hVar);
    }

    public C14112i(long[] jArr) {
        this(Math.max(jArr.length, 10));
        y2(jArr);
    }
}
