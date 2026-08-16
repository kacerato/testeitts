package org.blacksquircle.ui.editorkit.model;

import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FindParams {
    private final boolean matchCase;

    @NotNull
    private final String query;
    private final boolean regex;
    private final boolean wordsOnly;

    public FindParams(@NotNull String query, boolean z10, boolean z11, boolean z12) {
        M.p(query, "query");
        this.query = query;
        this.regex = z10;
        this.matchCase = z11;
        this.wordsOnly = z12;
    }

    public static FindParams copy$default(FindParams findParams, String str, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = findParams.query;
        }
        if ((i10 & 2) != 0) {
            z10 = findParams.regex;
        }
        if ((i10 & 4) != 0) {
            z11 = findParams.matchCase;
        }
        if ((i10 & 8) != 0) {
            z12 = findParams.wordsOnly;
        }
        return findParams.copy(str, z10, z11, z12);
    }

    @NotNull
    public final String component1() {
        return this.query;
    }

    public final boolean component2() {
        return this.regex;
    }

    public final boolean component3() {
        return this.matchCase;
    }

    public final boolean component4() {
        return this.wordsOnly;
    }

    @NotNull
    public final FindParams copy(@NotNull String query, boolean z10, boolean z11, boolean z12) {
        M.p(query, "query");
        return new FindParams(query, z10, z11, z12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FindParams)) {
            return false;
        }
        FindParams findParams = (FindParams) obj;
        return M.g(this.query, findParams.query) && this.regex == findParams.regex && this.matchCase == findParams.matchCase && this.wordsOnly == findParams.wordsOnly;
    }

    public final boolean getMatchCase() {
        return this.matchCase;
    }

    @NotNull
    public final String getQuery() {
        return this.query;
    }

    public final boolean getRegex() {
        return this.regex;
    }

    public final boolean getWordsOnly() {
        return this.wordsOnly;
    }

    public int hashCode() {
        return (((((this.query.hashCode() * 31) + Boolean.hashCode(this.regex)) * 31) + Boolean.hashCode(this.matchCase)) * 31) + Boolean.hashCode(this.wordsOnly);
    }

    @NotNull
    public String toString() {
        return "FindParams(query=" + this.query + ", regex=" + this.regex + ", matchCase=" + this.matchCase + ", wordsOnly=" + this.wordsOnly + ')';
    }
}
