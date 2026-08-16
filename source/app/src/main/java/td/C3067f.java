package Td;

import be.InterfaceC3868a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class C3067f extends AbstractList<Byte> implements List<Byte>, Externalizable, Cloneable {

    public static final long f24500c = 1;

    public InterfaceC3868a f24501b;

    public C3067f() {
    }

    @Override
    public void add(int i10, Byte b10) {
        this.f24501b.n8(i10, b10.byteValue());
    }

    @Override
    public Byte get(int i10) {
        byte b10 = this.f24501b.get(i10);
        if (b10 == this.f24501b.i()) {
            return null;
        }
        return Byte.valueOf(b10);
    }

    public InterfaceC3868a k() {
        return this.f24501b;
    }

    @Override
    public Byte remove(int i10) {
        byte B02 = this.f24501b.B0(i10);
        if (B02 == this.f24501b.i()) {
            return null;
        }
        return Byte.valueOf(B02);
    }

    @Override
    public Byte set(int i10, Byte b10) {
        byte b11 = this.f24501b.set(i10, b10.byteValue());
        if (b11 == this.f24501b.i()) {
            return null;
        }
        return Byte.valueOf(b11);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24501b = (InterfaceC3868a) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24501b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24501b);
    }

    public C3067f(InterfaceC3868a interfaceC3868a) {
        this.f24501b = interfaceC3868a;
    }
}
