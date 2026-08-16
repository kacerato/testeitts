package B6;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Set;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.utils.WordsManager;
import org.jetbrains.annotations.NotNull;

public class c implements SuggestionProvider {

    public WordsManager f1570a = new WordsManager();

    public Set<Suggestion> f1571b = new HashSet();

    public F6.b f1572c;

    public c(F6.b languageConnector) {
        this.f1572c = languageConnector;
    }

    @Override
    public void clearLines() {
        this.f1570a.clearLines();
        this.f1571b.clear();
        this.f1572c.e();
    }

    @Override
    public void deleteLine(int i10) {
        this.f1570a.deleteLine(i10);
        this.f1572c.a(i10);
    }

    @Override
    @NonNull
    public Set<Suggestion> getAll(@NotNull String query) {
        return new HashSet(this.f1570a.getWords());
    }

    @Override
    public void processLine(int i10, @NonNull String s10) {
        this.f1570a.processLine(i10, s10);
        if (s10.endsWith(" ")) {
            this.f1571b.clear();
            return;
        }
        if (s10.endsWith(".") || s10.endsWith("(")) {
            this.f1571b.clear();
        } else if (s10.endsWith("()")) {
            this.f1571b.clear();
        }
    }
}
