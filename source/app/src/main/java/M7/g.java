package M7;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class g {

    public View f14693a;

    public Object f14699g;

    public boolean f14694b = true;

    public View f14695c = null;

    public final Object f14696d = new Object();

    public boolean f14697e = false;

    public final Rect f14698f = new Rect();

    public final ThreadLocal<Rect> f14700h = new a();

    public class a extends ThreadLocal<Rect> {
        public a() {
        }

        @Override
        public Rect initialValue() {
            return new Rect();
        }
    }

    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        throw new RuntimeException("Override this method");
    }

    public void b(Rect rect) {
        View e10 = e();
        if (e10 != null) {
            synchronized (this.f14696d) {
                try {
                    try {
                        if (e10.getGlobalVisibleRect(rect)) {
                            Rect rect2 = this.f14698f;
                            rect2.left = rect.left;
                            rect2.top = rect.top;
                            rect2.right = rect.right;
                            rect2.bottom = rect.bottom;
                        }
                        Rect rect3 = this.f14698f;
                        rect.left = rect3.left;
                        rect.top = rect3.top;
                        rect.right = rect3.right;
                        rect.bottom = rect3.bottom;
                    } finally {
                    }
                } catch (Error e11) {
                    e = e11;
                    e.printStackTrace();
                } catch (Exception e12) {
                    e = e12;
                    e.printStackTrace();
                }
            }
        }
    }

    public final int c(View myView) {
        return myView.getParent() == myView.getRootView() ? myView.getLeft() : myView.getLeft() + c((View) myView.getParent());
    }

    public final int d(View myView) {
        return myView.getParent() == myView.getRootView() ? myView.getTop() : myView.getTop() + d((View) myView.getParent());
    }

    public View e() {
        return this.f14693a;
    }

    public View f() {
        return this.f14695c;
    }

    public void g() {
        View view = this.f14693a;
        if (view != null) {
            view.setVisibility(8);
        }
        this.f14694b = false;
    }

    public boolean h(tc.h touch) {
        return i(touch, this.f14700h.get());
    }

    public boolean i(tc.h touch, Rect rect) {
        if (e() == null) {
            return false;
        }
        b(rect);
        Vector2 g10 = touch.g();
        float f10 = g10.f79838x;
        if (f10 >= rect.left && f10 <= rect.right) {
            float f11 = g10.f79839y;
            if (f11 >= rect.top && f11 <= rect.bottom) {
                if (!this.f14697e) {
                    return true;
                }
                System.out.println("touch " + g10.toString(2) + " rect " + rect.toShortString() + FirebaseAnalytics.d.f67668H);
                return true;
            }
        }
        if (!this.f14697e) {
            return false;
        }
        System.out.println("touch " + g10.toString(2) + " rect " + rect.toShortString() + "failed");
        return false;
    }

    public boolean j() {
        return this.f14694b;
    }

    public void k() {
    }

    public void l(LinearLayout parent) {
        View view = this.f14693a;
        if (view != null && parent.indexOfChild(view) != -1) {
            parent.removeView(this.f14693a);
            this.f14693a = null;
        }
        View view2 = this.f14695c;
        if (view2 == null || parent.indexOfChild(view2) == -1) {
            return;
        }
        parent.removeView(this.f14695c);
        this.f14695c = null;
    }

    public void m(View rootView) {
        this.f14693a = rootView;
        if (rootView != null) {
            if (this.f14694b) {
                rootView.setVisibility(0);
            } else {
                rootView.setVisibility(8);
            }
        }
    }

    public void n(View spaceAfter) {
        this.f14695c = spaceAfter;
    }

    public void o(boolean visible) {
        this.f14694b = visible;
        if (visible) {
            p();
        } else {
            g();
        }
    }

    public void p() {
        View view = this.f14693a;
        if (view != null) {
            view.setVisibility(0);
        }
        this.f14694b = true;
    }
}
