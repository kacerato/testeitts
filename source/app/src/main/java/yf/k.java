package yf;

import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import nf.InterfaceC14441w;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.j;

public final class k {
    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14441w
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final <E extends j.b> E a(@NotNull j.b bVar, @NotNull j.c<E> key) {
        E e10;
        M.p(bVar, "<this>");
        M.p(key, "key");
        if (!(key instanceof AbstractC16184b)) {
            if (bVar.getKey() == key) {
                return bVar;
            }
            return null;
        }
        AbstractC16184b abstractC16184b = (AbstractC16184b) key;
        if (!abstractC16184b.a(bVar.getKey()) || (e10 = (E) abstractC16184b.b(bVar)) == null) {
            return null;
        }
        return e10;
    }

    @InterfaceC14441w
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final j b(@NotNull j.b bVar, @NotNull j.c<?> key) {
        M.p(bVar, "<this>");
        M.p(key, "key");
        if (!(key instanceof AbstractC16184b)) {
            return bVar.getKey() == key ? l.f130251b : bVar;
        }
        AbstractC16184b abstractC16184b = (AbstractC16184b) key;
        return (!abstractC16184b.a(bVar.getKey()) || abstractC16184b.b(bVar) == null) ? bVar : l.f130251b;
    }
}
