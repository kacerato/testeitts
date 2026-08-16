package te;

import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

public class C15412n {

    public final WeakReference<TextView> f117363a;

    public C15412n(@NonNull TextView textView) {
        this.f117363a = new WeakReference<>(textView);
    }

    public static void a(@NonNull Spannable spannable, @NonNull TextView textView) {
        C15412n[] c15412nArr = (C15412n[]) spannable.getSpans(0, spannable.length(), C15412n.class);
        if (c15412nArr != null) {
            for (C15412n c15412n : c15412nArr) {
                spannable.removeSpan(c15412n);
            }
        }
        spannable.setSpan(new C15412n(textView), 0, spannable.length(), 18);
    }

    @Nullable
    public static TextView c(@NonNull Spanned spanned) {
        C15412n[] c15412nArr = (C15412n[]) spanned.getSpans(0, spanned.length(), C15412n.class);
        if (c15412nArr == null || c15412nArr.length <= 0) {
            return null;
        }
        return c15412nArr[0].b();
    }

    @Nullable
    public static TextView d(@NonNull CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return c((Spanned) charSequence);
        }
        return null;
    }

    @Nullable
    public TextView b() {
        return this.f117363a.get();
    }
}
