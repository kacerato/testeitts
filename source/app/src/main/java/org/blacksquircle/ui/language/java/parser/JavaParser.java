package org.blacksquircle.ui.language.java.parser;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.exception.ParseException;
import org.blacksquircle.ui.language.base.model.ParseResult;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class JavaParser implements LanguageParser {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private static JavaParser javaParser;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @NotNull
        public final JavaParser getInstance() {
            JavaParser javaParser = JavaParser.javaParser;
            if (javaParser != null) {
                return javaParser;
            }
            JavaParser javaParser2 = new JavaParser(null);
            Companion companion = JavaParser.Companion;
            JavaParser.javaParser = javaParser2;
            return javaParser2;
        }

        private Companion() {
        }
    }

    public JavaParser(C14026x c14026x) {
        this();
    }

    @Override
    @NotNull
    public ParseResult execute(@NotNull String name, @NotNull String source) {
        M.p(name, "name");
        M.p(source, "source");
        return new ParseResult(new ParseException("Unable to parse unsupported language", 0, 0));
    }

    private JavaParser() {
    }
}
