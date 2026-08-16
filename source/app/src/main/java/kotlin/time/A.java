package kotlin.time;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class A implements Externalizable {

    @NotNull
    public static final a f95819d = new a(null);

    public static final long f95820e = 0;

    public long f95821b;

    public int f95822c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public A(long j10, int i10) {
        this.f95821b = j10;
        this.f95822c = i10;
    }

    public final long a() {
        return this.f95821b;
    }

    public final int b() {
        return this.f95822c;
    }

    public final Object c() {
        return q.f95889d.b(this.f95821b, this.f95822c);
    }

    public final void d(long j10) {
        this.f95821b = j10;
    }

    public final void e(int i10) {
        this.f95822c = i10;
    }

    @Override
    public void readExternal(@NotNull ObjectInput input) {
        M.p(input, "input");
        this.f95821b = input.readLong();
        this.f95822c = input.readInt();
    }

    @Override
    public void writeExternal(@NotNull ObjectOutput output) {
        M.p(output, "output");
        output.writeLong(this.f95821b);
        output.writeInt(this.f95822c);
    }

    public A() {
        this(0L, 0);
    }
}
