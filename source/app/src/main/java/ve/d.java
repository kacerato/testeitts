package ve;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Spanned;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import qe.C15091t;

public abstract class d {

    public class a implements View.OnAttachStateChangeListener {

        public final TextView f121568b;

        public a(TextView textView) {
            this.f121568b = textView;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            d.c(this.f121568b);
            view.removeOnAttachStateChangeListener(this);
            view.setTag(C15091t.g.f106800E0, null);
        }
    }

    public static class b implements Drawable.Callback {

        public final TextView f121569b;

        public final InterfaceC2073b f121570c;

        public Rect f121571d;

        public class a implements Runnable {

            public final Drawable f121572b;

            public a(Drawable drawable) {
                this.f121572b = drawable;
            }

            @Override
            public void run() {
                b.this.invalidateDrawable(this.f121572b);
            }
        }

        public interface InterfaceC2073b {
            void a();
        }

        public b(@NonNull TextView textView, @NonNull InterfaceC2073b interfaceC2073b, Rect rect) {
            this.f121569b = textView;
            this.f121570c = interfaceC2073b;
            this.f121571d = new Rect(rect);
        }

        @Override
        public void invalidateDrawable(@NonNull Drawable drawable) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f121569b.post(new a(drawable));
                return;
            }
            Rect bounds = drawable.getBounds();
            if (this.f121571d.equals(bounds)) {
                this.f121569b.postInvalidate();
            } else {
                this.f121570c.a();
                this.f121571d = new Rect(bounds);
            }
        }

        @Override
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j10) {
            this.f121569b.postDelayed(runnable, j10 - SystemClock.uptimeMillis());
        }

        @Override
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            this.f121569b.removeCallbacks(runnable);
        }
    }

    public static class c implements b.InterfaceC2073b, Runnable {

        public final TextView f121574b;

        public c(@NonNull TextView textView) {
            this.f121574b = textView;
        }

        @Override
        public void a() {
            this.f121574b.removeCallbacks(this);
            this.f121574b.post(this);
        }

        @Override
        public void run() {
            TextView textView = this.f121574b;
            textView.setText(textView.getText());
        }
    }

    @Nullable
    public static e[] a(@NonNull TextView textView) {
        CharSequence text = textView.getText();
        int length = text != null ? text.length() : 0;
        if (length == 0 || !(text instanceof Spanned)) {
            return null;
        }
        return (e[]) ((Spanned) text).getSpans(0, length, e.class);
    }

    public static void b(@NonNull TextView textView) {
        int i10 = C15091t.g.f106803F0;
        Integer num = (Integer) textView.getTag(i10);
        int hashCode = textView.getText().hashCode();
        if (num == null || num.intValue() != hashCode) {
            textView.setTag(i10, Integer.valueOf(hashCode));
            e[] a10 = a(textView);
            if (a10 == null || a10.length <= 0) {
                return;
            }
            int i11 = C15091t.g.f106800E0;
            if (textView.getTag(i11) == null) {
                a aVar = new a(textView);
                textView.addOnAttachStateChangeListener(aVar);
                textView.setTag(i11, aVar);
            }
            c cVar = new c(textView);
            for (e eVar : a10) {
                C15835a a11 = eVar.a();
                a11.o(new b(textView, cVar, a11.getBounds()));
            }
        }
    }

    public static void c(@NonNull TextView textView) {
        int i10 = C15091t.g.f106803F0;
        if (textView.getTag(i10) == null) {
            return;
        }
        textView.setTag(i10, null);
        e[] a10 = a(textView);
        if (a10 == null || a10.length <= 0) {
            return;
        }
        for (e eVar : a10) {
            eVar.a().o(null);
        }
    }
}
