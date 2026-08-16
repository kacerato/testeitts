package Wd;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import oe.InterfaceC14499a;

public abstract class AbstractC3174q<T> extends b0<T> {

    public static final long f27671r = 8766048185963756400L;

    public InterfaceC14499a<? super T> f27672q;

    public AbstractC3174q() {
    }

    @Override
    public boolean I1(Object obj, Object obj2) {
        return obj2 != b0.f27555o && this.f27672q.I1(obj, obj2);
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        objectInput.readByte();
        super.readExternal(objectInput);
        this.f27672q = (InterfaceC14499a) objectInput.readObject();
    }

    @Override
    public int sf(Object obj) {
        return this.f27672q.L9(obj);
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(0);
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.f27672q);
    }

    public AbstractC3174q(InterfaceC14499a<? super T> interfaceC14499a) {
        this.f27672q = interfaceC14499a;
    }

    public AbstractC3174q(InterfaceC14499a<? super T> interfaceC14499a, int i10) {
        super(i10);
        this.f27672q = interfaceC14499a;
    }

    public AbstractC3174q(InterfaceC14499a<? super T> interfaceC14499a, int i10, float f10) {
        super(i10, f10);
        this.f27672q = interfaceC14499a;
    }
}
