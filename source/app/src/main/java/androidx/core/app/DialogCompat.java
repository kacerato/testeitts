package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;

public class DialogCompat {

    public static class Api28Impl {
        private Api28Impl() {
        }

        public static <T> T requireViewById(Dialog dialog, int i10) {
            return (T) dialog.requireViewById(i10);
        }
    }

    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (View) Api28Impl.requireViewById(dialog, i10);
        }
        View findViewById = dialog.findViewById(i10);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
    }
}
