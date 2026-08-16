package D6;

import androidx.annotation.NonNull;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;

public class b implements Language {

    public d f4841a;

    public c f4842b;

    public e f4843c = new e();

    public F6.b f4844d;

    public b(F6.b languageConnector) {
        this.f4841a = new d(languageConnector);
        this.f4842b = new c(languageConnector);
    }

    @Override
    @NonNull
    public String getName() {
        return "lua";
    }

    @Override
    @NonNull
    public LanguageParser getParser() {
        return this.f4842b;
    }

    @Override
    @NonNull
    public SuggestionProvider getProvider() {
        return this.f4841a;
    }

    @Override
    @NonNull
    public LanguageStyler getStyler() {
        return this.f4843c;
    }
}
