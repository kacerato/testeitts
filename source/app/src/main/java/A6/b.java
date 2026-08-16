package A6;

import JAVARuntime.TextScriptingStyler;
import JAVARuntime.TextScriptingSyntaxHighlightSpan;
import androidx.annotation.NonNull;
import d8.m;
import java.util.LinkedList;
import java.util.List;
import o8.InterfaceC14490d;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.blacksquircle.ui.language.base.span.SyntaxHighlightSpan;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;

public class b implements LanguageStyler {

    public TextScriptingStyler f323a;

    public c f324b;

    public class a implements InterfaceC14490d {

        public final String f325a;

        public final List f326b;

        public a(final String val$source, final List val$highlightSpans) {
            this.f325a = val$source;
            this.f326b = val$highlightSpans;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            LinkedList linkedList = new LinkedList();
            b bVar = b.this;
            bVar.f323a.execute(this.f325a, bVar.f324b.getTheme(), linkedList);
            for (int i10 = 0; i10 < linkedList.size(); i10++) {
                TextScriptingSyntaxHighlightSpan textScriptingSyntaxHighlightSpan = (TextScriptingSyntaxHighlightSpan) linkedList.get(i10);
                if (textScriptingSyntaxHighlightSpan != null) {
                    this.f326b.add(new SyntaxHighlightSpan(textScriptingSyntaxHighlightSpan.getSpan().convertInternal(), textScriptingSyntaxHighlightSpan.start, textScriptingSyntaxHighlightSpan.end));
                }
            }
        }
    }

    public b(TextScriptingStyler textScriptingStyler, c listener) {
        this.f323a = textScriptingStyler;
        this.f324b = listener;
    }

    @Override
    @NonNull
    public List<SyntaxHighlightSpan> execute(@NonNull String source, @NonNull ColorScheme scheme) {
        LinkedList linkedList = new LinkedList();
        if (this.f323a != null) {
            m.d(new a(source, linkedList));
        }
        return linkedList;
    }
}
