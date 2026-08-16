package Td;

import be.InterfaceC3869b;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class C3077p extends AbstractList<Character> implements List<Character>, Externalizable, Cloneable {

    public static final long f24663c = 1;

    public InterfaceC3869b f24664b;

    public C3077p() {
    }

    @Override
    public void add(int i10, Character ch2) {
        this.f24664b.o8(i10, ch2.charValue());
    }

    @Override
    public Character get(int i10) {
        char c10 = this.f24664b.get(i10);
        if (c10 == this.f24664b.i()) {
            return null;
        }
        return Character.valueOf(c10);
    }

    public InterfaceC3869b k() {
        return this.f24664b;
    }

    @Override
    public Character remove(int i10) {
        char B02 = this.f24664b.B0(i10);
        if (B02 == this.f24664b.i()) {
            return null;
        }
        return Character.valueOf(B02);
    }

    @Override
    public Character set(int i10, Character ch2) {
        char b52 = this.f24664b.b5(i10, ch2.charValue());
        if (b52 == this.f24664b.i()) {
            return null;
        }
        return Character.valueOf(b52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24664b = (InterfaceC3869b) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24664b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24664b);
    }

    public C3077p(InterfaceC3869b interfaceC3869b) {
        this.f24664b = interfaceC3869b;
    }
}
