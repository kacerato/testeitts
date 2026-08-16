package Hf;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;

public class h {
    @f
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final InputStream a(@NotNull InputStream inputStream, @NotNull a base64) {
        M.p(inputStream, "<this>");
        M.p(base64, "base64");
        return new d(inputStream, base64);
    }

    @f
    @InterfaceC14422l0(version = "1.8")
    @NotNull
    public static final OutputStream b(@NotNull OutputStream outputStream, @NotNull a base64) {
        M.p(outputStream, "<this>");
        M.p(base64, "base64");
        return new e(outputStream, base64);
    }
}
