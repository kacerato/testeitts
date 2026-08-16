package Td;

import be.InterfaceC3871d;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class J extends AbstractList<Float> implements List<Float>, Externalizable, Cloneable {

    public static final long f24297c = 1;

    public InterfaceC3871d f24298b;

    public J() {
    }

    @Override
    public void add(int i10, Float f10) {
        this.f24298b.l8(i10, f10.floatValue());
    }

    @Override
    public Float get(int i10) {
        float f10 = this.f24298b.get(i10);
        if (f10 == this.f24298b.i()) {
            return null;
        }
        return Float.valueOf(f10);
    }

    public InterfaceC3871d k() {
        return this.f24298b;
    }

    @Override
    public Float remove(int i10) {
        float B02 = this.f24298b.B0(i10);
        if (B02 == this.f24298b.i()) {
            return null;
        }
        return Float.valueOf(B02);
    }

    @Override
    public Float set(int i10, Float f10) {
        float l52 = this.f24298b.l5(i10, f10.floatValue());
        if (l52 == this.f24298b.i()) {
            return null;
        }
        return Float.valueOf(l52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24298b = (InterfaceC3871d) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24298b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24298b);
    }

    public J(InterfaceC3871d interfaceC3871d) {
        this.f24298b = interfaceC3871d;
    }
}
