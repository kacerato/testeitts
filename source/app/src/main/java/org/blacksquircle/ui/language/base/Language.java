package org.blacksquircle.ui.language.base;

import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.jetbrains.annotations.NotNull;

public interface Language {
    @NotNull
    String getName();

    @NotNull
    LanguageParser getParser();

    @NotNull
    SuggestionProvider getProvider();

    @NotNull
    LanguageStyler getStyler();
}
