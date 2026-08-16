package org.blacksquircle.ui.editorkit.plugin.pinchzoom;

import android.util.Log;
import android.view.MotionEvent;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.jetbrains.annotations.NotNull;

public final class PinchZoomPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final float DEFAULT_MAX_TEXT_SIZE = 20.0f;
    public static final float DEFAULT_MIN_TEXT_SIZE = 10.0f;

    @NotNull
    public static final String PLUGIN_ID = "pinchzoom-0361";
    private boolean isDoingPinchZoom;
    private float maxTextSize;
    private float minTextSize;
    private float pinchFactor;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public PinchZoomPlugin() {
        super(PLUGIN_ID);
        this.minTextSize = 10.0f;
        this.maxTextSize = 20.0f;
        this.pinchFactor = 1.0f;
    }

    private final float getDistanceBetweenTouches(MotionEvent motionEvent) {
        float x10 = motionEvent.getX(0) - motionEvent.getX(1);
        float y10 = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x10 * x10) + (y10 * y10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
    
        if (r4 > r1) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean updateTextSize(float f10) {
        TextProcessor editText = getEditText();
        float f11 = this.minTextSize;
        if (f10 >= f11) {
            f11 = this.maxTextSize;
        }
        f10 = f11;
        editText.setTextSize(f10);
        return true;
    }

    public final float getMaxTextSize() {
        return this.maxTextSize;
    }

    public final float getMinTextSize() {
        return this.minTextSize;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "PinchZoom plugin loaded successfully!");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0011, code lost:
    
        if (r0 != 3) goto L17;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        int action = event.getAction();
        if (action != 1) {
            if (action == 2) {
                if (event.getPointerCount() == 2) {
                    float distanceBetweenTouches = getDistanceBetweenTouches(event);
                    if (!this.isDoingPinchZoom) {
                        this.pinchFactor = (getEditText().getTextSize() / requireContext().getResources().getDisplayMetrics().scaledDensity) / distanceBetweenTouches;
                        this.isDoingPinchZoom = true;
                    }
                    return updateTextSize(this.pinchFactor * distanceBetweenTouches);
                }
            }
            return false;
        }
        this.isDoingPinchZoom = false;
        return false;
    }

    public final void setMaxTextSize(float f10) {
        this.maxTextSize = f10;
    }

    public final void setMinTextSize(float f10) {
        this.minTextSize = f10;
    }
}
