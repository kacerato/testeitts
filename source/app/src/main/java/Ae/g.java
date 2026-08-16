package Ae;

import android.text.Spannable;
import android.text.SpannableString;
import androidx.annotation.NonNull;

public class g extends Spannable.Factory {

    public static class a {

        public static final g f527a = new g();
    }

    @NonNull
    public static g a() {
        return a.f527a;
    }

    @Override
    public Spannable newSpannable(CharSequence charSequence) {
        return charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
    }
}
