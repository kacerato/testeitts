package dg;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

@InterfaceC12919a
public final class g implements Externalizable {

    @NotNull
    public static final a f84645d = new a(null);

    public static final long f84646e = 0;

    public long f84647b;

    public long f84648c;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public a() {
        }
    }

    public g(long j10, long j11) {
        this.f84647b = j10;
        this.f84648c = j11;
    }

    public final long a() {
        return this.f84648c;
    }

    public final long b() {
        return this.f84647b;
    }

    public final Object c() {
        return c.f84637d.b(this.f84647b, this.f84648c);
    }

    public final void d(long j10) {
        this.f84648c = j10;
    }

    public final void e(long j10) {
        this.f84647b = j10;
    }

    @Override
    public void readExternal(@NotNull ObjectInput input) {
        M.p(input, "input");
        this.f84647b = input.readLong();
        this.f84648c = input.readLong();
    }

    @Override
    public void writeExternal(@NotNull ObjectOutput output) {
        M.p(output, "output");
        output.writeLong(this.f84647b);
        output.writeLong(this.f84648c);
    }

    public g() {
        this(0L, 0L);
    }
}
