package C6;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.jetbrains.annotations.NotNull;

public final class b {
    public static final void b(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super h, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new h(), block);
    }

    public static void c(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 d10;
                    d10 = b.d((h) obj2);
                    return d10;
                }
            };
        }
        b(pluginSupplier, lVar);
    }

    public static final P0 d(h hVar) {
        M.p(hVar, "<this>");
        return P0.f98194a;
    }
}
