package te;

import android.text.Layout;
import android.text.Spannable;
import android.text.Spanned;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

public class C15411m {

    public final WeakReference<Layout> f117362a;

    public C15411m(@NonNull Layout layout) {
        this.f117362a = new WeakReference<>(layout);
    }

    public static void a(@NonNull Spannable spannable, @NonNull Layout layout) {
        C15411m[] c15411mArr = (C15411m[]) spannable.getSpans(0, spannable.length(), C15411m.class);
        if (c15411mArr != null) {
            for (C15411m c15411m : c15411mArr) {
                spannable.removeSpan(c15411m);
            }
        }
        spannable.setSpan(new C15411m(layout), 0, spannable.length(), 18);
    }

    @Nullable
    public static Layout c(@NonNull Spanned spanned) {
        C15411m[] c15411mArr = (C15411m[]) spanned.getSpans(0, spanned.length(), C15411m.class);
        if (c15411mArr == null || c15411mArr.length <= 0) {
            return null;
        }
        return c15411mArr[0].b();
    }

    @Nullable
    public static Layout d(@NonNull CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return c((Spanned) charSequence);
        }
        return null;
    }

    @Nullable
    public Layout b() {
        return this.f117362a.get();
    }
}
