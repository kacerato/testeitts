package Td;

import be.InterfaceC3872e;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class U extends AbstractList<Integer> implements List<Integer>, Externalizable, Cloneable {

    public static final long f24375c = 1;

    public InterfaceC3872e f24376b;

    public U() {
    }

    @Override
    public void add(int i10, Integer num) {
        this.f24376b.M7(i10, num.intValue());
    }

    @Override
    public Integer get(int i10) {
        int i11 = this.f24376b.get(i10);
        if (i11 == this.f24376b.i()) {
            return null;
        }
        return Integer.valueOf(i11);
    }

    public InterfaceC3872e k() {
        return this.f24376b;
    }

    @Override
    public Integer remove(int i10) {
        int B02 = this.f24376b.B0(i10);
        if (B02 == this.f24376b.i()) {
            return null;
        }
        return Integer.valueOf(B02);
    }

    @Override
    public Integer set(int i10, Integer num) {
        int n52 = this.f24376b.n5(i10, num.intValue());
        if (n52 == this.f24376b.i()) {
            return null;
        }
        return Integer.valueOf(n52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24376b = (InterfaceC3872e) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24376b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24376b);
    }

    public U(InterfaceC3872e interfaceC3872e) {
        this.f24376b = interfaceC3872e;
    }
}
