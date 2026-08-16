package Td;

import be.InterfaceC3875h;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.List;

public class e0 extends AbstractList<Long> implements List<Long>, Externalizable, Cloneable {

    public static final long f24498c = 1;

    public InterfaceC3875h f24499b;

    public e0() {
    }

    @Override
    public void add(int i10, Long l10) {
        this.f24499b.N7(i10, l10.longValue());
    }

    @Override
    public Long get(int i10) {
        long j10 = this.f24499b.get(i10);
        if (j10 == this.f24499b.i()) {
            return null;
        }
        return Long.valueOf(j10);
    }

    public InterfaceC3875h k() {
        return this.f24499b;
    }

    @Override
    public Long remove(int i10) {
        long B02 = this.f24499b.B0(i10);
        if (B02 == this.f24499b.i()) {
            return null;
        }
        return Long.valueOf(B02);
    }

    @Override
    public Long set(int i10, Long l10) {
        long o52 = this.f24499b.o5(i10, l10.longValue());
        if (o52 == this.f24499b.i()) {
            return null;
        }
        return Long.valueOf(o52);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        this.f24499b = (InterfaceC3875h) objectInput.readObject();
    }

    @Override
    public int size() {
        return this.f24499b.size();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        objectOutput.writeObject(this.f24499b);
    }

    public e0(InterfaceC3875h interfaceC3875h) {
        this.f24499b = interfaceC3875h;
    }
}
