package ne;

import ce.C4176b;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14219b;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14382b implements InterfaceC14219b, Externalizable {

    public static final long f97962c = 1;

    public static final int f97963d = 10;

    public C4176b f97964b;

    public C14382b() {
        this(10);
    }

    @Override
    public void Q0(char[] cArr) {
        int size = size();
        int length = size - cArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, cArr.length);
        this.f97964b.B5(cArr, length, min);
        b(cArr, 0, min);
        if (cArr.length > size) {
            cArr[size] = this.f97964b.i();
        }
    }

    @Override
    public void a(char c10) {
        this.f97964b.e1(c10);
    }

    public final void b(char[] cArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(cArr, i10, i12);
            i10++;
        }
    }

    public final void c(char[] cArr, int i10, int i11) {
        char c10 = cArr[i10];
        cArr[i10] = cArr[i11];
        cArr[i11] = c10;
    }

    @Override
    public void clear() {
        this.f97964b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97964b.equals(((C14382b) obj).f97964b);
    }

    public int hashCode() {
        return this.f97964b.hashCode();
    }

    @Override
    public char i() {
        return this.f97964b.i();
    }

    @Override
    public char peek() {
        return this.f97964b.get(r0.size() - 1);
    }

    @Override
    public char pop() {
        return this.f97964b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97964b = (C4176b) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97964b.size();
    }

    @Override
    public char[] toArray() {
        char[] array = this.f97964b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97964b.size() - 1; size > 0; size--) {
            sb2.append(this.f97964b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f97964b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97964b);
    }

    public C14382b(int i10) {
        this.f97964b = new C4176b(i10);
    }

    public C14382b(int i10, char c10) {
        this.f97964b = new C4176b(i10, c10);
    }

    public C14382b(InterfaceC14219b interfaceC14219b) {
        if (interfaceC14219b instanceof C14382b) {
            this.f97964b = new C4176b(((C14382b) interfaceC14219b).f97964b);
            return;
        }
        throw new UnsupportedOperationException("Only support TCharArrayStack");
    }
}
