package G6;

import androidx.annotation.NonNull;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public class a implements Language {

    public d f7615a;

    public c f7616b;

    public e f7617c = new e();

    public F6.b f7618d;

    public a(F6.b languageConnector) {
        this.f7615a = new d(languageConnector);
        this.f7616b = new c(languageConnector);
    }

    @Override
    @NonNull
    public String getName() {
        return SuffixConstants.EXTENSION_java;
    }

    @Override
    @NonNull
    public LanguageParser getParser() {
        return this.f7616b;
    }

    @Override
    @NonNull
    public SuggestionProvider getProvider() {
        return this.f7615a;
    }

    @Override
    @NonNull
    public LanguageStyler getStyler() {
        return this.f7617c;
    }
}
