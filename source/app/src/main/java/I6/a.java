package I6;

import G6.d;
import androidx.annotation.NonNull;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class a implements Language {

    public d f8874a;

    public G6.c f8875b;

    public b f8876c = new b();

    public F6.b f8877d;

    public a(F6.b languageConnector) {
        this.f8874a = new d(languageConnector);
        this.f8875b = new G6.c(languageConnector);
    }

    @Override
    @NonNull
    public String getName() {
        return SuffixConstants.EXTENSION_java;
    }

    @Override
    @NonNull
    public LanguageParser getParser() {
        return this.f8875b;
    }

    @Override
    @NonNull
    public SuggestionProvider getProvider() {
        return this.f8874a;
    }

    @Override
    @NonNull
    public LanguageStyler getStyler() {
        return this.f8876c;
    }
}
