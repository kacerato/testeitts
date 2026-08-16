package C6;

import androidx.annotation.NonNull;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class d implements Language {

    public f f2433a;

    public e f2434b;

    public g f2435c = new g();

    public F6.b f2436d;

    public d(F6.b languageConnector) {
        this.f2433a = new f(languageConnector);
        this.f2434b = new e(languageConnector);
    }

    @Override
    @NonNull
    public String getName() {
        return SuffixConstants.EXTENSION_java;
    }

    @Override
    @NonNull
    public LanguageParser getParser() {
        return this.f2434b;
    }

    @Override
    @NonNull
    public SuggestionProvider getProvider() {
        return this.f2433a;
    }

    @Override
    @NonNull
    public LanguageStyler getStyler() {
        return this.f2435c;
    }
}
