package org.blacksquircle.ui.language.java.provider;

import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.utils.WordsManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class JavaProvider implements SuggestionProvider {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private static JavaProvider javaProvider;

    @NotNull
    private final WordsManager wordsManager;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @NotNull
        public final JavaProvider getInstance() {
            JavaProvider javaProvider = JavaProvider.javaProvider;
            if (javaProvider != null) {
                return javaProvider;
            }
            JavaProvider javaProvider2 = new JavaProvider(null);
            Companion companion = JavaProvider.Companion;
            JavaProvider.javaProvider = javaProvider2;
            return javaProvider2;
        }

        private Companion() {
        }
    }

    public JavaProvider(C14026x c14026x) {
        this();
    }

    @Override
    public void clearLines() {
        this.wordsManager.clearLines();
    }

    @Override
    public void deleteLine(int i10) {
        this.wordsManager.deleteLine(i10);
    }

    @Override
    @NotNull
    public Set<Suggestion> getAll(@NotNull String query) {
        M.p(query, "query");
        return this.wordsManager.getWords();
    }

    @Override
    public void processLine(int i10, @NotNull String text) {
        M.p(text, "text");
        this.wordsManager.processLine(i10, text);
    }

    private JavaProvider() {
        this.wordsManager = new WordsManager();
    }
}
