package org.blacksquircle.ui.editorkit.plugin.autocomplete;

import ag.C3617K;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class SuggestionAdapter extends ArrayAdapter<Suggestion> {

    @Nullable
    private String queryText;

    @Nullable
    private SuggestionProvider suggestionProvider;

    public static abstract class SuggestionViewHolder {

        @NotNull
        private final View itemView;

        public SuggestionViewHolder(@NotNull View itemView) {
            M.p(itemView, "itemView");
            this.itemView = itemView;
        }

        public abstract void bind(@Nullable Suggestion suggestion, @NotNull String str);

        @NotNull
        public final View getItemView() {
            return this.itemView;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestionAdapter(@NotNull Context context, int i10) {
        super(context, i10);
        M.p(context, "context");
    }

    @NotNull
    public abstract SuggestionViewHolder createViewHolder(@NotNull ViewGroup viewGroup);

    @Override
    @NotNull
    public Filter getFilter() {
        return new Filter() {
            private final List<Suggestion> suggestions = new ArrayList();

            @Override
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                SuggestionProvider suggestionProvider;
                this.suggestions.clear();
                suggestionProvider = SuggestionAdapter.this.suggestionProvider;
                if (suggestionProvider != null) {
                    SuggestionAdapter suggestionAdapter = SuggestionAdapter.this;
                    String valueOf = String.valueOf(charSequence);
                    for (Suggestion suggestion : suggestionProvider.getAll(valueOf)) {
                        String text = suggestion.getText();
                        if (C3617K.J2(text, valueOf, true) && !C3617K.e2(text, valueOf, true)) {
                            suggestionAdapter.queryText = valueOf;
                            this.suggestions.add(suggestion);
                        }
                    }
                }
                Filter.FilterResults filterResults = new Filter.FilterResults();
                List<Suggestion> list = this.suggestions;
                filterResults.values = list;
                filterResults.count = list.size();
                return filterResults;
            }

            @Override
            public void publishResults(CharSequence charSequence, Filter.FilterResults results) {
                M.p(results, "results");
                SuggestionAdapter.this.clear();
                SuggestionAdapter.this.addAll(this.suggestions);
                SuggestionAdapter.this.notifyDataSetChanged();
            }
        };
    }

    @Override
    @NotNull
    public View getView(int i10, @Nullable View view, @NotNull ViewGroup parent) {
        M.p(parent, "parent");
        SuggestionViewHolder createViewHolder = createViewHolder(parent);
        Suggestion suggestion = (Suggestion) getItem(i10);
        String str = this.queryText;
        if (str == null) {
            str = "";
        }
        createViewHolder.bind(suggestion, str);
        return createViewHolder.getItemView();
    }

    public final void setSuggestionProvider(@NotNull SuggestionProvider suggestionProvider) {
        M.p(suggestionProvider, "suggestionProvider");
        this.suggestionProvider = suggestionProvider;
    }
}
