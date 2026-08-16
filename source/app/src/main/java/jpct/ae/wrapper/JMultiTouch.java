package jpct.ae.wrapper;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import anywheresoftware.b4a.BA;

@BA.Hide
@BA.ActivityObject
public class JMultiTouch implements View.OnTouchListener, ScaleGestureDetector.OnScaleGestureListener, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    private final JScaleEvent JpctScaleEvent;

    private final BA f94398ba;
    private final String eventName;
    private final GestureDetector gDetector;
    private final ScaleGestureDetector sDetector;
    private final JGLSurfaceView sender;
    private final JMotionEvent JpctMotionEvent = new JMotionEvent();
    private final JGestureEvent JpctGestureEvent = new JGestureEvent();

    @BA.ShortName("JpctGestureEvent")
    public static class JGestureEvent {
        private boolean DoubleTap;
        private boolean DoubleTapEvent;
        private boolean Down;
        private boolean Fling;
        private float FlingVelocityX;
        private float FlingVelocityY;
        private boolean LongPress;
        private boolean Scroll;
        private float ScrollDistanceX;
        private float ScrollDistanceY;
        private boolean ShowPress;
        private boolean SingleTapConfirmed;
        private boolean SingleTapUp;
        private boolean isInProgress = false;

        public void reset() {
            this.isInProgress = false;
            this.SingleTapConfirmed = false;
            this.DoubleTapEvent = false;
            this.DoubleTap = false;
            this.SingleTapUp = false;
            this.ShowPress = false;
            this.LongPress = false;
            this.Scroll = false;
            this.Fling = false;
            this.Down = false;
        }

        public float FlingVelocityX() {
            return this.FlingVelocityX;
        }

        public float FlingVelocityY() {
            return this.FlingVelocityY;
        }

        public float ScrollDistanceX() {
            return this.ScrollDistanceX;
        }

        public float ScrollDistanceY() {
            return this.ScrollDistanceY;
        }

        public boolean isInProgress() {
            return this.isInProgress;
        }

        public boolean onDoubleTap() {
            return this.DoubleTap;
        }

        public boolean onDoubleTapEvent() {
            return this.DoubleTapEvent;
        }

        public boolean onDown() {
            return this.Down;
        }

        public boolean onFling() {
            return this.Fling;
        }

        public boolean onLongPress() {
            return this.LongPress;
        }

        public boolean onScroll() {
            return this.Scroll;
        }

        public boolean onShowPress() {
            return this.ShowPress;
        }

        public boolean onSingleTapConfirmed() {
            return this.SingleTapConfirmed;
        }

        public boolean onSingleTapUp() {
            return this.SingleTapUp;
        }
    }

    @BA.ShortName("JpctMotionEvent")
    public static class JMotionEvent {
        public static int ACTION_CANCEL = 3;
        public static int ACTION_DOWN = 0;
        public static int ACTION_MASK = 255;
        public static int ACTION_MOVE = 2;
        public static int ACTION_POINTER_DOWN = 5;
        public static int ACTION_POINTER_INDEX_MASK = 65280;
        public static int ACTION_POINTER_INDEX_SHIFT = 8;
        public static int ACTION_POINTER_UP = 6;
        public static int ACTION_UP = 1;
        public static int INVALID_POINTER_ID = -1;
        private MotionEvent event;

        @BA.Hide
        public JMotionEvent() {
            if (this.event == null) {
                this.event = MotionEvent.obtain(0L, 0L, INVALID_POINTER_ID, 0.0f, 0.0f, 0);
            }
        }

        public int findPointerIndex(int i10) {
            return this.event.findPointerIndex(i10);
        }

        public int getAction() {
            return this.event.getAction();
        }

        public int getActionIndex() {
            return this.event.getActionIndex();
        }

        public int getActionMasked() {
            return this.event.getActionMasked();
        }

        public long getDownTime() {
            return this.event.getDownTime();
        }

        public long getEventTime() {
            return this.event.getEventTime();
        }

        public int getPointerCount() {
            return this.event.getPointerCount();
        }

        public int getPointerId(int i10) {
            return this.event.getPointerId(i10);
        }

        public float getPressure(int i10) {
            return this.event.getPressure(i10);
        }

        public float getRawX() {
            return this.event.getRawX();
        }

        public float getRawY() {
            return this.event.getRawY();
        }

        public float getSize(int i10) {
            try {
                return this.event.getSize(i10);
            } catch (IndexOutOfBoundsException unused) {
                return INVALID_POINTER_ID;
            }
        }

        public float getX(int i10) {
            return this.event.getX(i10);
        }

        public float getY(int i10) {
            return this.event.getY(i10);
        }

        public float getX() {
            return this.event.getX();
        }

        public float getY() {
            return this.event.getY();
        }
    }

    @BA.ShortName("JpctScaleEvent")
    public static class JScaleEvent {
        private ScaleGestureDetector detector;

        public JScaleEvent(BA ba2, ScaleGestureDetector.OnScaleGestureListener onScaleGestureListener) {
            this.detector = new ScaleGestureDetector(ba2.context, onScaleGestureListener);
        }

        public float getCurrentSpan() {
            return this.detector.getCurrentSpan();
        }

        public long getEventTime() {
            return this.detector.getEventTime();
        }

        public float getFocusX() {
            return this.detector.getFocusX();
        }

        public float getFocusY() {
            return this.detector.getFocusY();
        }

        public float getPreviousSpan() {
            return this.detector.getPreviousSpan();
        }

        public float getScaleFactor() {
            return this.detector.getScaleFactor();
        }

        public long getTimeDelta() {
            return this.detector.getTimeDelta();
        }

        public boolean isInProgress() {
            return this.detector.isInProgress();
        }
    }

    public JMultiTouch(BA ba2, String str, JGLSurfaceView jGLSurfaceView) {
        this.f94398ba = ba2;
        this.eventName = str;
        this.sender = jGLSurfaceView;
        this.JpctScaleEvent = new JScaleEvent(ba2, this);
        this.sDetector = new ScaleGestureDetector(ba2.context, this);
        GestureDetector gestureDetector = new GestureDetector(this);
        this.gDetector = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
        gestureDetector.setIsLongpressEnabled(true);
    }

    @Override
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.DoubleTap = true;
        return true;
    }

    @Override
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.DoubleTapEvent = true;
        return true;
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        this.JpctGestureEvent.reset();
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.Down = true;
        return true;
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.Fling = true;
        this.JpctGestureEvent.FlingVelocityX = f10;
        this.JpctGestureEvent.FlingVelocityY = f11;
        return true;
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.LongPress = true;
    }

    @Override
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        this.JpctScaleEvent.detector = scaleGestureDetector;
        return true;
    }

    @Override
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.JpctScaleEvent.detector = scaleGestureDetector;
        return true;
    }

    @Override
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.JpctScaleEvent.detector = scaleGestureDetector;
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.Scroll = true;
        this.JpctGestureEvent.ScrollDistanceX = f10;
        this.JpctGestureEvent.ScrollDistanceY = f11;
        return true;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.ShowPress = true;
    }

    @Override
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.SingleTapConfirmed = true;
        return true;
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.JpctGestureEvent.isInProgress = true;
        this.JpctGestureEvent.SingleTapUp = true;
        return true;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        try {
            this.sDetector.onTouchEvent(motionEvent);
            this.gDetector.onTouchEvent(motionEvent);
            this.JpctMotionEvent.event = motionEvent;
            return ((Boolean) this.f94398ba.raiseEvent(this.sender, (String.valueOf(this.eventName) + "_SurfaceTouch").toLowerCase(BA.cul), new Object[]{this.JpctMotionEvent, this.JpctScaleEvent, this.JpctGestureEvent})).booleanValue();
        } catch (NullPointerException unused) {
            return true;
        }
    }
}
