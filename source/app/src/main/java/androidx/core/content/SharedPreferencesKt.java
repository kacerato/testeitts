package androidx.core.content;

import android.content.SharedPreferences;
import kotlin.jvm.internal.M;
import nf.P0;

public final class SharedPreferencesKt {
    public static final void edit(SharedPreferences sharedPreferences, boolean z10, Mf.l<? super SharedPreferences.Editor, P0> action) {
        M.p(sharedPreferences, "<this>");
        M.p(action, "action");
        SharedPreferences.Editor editor = sharedPreferences.edit();
        M.o(editor, "editor");
        action.invoke(editor);
        if (z10) {
            editor.commit();
        } else {
            editor.apply();
        }
    }

    public static void edit$default(SharedPreferences sharedPreferences, boolean z10, Mf.l action, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        M.p(sharedPreferences, "<this>");
        M.p(action, "action");
        SharedPreferences.Editor editor = sharedPreferences.edit();
        M.o(editor, "editor");
        action.invoke(editor);
        if (z10) {
            editor.commit();
        } else {
            editor.apply();
        }
    }
}
