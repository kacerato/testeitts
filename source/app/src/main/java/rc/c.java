package rc;

import Ic.C2626e;
import android.content.Context;
import android.view.InputDevice;
import android.view.MotionEvent;
import android.view.View;
import rc.C15169a;

public class c implements View.OnHoverListener, View.OnGenericMotionListener, View.OnTouchListener, View.OnCapturedPointerListener {
    public c(Context context) {
    }

    public final void a(MotionEvent motionEvent) {
        C2626e c2626e;
        float b10;
        C2626e c2626e2;
        float b11;
        float axisValue = motionEvent.getAxisValue(27);
        float axisValue2 = motionEvent.getAxisValue(28);
        if (axisValue == 0.0f && axisValue2 == 0.0f) {
            return;
        }
        do {
            c2626e = C15169a.g.f108853r;
            b10 = c2626e.b();
        } while (!c2626e.a(b10, b10 + axisValue));
        do {
            c2626e2 = C15169a.g.f108854s;
            b11 = c2626e2.b();
        } while (!c2626e2.a(b11, b11 + axisValue2));
        C15169a.g.f108855t.set(true);
    }

    public final boolean b(View v10, MotionEvent motionEvent, boolean allowScroll) {
        d(motionEvent);
        if (!c(motionEvent)) {
            return false;
        }
        f(motionEvent);
        e(motionEvent);
        if (!allowScroll || motionEvent.getAction() != 8) {
            return false;
        }
        C15169a.f108812u.d(motionEvent.getAxisValue(9));
        return true;
    }

    public final boolean c(MotionEvent motionEvent) {
        InputDevice device = InputDevice.getDevice(motionEvent.getDeviceId());
        if (device == null) {
            return false;
        }
        int sources = device.getSources();
        return (sources & 8194) == 8194 || (sources & InputDevice.SOURCE_MOUSE_RELATIVE) == 131076;
    }

    public final void d(MotionEvent motionEvent) {
        if ((motionEvent.getMetaState() & 2) != 0) {
            C15169a.f108811t.d(true);
        } else {
            C15169a.f108811t.d(false);
        }
    }

    public final void e(MotionEvent motionEvent) {
        int buttonState = motionEvent.getButtonState();
        C15169a.g.f108857v.set((buttonState & 1) != 0);
        C15169a.g.f108856u.set((buttonState & 2) != 0);
        C15169a.g.f108858w.set((buttonState & 4) != 0);
        C15169a.g.f108859x.set((buttonState & 8) != 0);
        C15169a.g.f108860y.set((buttonState & 16) != 0);
    }

    public final void f(MotionEvent motionEvent) {
        C15169a.g.f108850o.set((int) motionEvent.getX());
        C15169a.g.f108851p.set((int) motionEvent.getY());
        C15169a.g.f108855t.set(true);
    }

    @Override
    public boolean onCapturedPointer(View view, MotionEvent motionEvent) {
        d(motionEvent);
        if (!c(motionEvent)) {
            return false;
        }
        f(motionEvent);
        e(motionEvent);
        if (motionEvent.getAction() != 8) {
            a(motionEvent);
            return true;
        }
        C15169a.f108812u.d(motionEvent.getAxisValue(9));
        return true;
    }

    @Override
    public boolean onGenericMotion(View v10, MotionEvent motionEvent) {
        return b(v10, motionEvent, true);
    }

    @Override
    public boolean onHover(View v10, MotionEvent motionEvent) {
        d(motionEvent);
        if (!c(motionEvent)) {
            return false;
        }
        f(motionEvent);
        e(motionEvent);
        return false;
    }

    @Override
    public boolean onTouch(View v10, MotionEvent motionEvent) {
        d(motionEvent);
        if (!c(motionEvent)) {
            return false;
        }
        f(motionEvent);
        e(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        return actionMasked == 0 || actionMasked == 1 || actionMasked == 2 || actionMasked == 5 || actionMasked == 6;
    }
}
