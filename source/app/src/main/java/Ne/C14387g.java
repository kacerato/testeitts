package ne;

import ce.C4181g;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14224g;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14387g implements InterfaceC14224g, Externalizable {

    public static final long f97977c = 1;

    public static final int f97978d = 10;

    public C4181g f97979b;

    public C14387g() {
        this(10);
    }

    @Override
    public void N0(short[] sArr) {
        int size = size();
        int length = size - sArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, sArr.length);
        this.f97979b.zb(sArr, length, min);
        b(sArr, 0, min);
        if (sArr.length > size) {
            sArr[size] = this.f97979b.i();
        }
    }

    @Override
    public void a(short s10) {
        this.f97979b.c1(s10);
    }

    public final void b(short[] sArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(sArr, i10, i12);
            i10++;
        }
    }

    public final void c(short[] sArr, int i10, int i11) {
        short s10 = sArr[i10];
        sArr[i10] = sArr[i11];
        sArr[i11] = s10;
    }

    @Override
    public void clear() {
        this.f97979b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97979b.equals(((C14387g) obj).f97979b);
    }

    public int hashCode() {
        return this.f97979b.hashCode();
    }

    @Override
    public short i() {
        return this.f97979b.i();
    }

    @Override
    public short peek() {
        return this.f97979b.get(r0.size() - 1);
    }

    @Override
    public short pop() {
        return this.f97979b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97979b = (C4181g) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97979b.size();
    }

    @Override
    public short[] toArray() {
        short[] array = this.f97979b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97979b.size() - 1; size > 0; size--) {
            sb2.append((int) this.f97979b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append((int) this.f97979b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97979b);
    }

    public C14387g(int i10) {
        this.f97979b = new C4181g(i10);
    }

    public C14387g(int i10, short s10) {
        this.f97979b = new C4181g(i10, s10);
    }

    public C14387g(InterfaceC14224g interfaceC14224g) {
        if (interfaceC14224g instanceof C14387g) {
            this.f97979b = new C4181g(((C14387g) interfaceC14224g).f97979b);
            return;
        }
        throw new UnsupportedOperationException("Only support TShortArrayStack");
    }
}
