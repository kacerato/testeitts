package org.blacksquircle.ui.language.java;

import ag.C3617K;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.blacksquircle.ui.language.java.parser.JavaParser;
import org.blacksquircle.ui.language.java.provider.JavaProvider;
import org.blacksquircle.ui.language.java.styler.JavaStyler;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.jetbrains.annotations.NotNull;

public final class JavaLanguage implements Language {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String FILE_EXTENSION = ".java";

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        public final boolean supportFormat(@NotNull String fileName) {
            M.p(fileName, "fileName");
            return C3617K.c2(fileName, ".java", true);
        }

        private Companion() {
        }
    }

    @Override
    @NotNull
    public String getName() {
        return SuffixConstants.EXTENSION_java;
    }

    @Override
    @NotNull
    public LanguageParser getParser() {
        return JavaParser.Companion.getInstance();
    }

    @Override
    @NotNull
    public SuggestionProvider getProvider() {
        return JavaProvider.Companion.getInstance();
    }

    @Override
    @NotNull
    public LanguageStyler getStyler() {
        return JavaStyler.Companion.getInstance();
    }
}
