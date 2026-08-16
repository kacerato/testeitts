package org.blacksquircle.ui.language.base.provider;

import java.util.Set;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.jetbrains.annotations.NotNull;

public interface SuggestionProvider {
    void clearLines();

    void deleteLine(int i10);

    @NotNull
    Set<Suggestion> getAll(@NotNull String str);

    void processLine(int i10, @NotNull String str);
}
