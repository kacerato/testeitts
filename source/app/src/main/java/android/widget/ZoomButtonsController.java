package android.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ZoomButtonsController.class
 */
@Deprecated
public class ZoomButtonsController implements View.OnTouchListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ZoomButtonsController$OnZoomListener.class
 */
    public interface OnZoomListener {
        void onVisibilityChanged(boolean z10);

        void onZoom(boolean z10);
    }

    public ZoomButtonsController(View ownerView) {
        throw new RuntimeException("Stub!");
    }

    public void setZoomInEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setZoomOutEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setZoomSpeed(long speed) {
        throw new RuntimeException("Stub!");
    }

    public void setOnZoomListener(OnZoomListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setFocusable(boolean focusable) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAutoDismissed() {
        throw new RuntimeException("Stub!");
    }

    public void setAutoDismissed(boolean autoDismiss) {
        throw new RuntimeException("Stub!");
    }

    public boolean isVisible() {
        throw new RuntimeException("Stub!");
    }

    public void setVisible(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    public ViewGroup getContainer() {
        throw new RuntimeException("Stub!");
    }

    public View getZoomControls() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouch(View v10, MotionEvent event) {
        throw new RuntimeException("Stub!");
    }
}
