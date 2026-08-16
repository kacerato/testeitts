package qe;

import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.text.PrecomputedTextCompat;
import java.util.concurrent.Executor;
import qe.AbstractC15076e;

public class C15087p implements AbstractC15076e.b {

    @Nullable
    public final Executor f106175a;

    public C15087p(@Nullable Executor executor) {
        this.f106175a = executor;
    }

    @NonNull
    public static C15087p b() {
        return new C15087p(null);
    }

    @NonNull
    public static C15087p c(@Nullable Executor executor) {
        return new C15087p(executor);
    }

    @Override
    public void a(@NonNull TextView textView, @NonNull Spanned spanned, @NonNull TextView.BufferType bufferType, @NonNull Runnable runnable) {
        if (textView instanceof AppCompatTextView) {
            AppCompatTextView appCompatTextView = (AppCompatTextView) textView;
            appCompatTextView.setTextFuture(PrecomputedTextCompat.getTextFuture(spanned, appCompatTextView.getTextMetricsParamsCompat(), this.f106175a));
            runnable.run();
        } else {
            throw new IllegalStateException("TextView provided is not an instance of AppCompatTextView, cannot call setTextFuture(), textView: " + ((Object) textView));
        }
    }
}
