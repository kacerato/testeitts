package ne;

import ce.C4177c;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import me.InterfaceC14220c;
import org.apache.commons.math3.geometry.VectorFormat;

public class C14383c implements InterfaceC14220c, Externalizable {

    public static final long f97965c = 1;

    public static final int f97966d = 10;

    public C4177c f97967b;

    public C14383c() {
        this(10);
    }

    @Override
    public void a(double d10) {
        this.f97967b.add(d10);
    }

    public final void b(double[] dArr, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i10 > i11) {
            throw new IllegalArgumentException("from cannot be greater than to");
        }
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            c(dArr, i10, i12);
            i10++;
        }
    }

    public final void c(double[] dArr, int i10, int i11) {
        double d10 = dArr[i10];
        dArr[i10] = dArr[i11];
        dArr[i11] = d10;
    }

    @Override
    public void clear() {
        this.f97967b.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f97967b.equals(((C14383c) obj).f97967b);
    }

    public int hashCode() {
        return this.f97967b.hashCode();
    }

    @Override
    public double i() {
        return this.f97967b.i();
    }

    @Override
    public double peek() {
        return this.f97967b.get(r0.size() - 1);
    }

    @Override
    public double pop() {
        return this.f97967b.B0(r0.size() - 1);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f97967b = (C4177c) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f97967b.size();
    }

    @Override
    public double[] toArray() {
        double[] array = this.f97967b.toArray();
        b(array, 0, size());
        return array;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        for (int size = this.f97967b.size() - 1; size > 0; size--) {
            sb2.append(this.f97967b.get(size));
            sb2.append(", ");
        }
        if (size() > 0) {
            sb2.append(this.f97967b.get(0));
        }
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
        return sb2.toString();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f97967b);
    }

    public C14383c(int i10) {
        this.f97967b = new C4177c(i10);
    }

    @Override
    public void toArray(double[] dArr) {
        int size = size();
        int length = size - dArr.length;
        if (length < 0) {
            length = 0;
        }
        int min = Math.min(size, dArr.length);
        this.f97967b.i3(dArr, length, min);
        b(dArr, 0, min);
        if (dArr.length > size) {
            dArr[size] = this.f97967b.i();
        }
    }

    public C14383c(int i10, double d10) {
        this.f97967b = new C4177c(i10, d10);
    }

    public C14383c(InterfaceC14220c interfaceC14220c) {
        if (interfaceC14220c instanceof C14383c) {
            this.f97967b = new C4177c(((C14383c) interfaceC14220c).f97967b);
            return;
        }
        throw new UnsupportedOperationException("Only support TDoubleArrayStack");
    }
}
