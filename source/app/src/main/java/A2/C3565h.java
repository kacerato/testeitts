package a2;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;

public class C3565h {

    public View f31684a;

    public C3567j f31685b;

    public ScrollView f31686c;

    public final int[] f31687d = new int[2];

    public final int[] f31688e = new int[2];

    public final ViewTreeObserver.OnScrollChangedListener f31689f = new a();

    public class a implements ViewTreeObserver.OnScrollChangedListener {
        public a() {
        }

        @Override
        public void onScrollChanged() {
            C3565h.this.e();
        }
    }

    public C3565h(View view, C3567j c3567j, ScrollView scrollView) {
        this.f31684a = view;
        this.f31685b = c3567j;
        this.f31686c = scrollView;
    }

    public void a(ScrollView scrollView) {
        this.f31686c = scrollView;
    }

    public void b(C3567j c3567j) {
        this.f31685b = c3567j;
    }

    public void c(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f31689f);
    }

    public void d(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f31689f);
    }

    public void e() {
        ScrollView scrollView = this.f31686c;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.f31686c.getLocationInWindow(this.f31687d);
        this.f31686c.getChildAt(0).getLocationInWindow(this.f31688e);
        int top = (this.f31684a.getTop() - this.f31687d[1]) + this.f31688e[1];
        int height = this.f31684a.getHeight();
        int height2 = this.f31686c.getHeight();
        if (top < 0) {
            this.f31685b.o0(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            this.f31684a.invalidate();
            return;
        }
        if (top + height > height2) {
            this.f31685b.o0(Math.max(0.0f, Math.min(1.0f, 1.0f - ((r0 - height2) / height))));
            this.f31684a.invalidate();
        } else if (this.f31685b.z() != 1.0f) {
            this.f31685b.o0(1.0f);
            this.f31684a.invalidate();
        }
    }
}
