package Td;

import be.InterfaceC3876i;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class v0 extends AbstractList<Short> implements List<Short>, Externalizable, Cloneable {

    public static final long f24768c = 1;

    public InterfaceC3876i f24769b;

    public v0() {
    }

    @Override
    public void add(int i10, Short sh2) {
        this.f24769b.O7(i10, sh2.shortValue());
    }

    @Override
    public Short get(int i10) {
        short s10 = this.f24769b.get(i10);
        if (s10 == this.f24769b.i()) {
            return null;
        }
        return Short.valueOf(s10);
    }

    public InterfaceC3876i k() {
        return this.f24769b;
    }

    @Override
    public Short remove(int i10) {
        short B02 = this.f24769b.B0(i10);
        if (B02 == this.f24769b.i()) {
            return null;
        }
        return Short.valueOf(B02);
    }

    @Override
    public Short set(int i10, Short sh2) {
        short t52 = this.f24769b.t5(i10, sh2.shortValue());
        if (t52 == this.f24769b.i()) {
            return null;
        }
        return Short.valueOf(t52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24769b = (InterfaceC3876i) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24769b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24769b);
    }

    public v0(InterfaceC3876i interfaceC3876i) {
        this.f24769b = interfaceC3876i;
    }
}
