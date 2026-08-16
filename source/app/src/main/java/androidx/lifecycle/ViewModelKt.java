package androidx.lifecycle;

import eg.C13122j0;
import eg.S;
import eg.k1;
import kotlin.jvm.internal.M;

public final class ViewModelKt {
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    public static final S getViewModelScope(ViewModel viewModel) {
        M.p(viewModel, "<this>");
        S s10 = (S) viewModel.getTag(JOB_KEY);
        if (s10 != null) {
            return s10;
        }
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(k1.c(null, 1, null).plus(C13122j0.e().u())));
        M.o(tagIfAbsent, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )");
        return (S) tagIfAbsent;
    }
}
