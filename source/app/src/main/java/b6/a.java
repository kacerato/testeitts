package B6;

import androidx.annotation.NonNull;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class a implements Language {

    public c f1565a;

    public b f1566b;

    public d f1567c = new d();

    public F6.b f1568d;

    public a(F6.b languageConnector) {
        this.f1565a = new c(languageConnector);
        this.f1566b = new b(languageConnector);
    }

    @Override
    @NonNull
    public String getName() {
        return SuffixConstants.EXTENSION_java;
    }

    @Override
    @NonNull
    public LanguageParser getParser() {
        return this.f1566b;
    }

    @Override
    @NonNull
    public SuggestionProvider getProvider() {
        return this.f1565a;
    }

    @Override
    @NonNull
    public LanguageStyler getStyler() {
        return this.f1567c;
    }
}
