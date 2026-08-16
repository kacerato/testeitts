package G6;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Set;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.utils.WordsManager;
import org.jetbrains.annotations.NotNull;

public class d implements SuggestionProvider {

    public WordsManager f7655a = new WordsManager();

    public Set<Suggestion> f7656b = new HashSet();

    public F6.b f7657c;

    public d(F6.b languageConnector) {
        this.f7657c = languageConnector;
    }

    @Override
    public void clearLines() {
        this.f7655a.clearLines();
        this.f7656b.clear();
        this.f7657c.e();
    }

    @Override
    public void deleteLine(int i10) {
        this.f7655a.deleteLine(i10);
        this.f7657c.a(i10);
    }

    @Override
    @NonNull
    public Set<Suggestion> getAll(@NotNull String query) {
        return new HashSet(this.f7655a.getWords());
    }

    @Override
    public void processLine(int i10, @NonNull String s10) {
        this.f7655a.processLine(i10, s10);
        if (s10.endsWith(" ")) {
            this.f7656b.clear();
            return;
        }
        if (s10.endsWith(".") || s10.endsWith("(")) {
            this.f7656b.clear();
        } else if (s10.endsWith("()")) {
            this.f7656b.clear();
        }
    }
}
