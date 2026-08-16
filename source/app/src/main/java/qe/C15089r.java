package qe;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spanned;
import android.util.Log;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.PrecomputedTextCompat;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import qe.AbstractC15076e;

public class C15089r implements AbstractC15076e.b {

    public final Executor f106176a;

    public class a implements Runnable {

        public final WeakReference f106177b;

        public final Spanned f106178c;

        public final TextView.BufferType f106179d;

        public final Runnable f106180e;

        public a(WeakReference weakReference, Spanned spanned, TextView.BufferType bufferType, Runnable runnable) {
            this.f106177b = weakReference;
            this.f106178c = spanned;
            this.f106179d = bufferType;
            this.f106180e = runnable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            try {
                PrecomputedTextCompat f10 = C15089r.f((TextView) this.f106177b.get(), this.f106178c);
                if (f10 != null) {
                    C15089r.d((TextView) this.f106177b.get(), f10, this.f106179d, this.f106180e);
                }
            } catch (Throwable th2) {
                Log.e("PrecomputdTxtSetterCmpt", "Exception during pre-computing text", th2);
                C15089r.d((TextView) this.f106177b.get(), this.f106178c, this.f106179d, this.f106180e);
            }
        }
    }

    public class b implements Runnable {

        public final TextView f106182b;

        public final Spanned f106183c;

        public final TextView.BufferType f106184d;

        public final Runnable f106185e;

        public b(TextView textView, Spanned spanned, TextView.BufferType bufferType, Runnable runnable) {
            this.f106182b = textView;
            this.f106183c = spanned;
            this.f106184d = bufferType;
            this.f106185e = runnable;
        }

        @Override
        public void run() {
            this.f106182b.setText(this.f106183c, this.f106184d);
            this.f106185e.run();
        }
    }

    public C15089r(@NonNull Executor executor) {
        this.f106176a = executor;
    }

    public static void d(@Nullable TextView textView, @NonNull Spanned spanned, @NonNull TextView.BufferType bufferType, @NonNull Runnable runnable) {
        if (textView != null) {
            textView.post(new b(textView, spanned, bufferType, runnable));
        }
    }

    @NonNull
    public static C15089r e(@NonNull Executor executor) {
        return new C15089r(executor);
    }

    @Nullable
    public static PrecomputedTextCompat f(@Nullable TextView textView, @NonNull Spanned spanned) {
        PrecomputedTextCompat.Params build;
        PrecomputedText.Params textMetricsParams;
        if (textView == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            textMetricsParams = textView.getTextMetricsParams();
            build = new PrecomputedTextCompat.Params(textMetricsParams);
        } else {
            PrecomputedTextCompat.Params.Builder builder = new PrecomputedTextCompat.Params.Builder(textView.getPaint());
            builder.setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            build = builder.build();
        }
        return PrecomputedTextCompat.create(spanned, build);
    }

    @Override
    public void a(@NonNull TextView textView, @NonNull Spanned spanned, @NonNull TextView.BufferType bufferType, @NonNull Runnable runnable) {
        this.f106176a.execute(new a(new WeakReference(textView), spanned, bufferType, runnable));
    }
}
