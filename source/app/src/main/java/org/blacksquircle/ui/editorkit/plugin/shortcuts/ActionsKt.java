package org.blacksquircle.ui.editorkit.plugin.shortcuts;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginContainer;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.shortcuts.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.shortcuts.ShortcutsPlugin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ActionsKt {
    @Nullable
    public static final OnShortcutListener getOnShortcutListener(@NotNull PluginContainer pluginContainer) {
        M.p(pluginContainer, "<this>");
        ShortcutsPlugin shortcutsPlugin = (ShortcutsPlugin) pluginContainer.findPlugin(ShortcutsPlugin.PLUGIN_ID);
        if (shortcutsPlugin != null) {
            return shortcutsPlugin.getOnShortcutListener();
        }
        return null;
    }

    public static final void setOnShortcutListener(@NotNull PluginContainer pluginContainer, @Nullable OnShortcutListener onShortcutListener) {
        M.p(pluginContainer, "<this>");
        ShortcutsPlugin shortcutsPlugin = (ShortcutsPlugin) pluginContainer.findPlugin(ShortcutsPlugin.PLUGIN_ID);
        if (shortcutsPlugin != null) {
            shortcutsPlugin.setOnShortcutListener(onShortcutListener);
        }
    }

    public static final void shortcuts(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super ShortcutsPlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new ShortcutsPlugin(), block);
    }

    public static void shortcuts$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 shortcuts$lambda$0;
                    shortcuts$lambda$0 = ActionsKt.shortcuts$lambda$0((ShortcutsPlugin) obj2);
                    return shortcuts$lambda$0;
                }
            };
        }
        shortcuts(pluginSupplier, lVar);
    }

    public static final P0 shortcuts$lambda$0(ShortcutsPlugin shortcutsPlugin) {
        M.p(shortcutsPlugin, "<this>");
        return P0.f98194a;
    }
}
