package C6;

import androidx.annotation.NonNull;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.jetbrains.annotations.NotNull;

public class f implements SuggestionProvider {

    public F6.b f2438a;

    public final AtomicBoolean f2439b = new AtomicBoolean();

    public f(F6.b languageConnector) {
        this.f2438a = languageConnector;
    }

    public final JavaMetaInfo a() {
        return this.f2438a.f();
    }

    @Override
    public void clearLines() {
        this.f2438a.e();
    }

    @Override
    public void deleteLine(int i10) {
        this.f2438a.a(i10);
    }

    @Override
    @NonNull
    public Set<Suggestion> getAll(@NotNull String query) {
        return new HashSet();
    }

    @Override
    public void processLine(int lineIndex, @NonNull String s10) {
    }
}
