package kotlin.io;

import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class f extends ByteArrayOutputStream {
    public f(int i10) {
        super(i10);
    }

    @NotNull
    public final byte[] c() {
        byte[] buf = this.buf;
        M.o(buf, "buf");
        return buf;
    }
}
