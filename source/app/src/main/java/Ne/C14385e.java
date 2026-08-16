package ne;

import ce.C4179e;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14222e;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14385e implements InterfaceC14222e, Externalizable {

    public static final long f97971c = 1;

    public static final int f97972d = 10;

    public C4179e f97973b;

    public C14385e() {
        this(10);
    }

    @Override
    public void P0(int[] iArr) {
        int size = size();
        int length = size - iArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, iArr.length);
        this.f97973b.w9(iArr, length, min);
        b(iArr, 0, min);
        if (iArr.length > size) {
            iArr[size] = this.f97973b.i();
        }
    }

    @Override
    public void a(int i10) {
        this.f97973b.add(i10);
    }

    public final void b(int[] iArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(iArr, i10, i12);
            i10++;
        }
    }

    public final void c(int[] iArr, int i10, int i11) {
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
    }

    @Override
    public void clear() {
        this.f97973b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97973b.equals(((C14385e) obj).f97973b);
    }

    public int hashCode() {
        return this.f97973b.hashCode();
    }

    @Override
    public int i() {
        return this.f97973b.i();
    }

    @Override
    public int peek() {
        return this.f97973b.get(r0.size() - 1);
    }

    @Override
    public int pop() {
        return this.f97973b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97973b = (C4179e) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97973b.size();
    }

    @Override
    public int[] toArray() {
        int[] array = this.f97973b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97973b.size() - 1; size > 0; size--) {
            sb2.append(this.f97973b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f97973b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97973b);
    }

    public C14385e(int i10) {
        this.f97973b = new C4179e(i10);
    }

    public C14385e(int i10, int i11) {
        this.f97973b = new C4179e(i10, i11);
    }

    public C14385e(InterfaceC14222e interfaceC14222e) {
        if (interfaceC14222e instanceof C14385e) {
            this.f97973b = new C4179e(((C14385e) interfaceC14222e).f97973b);
            return;
        }
        throw new UnsupportedOperationException("Only support TIntArrayStack");
    }
}
