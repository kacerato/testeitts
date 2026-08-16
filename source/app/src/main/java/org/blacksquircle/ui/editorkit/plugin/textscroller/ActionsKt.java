package org.blacksquircle.ui.editorkit.plugin.textscroller;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.textscroller.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.textscroller.TextScrollerPlugin;
import org.jetbrains.annotations.NotNull;

public final class ActionsKt {
    public static final void textScroller(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super TextScrollerPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new TextScrollerPlugin(), block);
    }

    public static void textScroller$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 textScroller$lambda$0;
                    textScroller$lambda$0 = ActionsKt.textScroller$lambda$0((TextScrollerPlugin) obj2);
                    return textScroller$lambda$0;
                }
            };
        }
        textScroller(pluginSupplier, lVar);
    }

    public static final P0 textScroller$lambda$0(TextScrollerPlugin textScrollerPlugin) {
        M.p(textScrollerPlugin, "<this>");
        return P0.f98194a;
    }
}
