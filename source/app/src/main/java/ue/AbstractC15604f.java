package ue;

import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ue.C15599a;
import ue.C15603e;

public abstract class AbstractC15604f {

    public class a implements View.OnAttachStateChangeListener {

        public final TextView f120519b;

        public a(TextView textView) {
            this.f120519b = textView;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            AbstractC15604f.c(this.f120519b);
            this.f120519b.removeOnAttachStateChangeListener(this);
            this.f120519b.setTag(C15599a.g.f119447G0, null);
        }
    }

    public class b implements C15603e.f {

        public final Runnable f120520a = new a();

        public final TextView f120521b;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                TextView textView = b.this.f120521b;
                textView.setText(textView.getText());
            }
        }

        public b(TextView textView) {
            this.f120521b = textView;
        }

        @Override
        public void a() {
            this.f120521b.removeCallbacks(this.f120520a);
            this.f120521b.post(this.f120520a);
        }
    }

    @Nullable
    public static Object[] a(@NonNull TextView textView) {
        CharSequence text = textView.getText();
        if (TextUtils.isEmpty(text) || !(text instanceof Spanned)) {
            return null;
        }
        return ((Spanned) text).getSpans(0, text.length(), C15603e.class);
    }

    public static void b(@NonNull TextView textView) {
        Object[] a10 = a(textView);
        if (a10 == null || a10.length <= 0) {
            return;
        }
        int i10 = C15599a.g.f119447G0;
        if (textView.getTag(i10) == null) {
            a aVar = new a(textView);
            textView.addOnAttachStateChangeListener(aVar);
            textView.setTag(i10, aVar);
        }
        b bVar = new b(textView);
        for (Object obj : a10) {
            ((C15603e) obj).h(bVar);
        }
    }

    public static void c(@NonNull TextView textView) {
        Object[] a10 = a(textView);
        if (a10 == null || a10.length <= 0) {
            return;
        }
        for (Object obj : a10) {
            ((C15603e) obj).h(null);
        }
    }
}
