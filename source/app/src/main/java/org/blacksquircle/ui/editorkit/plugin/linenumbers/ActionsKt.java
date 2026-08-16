package org.blacksquircle.ui.editorkit.plugin.linenumbers;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.linenumbers.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.linenumbers.LineNumbersPlugin;
import org.jetbrains.annotations.NotNull;

public final class ActionsKt {
    public static final void lineNumbers(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super LineNumbersPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new LineNumbersPlugin(), block);
    }

    public static void lineNumbers$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 lineNumbers$lambda$0;
                    lineNumbers$lambda$0 = ActionsKt.lineNumbers$lambda$0((LineNumbersPlugin) obj2);
                    return lineNumbers$lambda$0;
                }
            };
        }
        lineNumbers(pluginSupplier, lVar);
    }

    public static final P0 lineNumbers$lambda$0(LineNumbersPlugin lineNumbersPlugin) {
        M.p(lineNumbersPlugin, "<this>");
        return P0.f98194a;
    }
}
