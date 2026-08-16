package F6;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.autocomplete.SuggestionAdapter;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a extends SuggestionAdapter {

    public static final class C0126a extends SuggestionAdapter.SuggestionViewHolder {

        @NotNull
        public final TextView f6652a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0126a(@NotNull View itemView) {
            super(itemView);
            M.p(itemView, "itemView");
            View findViewById = itemView.findViewById(R.id.title);
            M.o(findViewById, "findViewById(...)");
            this.f6652a = (TextView) findViewById;
        }

        @Override
        public void bind(@Nullable Suggestion suggestion, @NotNull String query) {
            M.p(query, "query");
            this.f6652a.setText(suggestion != null ? suggestion.getText() : null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context, R.layout.codeview_line_suggestion);
        M.p(context, "context");
    }

    @Override
    @NotNull
    public SuggestionAdapter.SuggestionViewHolder createViewHolder(@NotNull ViewGroup parent) {
        M.p(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.codeview_line_suggestion, parent, false);
        M.m(inflate);
        return new C0126a(inflate);
    }
}
