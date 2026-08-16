package le;

import Wd.AbstractC3170m;
import Wd.J;
import Zd.InterfaceC3458p;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import ke.InterfaceC13968b;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;

public class C14105b extends AbstractC3170m implements InterfaceC13968b, Externalizable {

    public static final long f96322u = 1;

    public class a extends J implements InterfaceC3458p {

        public final AbstractC3170m f96323e;

        public a(AbstractC3170m abstractC3170m) {
            super(abstractC3170m);
            this.f96323e = abstractC3170m;
        }

        @Override
        public char next() {
            j();
            return this.f96323e.f27653q[this.f27465d];
        }
    }

    public C14105b() {
    }

    @Override
    public char[] Q0(char[] cArr) {
        char[] cArr2 = this.f27653q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
        int i10 = 0;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                break;
            }
            if (bArr[i11] == 1) {
                cArr[i10] = cArr2[i11];
                i10++;
            }
            length = i11;
        }
        int length2 = cArr.length;
        int i12 = this.f27452b;
        if (length2 > i12) {
            cArr[i12] = this.f27654r;
        }
        return cArr;
    }

    @Override
    public boolean X1(char[] cArr) {
        Arrays.sort(cArr);
        char[] cArr2 = this.f27653q;
        byte[] bArr = this.f27568l;
        this.f27458h = true;
        int length = cArr2.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                this.f27458h = false;
                return z10;
            }
            if (bArr[i10] == 1 && Arrays.binarySearch(cArr, cArr2[i10]) < 0) {
                hf(i10);
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean addAll(Collection<? extends Character> collection) {
        Iterator<? extends Character> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e1(it.next().charValue())) {
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public boolean b(char c10) {
        int mf2 = mf(c10);
        if (mf2 < 0) {
            return false;
        }
        hf(mf2);
        return true;
    }

    @Override
    public void clear() {
        super.clear();
        char[] cArr = this.f27653q;
        byte[] bArr = this.f27568l;
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            cArr[i10] = this.f27654r;
            bArr[i10] = 0;
            length = i10;
        }
    }

    @Override
    public boolean containsAll(Collection<?> collection) {
        for (Object obj : collection) {
            if (!(obj instanceof Character) || !b1(((Character) obj).charValue())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean e1(char c10) {
        if (of(c10) < 0) {
            return false;
        }
        ef(this.f27655s);
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof InterfaceC13968b)) {
            return false;
        }
        InterfaceC13968b interfaceC13968b = (InterfaceC13968b) obj;
        if (interfaceC13968b.size() != size()) {
            return false;
        }
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (this.f27568l[i10] == 1 && !interfaceC13968b.b1(this.f27653q[i10])) {
                return false;
            }
            length = i10;
        }
    }

    @Override
    public void gf(int i10) {
        char[] cArr = this.f27653q;
        int length = cArr.length;
        byte[] bArr = this.f27568l;
        this.f27653q = new char[i10];
        this.f27568l = new byte[i10];
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            if (bArr[i11] == 1) {
                of(cArr[i11]);
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
                i10 += Vd.b.d(this.f27653q[i11]);
            }
            length = i11;
        }
    }

    @Override
    public InterfaceC3458p iterator() {
        return new a(this);
    }

    @Override
    public boolean n2(char[] cArr) {
        int length = cArr.length;
        boolean z10 = false;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return z10;
            }
            if (e1(cArr[i10])) {
                z10 = true;
            }
            length = i10;
        }
    }

    @Override
    public boolean p2(Sd.b bVar) {
        InterfaceC3458p it = bVar.iterator();
        while (it.hasNext()) {
            if (!b1(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte readByte = objectInput.readByte();
        super.readExternal(objectInput);
        int readInt = objectInput.readInt();
        if (readByte >= 1) {
            this.f27454d = objectInput.readFloat();
            char readChar = objectInput.readChar();
            this.f27654r = readChar;
            if (readChar != 0) {
                Arrays.fill(this.f27653q, readChar);
            }
        }
        jf(readInt);
        while (true) {
            int i10 = readInt - 1;
            if (readInt <= 0) {
                return;
            }
            e1(objectInput.readChar());
            readInt = i10;
        }
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
    public boolean t2(Sd.b bVar) {
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
        char[] cArr = new char[size()];
        char[] cArr2 = this.f27653q;
        byte[] bArr = this.f27568l;
        int length = bArr.length;
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
                sb2.append(this.f27653q[i11]);
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
    public boolean u1(char[] cArr) {
        int length = cArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return true;
            }
            if (!b1(cArr[i10])) {
                return false;
            }
            length = i10;
        }
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
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(1);
        super.writeExternal(objectOutput);
        objectOutput.writeInt(this.f27452b);
        objectOutput.writeFloat(this.f27454d);
        objectOutput.writeChar(this.f27654r);
        int length = this.f27568l.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            if (this.f27568l[i10] == 1) {
                objectOutput.writeChar(this.f27653q[i10]);
            }
            length = i10;
        }
    }

    @Override
    public boolean z1(Sd.b bVar) {
        InterfaceC3458p it = bVar.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (e1(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }

    public C14105b(int i10) {
        super(i10);
    }

    public C14105b(int i10, float f10) {
        super(i10, f10);
    }

    public C14105b(int i10, float f10, char c10) {
        super(i10, f10, c10);
        if (c10 != 0) {
            Arrays.fill(this.f27653q, c10);
        }
    }

    public C14105b(Collection<? extends Character> collection) {
        this(Math.max(collection.size(), 10));
        addAll(collection);
    }

    public C14105b(Sd.b bVar) {
        this(Math.max(bVar.size(), 10));
        if (bVar instanceof C14105b) {
            C14105b c14105b = (C14105b) bVar;
            this.f27454d = c14105b.f27454d;
            char c10 = c14105b.f27654r;
            this.f27654r = c10;
            if (c10 != 0) {
                Arrays.fill(this.f27653q, c10);
            }
            jf((int) Math.ceil(10.0f / this.f27454d));
        }
        z1(bVar);
    }

    public C14105b(char[] cArr) {
        this(Math.max(cArr.length, 10));
        n2(cArr);
    }
}
