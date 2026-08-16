package xf;

import nf.InterfaceC14392B;
import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Ef.b
@InterfaceC16105f
@InterfaceC14422l0(version = "1.3")
public interface InterfaceC16102c {

    public static final class a {
        public static InterfaceC16100a a(InterfaceC16102c interfaceC16102c, InterfaceC14392B interfaceC14392B, EnumC16108i enumC16108i, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: callsInPlace");
            }
            if ((i10 & 2) != 0) {
                enumC16108i = EnumC16108i.UNKNOWN;
            }
            return interfaceC16102c.f(interfaceC14392B, enumC16108i);
        }
    }

    @Ef.b
    @InterfaceC14394D
    @NotNull
    InterfaceC16109j a();

    @Ef.b
    @InterfaceC14394D
    @NotNull
    InterfaceC16109j b(@Nullable Object obj);

    @Ef.b
    @NotNull
    @InterfaceC16106g
    <R> InterfaceC16107h c(boolean z10, @NotNull InterfaceC14392B<? extends R> interfaceC14392B);

    @Ef.b
    @InterfaceC14394D
    @NotNull
    InterfaceC16110k d();

    @Ef.b
    @InterfaceC16106g
    void e(boolean z10, @NotNull InterfaceC16110k interfaceC16110k);

    @Ef.b
    @InterfaceC14394D
    @NotNull
    <R> InterfaceC16100a f(@NotNull InterfaceC14392B<? extends R> interfaceC14392B, @NotNull EnumC16108i enumC16108i);
}
