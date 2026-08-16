package org.blacksquircle.ui.editorkit.plugin.autoindent;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.autoindent.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.autoindent.AutoIndentPlugin;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.jetbrains.annotations.NotNull;

public final class ActionsKt {
    public static final void autoIndentation(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super AutoIndentPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new AutoIndentPlugin(), block);
    }

    public static void autoIndentation$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 autoIndentation$lambda$0;
                    autoIndentation$lambda$0 = ActionsKt.autoIndentation$lambda$0((AutoIndentPlugin) obj2);
                    return autoIndentation$lambda$0;
                }
            };
        }
        autoIndentation(pluginSupplier, lVar);
    }

    public static final P0 autoIndentation$lambda$0(AutoIndentPlugin autoIndentPlugin) {
        M.p(autoIndentPlugin, "<this>");
        return P0.f98194a;
    }
}
