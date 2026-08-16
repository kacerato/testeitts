package bg;

import Lf.j;
import ag.C3633o;
import ag.InterfaceC3634p;
import ag.InterfaceC3635q;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "RegexExtensionsJDK8Kt")
public final class C3887a {
    @InterfaceC14422l0(version = "1.2")
    @Nullable
    public static final C3633o a(@NotNull InterfaceC3634p interfaceC3634p, @NotNull String name) {
        M.p(interfaceC3634p, "<this>");
        M.p(name, "name");
        InterfaceC3635q interfaceC3635q = interfaceC3634p instanceof InterfaceC3635q ? (InterfaceC3635q) interfaceC3634p : null;
        if (interfaceC3635q != null) {
            return interfaceC3635q.get(name);
        }
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }
}
