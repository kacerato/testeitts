package org.blacksquircle.ui.editorkit.plugin.autocomplete;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.base.PluginContainer;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ActionsKt {
    public static final void codeCompletion(@NotNull PluginSupplier pluginSupplier, @NotNull l<? super AutoCompletePlugin, P0> block) {
        M.p(pluginSupplier, "<this>");
        M.p(block, "block");
        pluginSupplier.plugin(new AutoCompletePlugin(), block);
    }

    public static void codeCompletion$default(PluginSupplier pluginSupplier, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            lVar = new l() {
                @Override
                public final Object invoke(Object obj2) {
                    P0 codeCompletion$lambda$0;
                    codeCompletion$lambda$0 = ActionsKt.codeCompletion$lambda$0((AutoCompletePlugin) obj2);
                    return codeCompletion$lambda$0;
                }
            };
        }
        codeCompletion(pluginSupplier, lVar);
    }

    public static final P0 codeCompletion$lambda$0(AutoCompletePlugin autoCompletePlugin) {
        M.p(autoCompletePlugin, "<this>");
        return P0.f98194a;
    }

    @Nullable
    public static final SuggestionAdapter getSuggestionAdapter(@NotNull PluginContainer pluginContainer) {
        M.p(pluginContainer, "<this>");
        AutoCompletePlugin autoCompletePlugin = (AutoCompletePlugin) pluginContainer.findPlugin(AutoCompletePlugin.PLUGIN_ID);
        if (autoCompletePlugin != null) {
            return autoCompletePlugin.getSuggestionAdapter();
        }
        return null;
    }

    public static final void setSuggestionAdapter(@NotNull PluginContainer pluginContainer, @Nullable SuggestionAdapter suggestionAdapter) {
        M.p(pluginContainer, "<this>");
        AutoCompletePlugin autoCompletePlugin = (AutoCompletePlugin) pluginContainer.findPlugin(AutoCompletePlugin.PLUGIN_ID);
        if (autoCompletePlugin != null) {
            autoCompletePlugin.setSuggestionAdapter(suggestionAdapter);
        }
    }
}
