package A6;

import JAVARuntime.TextScriptingProvider;
import JAVARuntime.TextScriptingSuggestion;
import androidx.annotation.NonNull;
import d8.m;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import o8.InterfaceC14490d;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.jetbrains.annotations.NotNull;

public class a implements SuggestionProvider {

    public TextScriptingProvider f320a;

    public class C0014a implements InterfaceC14490d {

        public final Set f321a;

        public C0014a(final Set val$sets) {
            this.f321a = val$sets;
        }

        @Override
        public void run() {
            List<TextScriptingSuggestion> all = a.this.f320a.getAll();
            if (all != null) {
                for (int i10 = 0; i10 < all.size(); i10++) {
                    this.f321a.add(all.get(i10).convertInternal());
                }
            }
        }
    }

    public a(TextScriptingProvider textScriptingProvider) {
        this.f320a = textScriptingProvider;
    }

    @Override
    public void clearLines() {
        TextScriptingProvider textScriptingProvider = this.f320a;
        if (textScriptingProvider != null) {
            textScriptingProvider.clearLines();
        }
    }

    @Override
    public void deleteLine(int lineNumber) {
        TextScriptingProvider textScriptingProvider = this.f320a;
        if (textScriptingProvider != null) {
            textScriptingProvider.deleteLine(lineNumber);
        }
    }

    @Override
    @NonNull
    public Set<Suggestion> getAll(@NotNull String query) {
        HashSet hashSet = new HashSet();
        if (this.f320a != null) {
            m.d(new C0014a(hashSet));
        }
        return hashSet;
    }

    @Override
    public void processLine(int lineNumber, @NonNull String text) {
        TextScriptingProvider textScriptingProvider = this.f320a;
        if (textScriptingProvider != null) {
            textScriptingProvider.processLine(lineNumber, text);
        }
    }
}
