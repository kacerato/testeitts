package ne;

import ce.C4178d;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14221d;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14384d implements InterfaceC14221d, Externalizable {

    public static final long f97968c = 1;

    public static final int f97969d = 10;

    public C4178d f97970b;

    public C14384d() {
        this(10);
    }

    @Override
    public void a(float f10) {
        this.f97970b.f1(f10);
    }

    public final void b(float[] fArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(fArr, i10, i12);
            i10++;
        }
    }

    public final void c(float[] fArr, int i10, int i11) {
        float f10 = fArr[i10];
        fArr[i10] = fArr[i11];
        fArr[i11] = f10;
    }

    @Override
    public void clear() {
        this.f97970b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97970b.equals(((C14384d) obj).f97970b);
    }

    public int hashCode() {
        return this.f97970b.hashCode();
    }

    @Override
    public float i() {
        return this.f97970b.i();
    }

    @Override
    public float peek() {
        return this.f97970b.get(r0.size() - 1);
    }

    @Override
    public float pop() {
        return this.f97970b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97970b = (C4178d) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97970b.size();
    }

    @Override
    public float[] toArray() {
        float[] array = this.f97970b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97970b.size() - 1; size > 0; size--) {
            sb2.append(this.f97970b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f97970b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97970b);
    }

    public C14384d(int i10) {
        this.f97970b = new C4178d(i10);
    }

    @Override
    public void toArray(float[] fArr) {
        int size = size();
        int length = size - fArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, fArr.length);
        this.f97970b.U8(fArr, length, min);
        b(fArr, 0, min);
        if (fArr.length > size) {
            fArr[size] = this.f97970b.i();
        }
    }

    public C14384d(int i10, float f10) {
        this.f97970b = new C4178d(i10, f10);
    }

    public C14384d(InterfaceC14221d interfaceC14221d) {
        if (interfaceC14221d instanceof C14384d) {
            this.f97970b = new C4178d(((C14384d) interfaceC14221d).f97970b);
            return;
        }
        throw new UnsupportedOperationException("Only support TFloatArrayStack");
    }
}
