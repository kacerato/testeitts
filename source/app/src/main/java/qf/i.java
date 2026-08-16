package qf;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.n0;
import pf.o0;

public final class i implements Externalizable {

    @NotNull
    public static final a f107897c = new a(null);

    public static final long f107898d = 0;

    @NotNull
    public Map<?, ?> f107899b;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public i(@NotNull Map<?, ?> map) {
        M.p(map, "map");
        this.f107899b = map;
    }

    public final Object a() {
        return this.f107899b;
    }

    @Override
    public void readExternal(@NotNull ObjectInput input) {
        M.p(input, "input");
        byte readByte = input.readByte();
        if (readByte != 0) {
            throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte));
        }
        int readInt = input.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        Map h10 = n0.h(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            h10.put(input.readObject(), input.readObject());
        }
        this.f107899b = n0.d(h10);
    }

    @Override
    public void writeExternal(@NotNull ObjectOutput output) {
        M.p(output, "output");
        output.writeByte(0);
        output.writeInt(this.f107899b.size());
        for (Map.Entry<?, ?> entry : this.f107899b.entrySet()) {
            output.writeObject(entry.getKey());
            output.writeObject(entry.getValue());
        }
    }

    public i() {
        this(o0.z());
    }
}
