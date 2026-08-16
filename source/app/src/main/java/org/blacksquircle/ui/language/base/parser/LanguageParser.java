package org.blacksquircle.ui.language.base.parser;

import org.blacksquircle.ui.language.base.model.ParseResult;
import org.jetbrains.annotations.NotNull;

public interface LanguageParser {
    @NotNull
    ParseResult execute(@NotNull String str, @NotNull String str2);
}
