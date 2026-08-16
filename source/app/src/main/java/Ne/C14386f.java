package ne;

import ce.C4180f;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14223f;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14386f implements InterfaceC14223f, Externalizable {

    public static final long f97974c = 1;

    public static final int f97975d = 10;

    public C4180f f97976b;

    public C14386f() {
        this(10);
    }

    @Override
    public void O0(long[] jArr) {
        int size = size();
        int length = size - jArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, jArr.length);
        this.f97976b.Wa(jArr, length, min);
        b(jArr, 0, min);
        if (jArr.length > size) {
            jArr[size] = this.f97976b.i();
        }
    }

    @Override
    public void a(long j10) {
        this.f97976b.M0(j10);
    }

    public final void b(long[] jArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(jArr, i10, i12);
            i10++;
        }
    }

    public final void c(long[] jArr, int i10, int i11) {
        long j10 = jArr[i10];
        jArr[i10] = jArr[i11];
        jArr[i11] = j10;
    }

    @Override
    public void clear() {
        this.f97976b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97976b.equals(((C14386f) obj).f97976b);
    }

    public int hashCode() {
        return this.f97976b.hashCode();
    }

    @Override
    public long i() {
        return this.f97976b.i();
    }

    @Override
    public long peek() {
        return this.f97976b.get(r0.size() - 1);
    }

    @Override
    public long pop() {
        return this.f97976b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97976b = (C4180f) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97976b.size();
    }

    @Override
    public long[] toArray() {
        long[] array = this.f97976b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97976b.size() - 1; size > 0; size--) {
            sb2.append(this.f97976b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f97976b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97976b);
    }

    public C14386f(int i10) {
        this.f97976b = new C4180f(i10);
    }

    public C14386f(int i10, long j10) {
        this.f97976b = new C4180f(i10, j10);
    }

    public C14386f(InterfaceC14223f interfaceC14223f) {
        if (interfaceC14223f instanceof C14386f) {
            this.f97976b = new C4180f(((C14386f) interfaceC14223f).f97976b);
            return;
        }
        throw new UnsupportedOperationException("Only support TLongArrayStack");
    }
}
