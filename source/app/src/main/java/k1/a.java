package K1;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a implements View.OnTouchListener {

    @NonNull
    public final Dialog f10698b;

    public final int f10699c;

    public final int f10700d;

    public final int f10701e;

    public a(@NonNull Dialog dialog, @NonNull Rect rect) {
        this.f10698b = dialog;
        this.f10699c = rect.left;
        this.f10700d = rect.top;
        this.f10701e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.f10699c + findViewById.getLeft();
        int width = findViewById.getWidth() + left;
        if (new RectF(left, this.f10700d + findViewById.getTop(), width, findViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            obtain.setAction(0);
            int i10 = this.f10701e;
            obtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f10698b.onTouchEvent(obtain);
    }
}
