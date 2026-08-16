package x7;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.itsmagic.engine2.R;

public class j extends FrameLayout {

    public static final long f128001j = 300;

    public final c f128002b;

    public final a f128003c;

    public float f128004d;

    public float f128005e;

    public boolean f128006f;

    public boolean f128007g;

    public final Handler f128008h;

    public boolean f128009i;

    public interface a {
        void a(j from, float startX, float startY);

        void b();

        void c(j v10);

        void d(j to);

        void e(float x10, float y10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public j(Context c10, c node, View content, final a listener) {
        super(c10);
        this.f128006f = false;
        this.f128007g = false;
        this.f128008h = new Handler(Looper.getMainLooper());
        this.f128009i = false;
        this.f128002b = node;
        this.f128003c = listener;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        if (content == null) {
            LayoutInflater.from(c10).inflate(R.layout.view_node, (ViewGroup) this, true);
        } else {
            addView(content);
        }
        post(new Runnable() {
            @Override
            public final void run() {
                j.this.d();
            }
        });
        setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean h10;
                h10 = j.this.h(listener, view, motionEvent);
                return h10;
            }
        });
    }

    private ViewGroup getParentAsViewGroup() {
        if (getParent() instanceof ViewGroup) {
            return (ViewGroup) getParent();
        }
        return null;
    }

    private float getParentScaleSafe() {
        if (getParent() instanceof f) {
            return ((f) getParent()).getScale();
        }
        return 1.0f;
    }

    public final void d() {
        float f10;
        float f11;
        float parentScaleSafe = getParentScaleSafe();
        if (getParent() instanceof f) {
            f fVar = (f) getParent();
            f11 = fVar.getPanX();
            f10 = fVar.getPanY();
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        int x10 = (int) ((this.f128002b.b().getX() * parentScaleSafe) + f11);
        int y10 = (int) ((this.f128002b.b().getY() * parentScaleSafe) + f10);
        setX(x10);
        setY(y10);
        setPivotX(0.0f);
        setPivotY(0.0f);
        setScaleX(parentScaleSafe);
        setScaleY(parentScaleSafe);
    }

    public final j e(View parentView, float px, float py) {
        if (!(parentView instanceof FrameLayout)) {
            return null;
        }
        FrameLayout frameLayout = (FrameLayout) parentView;
        for (int i10 = 0; i10 < frameLayout.getChildCount(); i10++) {
            View childAt = frameLayout.getChildAt(i10);
            if (childAt instanceof j) {
                j jVar = (j) childAt;
                if (new RectF(jVar.getX(), jVar.getY(), jVar.getX() + jVar.getWidth(), jVar.getY() + jVar.getHeight()).contains(px, py)) {
                    return jVar;
                }
            }
        }
        return null;
    }

    public final j f(ViewGroup parent, float px, float py) {
        for (int i10 = 0; i10 < parent.getChildCount(); i10++) {
            View childAt = parent.getChildAt(i10);
            if (childAt instanceof j) {
                j jVar = (j) childAt;
                if (new RectF(jVar.getX(), jVar.getY(), jVar.getX() + jVar.getWidth(), jVar.getY() + jVar.getHeight()).contains(px, py)) {
                    return jVar;
                }
            }
        }
        return null;
    }

    public final void g(a aVar, MotionEvent motionEvent) {
        if (this.f128009i) {
            this.f128007g = true;
            this.f128006f = false;
            if (aVar != null) {
                aVar.a(this, getCenterXInParent(), getCenterYInParent());
                aVar.e(getX() + motionEvent.getX(), getY() + motionEvent.getY());
            }
        }
    }

    public float getCenterXInParent() {
        return getX() + (getWidth() * getScaleX() * 0.5f);
    }

    public float getCenterYInParent() {
        return getY() + (getHeight() * getScaleY() * 0.5f);
    }

    public c getNode() {
        return this.f128002b;
    }

    public final boolean h(final a aVar, View view, final MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f128006f = true;
            this.f128009i = true;
            this.f128004d = motionEvent.getRawX();
            this.f128005e = motionEvent.getRawY();
            this.f128008h.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    j.this.g(aVar, motionEvent);
                }
            }, 300L);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float rawX = motionEvent.getRawX() - this.f128004d;
                float rawY = motionEvent.getRawY() - this.f128005e;
                if (!this.f128007g && (Math.abs(rawX) > Nc.b.m0(1.0f) || Math.abs(rawY) > Nc.b.m0(1.0f))) {
                    this.f128009i = false;
                    if (this.f128006f && getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                }
                this.f128004d = motionEvent.getRawX();
                this.f128005e = motionEvent.getRawY();
                if (this.f128006f) {
                    i(rawX, rawY);
                    if (aVar != null) {
                        aVar.c(this);
                    }
                } else if (this.f128007g && aVar != null) {
                    aVar.e(getX() + motionEvent.getX(), getY() + motionEvent.getY());
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked == 5 && getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                return false;
            }
        }
        this.f128008h.removeCallbacksAndMessages(null);
        this.f128009i = false;
        if (this.f128007g) {
            ViewGroup parentAsViewGroup = getParentAsViewGroup();
            j f10 = parentAsViewGroup != null ? f(parentAsViewGroup, getX() + motionEvent.getX(), getY() + motionEvent.getY()) : null;
            if (aVar != null) {
                if (f10 == null || f10 == this) {
                    aVar.b();
                } else {
                    aVar.d(f10);
                }
            }
        }
        this.f128006f = false;
        this.f128007g = false;
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return true;
    }

    public final void i(float dx, float dy) {
        float x10 = this.f128002b.b().getX() + dx;
        float y10 = this.f128002b.b().getY() + dy;
        this.f128002b.b().B0(x10);
        this.f128002b.b().C0(y10);
        j();
    }

    public void j() {
        d();
    }
}
