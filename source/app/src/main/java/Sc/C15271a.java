package sc;

import android.view.MotionEvent;

public class C15271a {

    public static final int f109421i = -1;

    public float f109422a;

    public float f109423b;

    public float f109424c;

    public float f109425d;

    public int f109426e = -1;

    public int f109427f = -1;

    public float f109428g;

    public InterfaceC2005a f109429h;

    public interface InterfaceC2005a {
        void a(C15271a rotationDetector);
    }

    public C15271a(InterfaceC2005a listener) {
        this.f109429h = listener;
    }

    public final float a(float fX, float fY, float sX, float sY, float nfX, float nfY, float nsX, float nsY) {
        float degrees = ((float) Math.toDegrees(((float) Math.atan2(fY - sY, fX - sX)) - ((float) Math.atan2(nfY - nsY, nfX - nsX)))) % 360.0f;
        if (degrees < -180.0f) {
            degrees += 360.0f;
        }
        return degrees > 180.0f ? degrees - 360.0f : degrees;
    }

    public float b() {
        return this.f109428g;
    }

    public boolean c(MotionEvent event) {
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.f109426e = event.getPointerId(event.getActionIndex());
        } else if (actionMasked == 1) {
            this.f109426e = -1;
        } else if (actionMasked == 2) {
            int i10 = this.f109426e;
            if (i10 != -1 && this.f109427f != -1) {
                try {
                    float x10 = event.getX(event.findPointerIndex(i10));
                    float y10 = event.getY(event.findPointerIndex(this.f109426e));
                    this.f109428g = a(this.f109422a, this.f109423b, this.f109424c, this.f109425d, event.getX(event.findPointerIndex(this.f109427f)), event.getY(event.findPointerIndex(this.f109427f)), x10, y10);
                } catch (IllegalArgumentException unused) {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                InterfaceC2005a interfaceC2005a = this.f109429h;
                if (interfaceC2005a != null) {
                    interfaceC2005a.a(this);
                }
            }
        } else if (actionMasked == 3) {
            this.f109426e = -1;
            this.f109427f = -1;
        } else if (actionMasked == 5) {
            try {
                this.f109427f = event.getPointerId(event.getActionIndex());
                this.f109424c = event.getX(event.findPointerIndex(this.f109426e));
                this.f109425d = event.getY(event.findPointerIndex(this.f109426e));
                this.f109422a = event.getX(event.findPointerIndex(this.f109427f));
                this.f109423b = event.getY(event.findPointerIndex(this.f109427f));
            } catch (IllegalArgumentException unused2) {
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else if (actionMasked == 6) {
            this.f109427f = -1;
        }
        return true;
    }
}
