package org.blacksquircle.ui.editorkit.plugin.dirtytext;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginContainer;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.dirtytext.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.dirtytext.DirtyTextPlugin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ActionsKt {
    public static final void changeDetector(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super DirtyTextPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new DirtyTextPlugin(), block);
    }

    public static void changeDetector$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 changeDetector$lambda$0;
                    changeDetector$lambda$0 = ActionsKt.changeDetector$lambda$0((DirtyTextPlugin) obj2);
                    return changeDetector$lambda$0;
                }
            };
        }
        changeDetector(pluginSupplier, lVar);
    }

    public static final P0 changeDetector$lambda$0(DirtyTextPlugin dirtyTextPlugin) {
        M.p(dirtyTextPlugin, "<this>");
        return P0.f98194a;
    }

    @Nullable
    public static final OnChangeListener getOnChangeListener(@NotNull PluginContainer pluginContainer) {
        M.p(pluginContainer, "<this>");
        DirtyTextPlugin dirtyTextPlugin = (DirtyTextPlugin) pluginContainer.findPlugin(DirtyTextPlugin.PLUGIN_ID);
        if (dirtyTextPlugin != null) {
            return dirtyTextPlugin.getOnChangeListener();
        }
        return null;
    }

    public static final void setOnChangeListener(@NotNull PluginContainer pluginContainer, @Nullable OnChangeListener onChangeListener) {
        M.p(pluginContainer, "<this>");
        DirtyTextPlugin dirtyTextPlugin = (DirtyTextPlugin) pluginContainer.findPlugin(DirtyTextPlugin.PLUGIN_ID);
        if (dirtyTextPlugin != null) {
            dirtyTextPlugin.setOnChangeListener(onChangeListener);
        }
    }
}
