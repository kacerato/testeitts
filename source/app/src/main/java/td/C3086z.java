package Td;

import be.InterfaceC3870c;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class C3086z extends AbstractList<Double> implements List<Double>, Externalizable, Cloneable {

    public static final long f24819c = 1;

    public InterfaceC3870c f24820b;

    public C3086z() {
    }

    @Override
    public void add(int i10, Double d10) {
        this.f24820b.i8(i10, d10.doubleValue());
    }

    @Override
    public Double get(int i10) {
        double d10 = this.f24820b.get(i10);
        if (d10 == this.f24820b.i()) {
            return null;
        }
        return Double.valueOf(d10);
    }

    public InterfaceC3870c k() {
        return this.f24820b;
    }

    @Override
    public Double remove(int i10) {
        double B02 = this.f24820b.B0(i10);
        if (B02 == this.f24820b.i()) {
            return null;
        }
        return Double.valueOf(B02);
    }

    @Override
    public Double set(int i10, Double d10) {
        double g52 = this.f24820b.g5(i10, d10.doubleValue());
        if (g52 == this.f24820b.i()) {
            return null;
        }
        return Double.valueOf(g52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24820b = (InterfaceC3870c) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24820b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24820b);
    }

    public C3086z(InterfaceC3870c interfaceC3870c) {
        this.f24820b = interfaceC3870c;
    }
}
