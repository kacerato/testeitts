package cn.pedant.SweetAlert;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;

public class Constants {
    public static final View.OnTouchListener FOCUS_TOUCH_LISTENER = new View.OnTouchListener() {
        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Drawable background = view.getBackground();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || action == 3) {
                    background.clearColorFilter();
                    view.invalidate();
                    return false;
                }
                if (action != 11) {
                    return false;
                }
            }
            background.setColorFilter(536870912, PorterDuff.Mode.SRC_ATOP);
            view.invalidate();
            return false;
        }
    };
}
