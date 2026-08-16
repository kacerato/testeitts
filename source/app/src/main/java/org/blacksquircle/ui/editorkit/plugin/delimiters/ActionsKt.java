package org.blacksquircle.ui.editorkit.plugin.delimiters;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.delimiters.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.delimiters.BracketsHighlightPlugin;
import org.jetbrains.annotations.NotNull;

public final class ActionsKt {
    public static final void highlightDelimiters(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super BracketsHighlightPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new BracketsHighlightPlugin(), block);
    }

    public static void highlightDelimiters$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 highlightDelimiters$lambda$0;
                    highlightDelimiters$lambda$0 = ActionsKt.highlightDelimiters$lambda$0((BracketsHighlightPlugin) obj2);
                    return highlightDelimiters$lambda$0;
                }
            };
        }
        highlightDelimiters(pluginSupplier, lVar);
    }

    public static final P0 highlightDelimiters$lambda$0(BracketsHighlightPlugin bracketsHighlightPlugin) {
        M.p(bracketsHighlightPlugin, "<this>");
        return P0.f98194a;
    }
}
