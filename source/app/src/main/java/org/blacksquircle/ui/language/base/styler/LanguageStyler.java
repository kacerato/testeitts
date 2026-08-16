package org.blacksquircle.ui.language.base.styler;

import java.util.List;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.jetbrains.annotations.NotNull;

public interface LanguageStyler {
    @NotNull
    List<SyntaxHighlightSpan> execute(@NotNull String str, @NotNull ColorScheme colorScheme);
}
