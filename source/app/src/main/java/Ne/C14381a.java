package ne;

import ce.C4175a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14218a;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14381a implements InterfaceC14218a, Externalizable {

    public static final long f97959c = 1;

    public static final int f97960d = 10;

    public C4175a f97961b;

    public C14381a() {
        this(10);
    }

    @Override
    public void R0(byte[] bArr) {
        int size = size();
        int length = size - bArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, bArr.length);
        this.f97961b.cd(bArr, length, min);
        b(bArr, 0, min);
        if (bArr.length > size) {
            bArr[size] = this.f97961b.i();
        }
    }

    @Override
    public void a(byte b10) {
        this.f97961b.d1(b10);
    }

    public final void b(byte[] bArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(bArr, i10, i12);
            i10++;
        }
    }

    public final void c(byte[] bArr, int i10, int i11) {
        byte b10 = bArr[i10];
        bArr[i10] = bArr[i11];
        bArr[i11] = b10;
    }

    @Override
    public void clear() {
        this.f97961b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97961b.equals(((C14381a) obj).f97961b);
    }

    public int hashCode() {
        return this.f97961b.hashCode();
    }

    @Override
    public byte i() {
        return this.f97961b.i();
    }

    @Override
    public byte peek() {
        return this.f97961b.get(r0.size() - 1);
    }

    @Override
    public byte pop() {
        return this.f97961b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97961b = (C4175a) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97961b.size();
    }

    @Override
    public byte[] toArray() {
        byte[] array = this.f97961b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97961b.size() - 1; size > 0; size--) {
            sb2.append((int) this.f97961b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append((int) this.f97961b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97961b);
    }

    public C14381a(int i10) {
        this.f97961b = new C4175a(i10);
    }

    public C14381a(int i10, byte b10) {
        this.f97961b = new C4175a(i10, b10);
    }

    public C14381a(InterfaceC14218a interfaceC14218a) {
        if (interfaceC14218a instanceof C14381a) {
            this.f97961b = new C4175a(((C14381a) interfaceC14218a).f97961b);
            return;
        }
        throw new UnsupportedOperationException("Only support TByteArrayStack");
    }
}
