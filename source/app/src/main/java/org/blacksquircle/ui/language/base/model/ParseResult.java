package org.blacksquircle.ui.language.base.model;

import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.exception.ParseException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class ParseResult {

    @Nullable
    private final ParseException exception;

    public ParseResult(@Nullable ParseException parseException) {
        this.exception = parseException;
    }

    public static ParseResult copy$default(ParseResult parseResult, ParseException parseException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            parseException = parseResult.exception;
        }
        return parseResult.copy(parseException);
    }

    @Nullable
    public final ParseException component1() {
        return this.exception;
    }

    @NotNull
    public final ParseResult copy(@Nullable ParseException parseException) {
        return new ParseResult(parseException);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ParseResult) && M.g(this.exception, ((ParseResult) obj).exception);
    }

    @Nullable
    public final ParseException getException() {
        return this.exception;
    }

    public int hashCode() {
        ParseException parseException = this.exception;
        if (parseException == null) {
            return 0;
        }
        return parseException.hashCode();
    }

    @NotNull
    public String toString() {
        return "ParseResult(exception=" + ((Object) this.exception) + ')';
    }
}
