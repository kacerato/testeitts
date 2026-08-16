package androidx.core.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    public interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z10);

        void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);
    }

    public static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        MotionEvent mCurrentDownEvent;
        boolean mDeferConfirmSingleTap;
        GestureDetector.OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        final GestureDetector.OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;
        private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();

        public GestureDetectorCompatImplBase(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.mHandler = new GestureHandler(handler);
            } else {
                this.mHandler = new GestureHandler();
            }
            this.mListener = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                setOnDoubleTapListener((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            init(context);
        }

        private void cancel() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void cancelTaps() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void init(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (this.mListener == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            this.mIsLongpressEnabled = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
            this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
            this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > DOUBLE_TAP_TIMEOUT) {
                return false;
            }
            int x10 = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y10 = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x10 * x10) + (y10 * y10) < this.mDoubleTapSlopSquare;
        }

        public void dispatchLongPress() {
            this.mHandler.removeMessages(3);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }

        @Override
        public boolean isLongpressEnabled() {
            return this.mIsLongpressEnabled;
        }

        /* JADX WARN: Removed duplicated region for block: B:114:0x0201  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0218  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            MotionEvent motionEvent2;
            MotionEvent motionEvent3;
            boolean onFling;
            GestureDetector.OnDoubleTapListener onDoubleTapListener;
            int action = motionEvent.getAction();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            int i10 = action & 255;
            boolean z11 = i10 == 6;
            int actionIndex = z11 ? motionEvent.getActionIndex() : -1;
            int pointerCount = motionEvent.getPointerCount();
            float f10 = 0.0f;
            float f11 = 0.0f;
            for (int i11 = 0; i11 < pointerCount; i11++) {
                if (actionIndex != i11) {
                    f10 += motionEvent.getX(i11);
                    f11 += motionEvent.getY(i11);
                }
            }
            float f12 = z11 ? pointerCount - 1 : pointerCount;
            float f13 = f10 / f12;
            float f14 = f11 / f12;
            if (i10 == 0) {
                if (this.mDoubleTapListener != null) {
                    boolean hasMessages = this.mHandler.hasMessages(3);
                    if (hasMessages) {
                        this.mHandler.removeMessages(3);
                    }
                    MotionEvent motionEvent4 = this.mCurrentDownEvent;
                    if (motionEvent4 != null && (motionEvent3 = this.mPreviousUpEvent) != null && hasMessages && isConsideredDoubleTap(motionEvent4, motionEvent3, motionEvent)) {
                        this.mIsDoubleTapping = true;
                        z10 = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                        this.mLastFocusX = f13;
                        this.mDownFocusX = f13;
                        this.mLastFocusY = f14;
                        this.mDownFocusY = f14;
                        motionEvent2 = this.mCurrentDownEvent;
                        if (motionEvent2 != null) {
                            motionEvent2.recycle();
                        }
                        this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
                        this.mAlwaysInTapRegion = true;
                        this.mAlwaysInBiggerTapRegion = true;
                        this.mStillDown = true;
                        this.mInLongPress = false;
                        this.mDeferConfirmSingleTap = false;
                        if (this.mIsLongpressEnabled) {
                            this.mHandler.removeMessages(2);
                            this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + TAP_TIMEOUT + ViewConfiguration.getLongPressTimeout());
                        }
                        this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + TAP_TIMEOUT);
                        return z10 | this.mListener.onDown(motionEvent);
                    }
                    this.mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
                }
                z10 = false;
                this.mLastFocusX = f13;
                this.mDownFocusX = f13;
                this.mLastFocusY = f14;
                this.mDownFocusY = f14;
                motionEvent2 = this.mCurrentDownEvent;
                if (motionEvent2 != null) {
                }
                this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
                this.mAlwaysInTapRegion = true;
                this.mAlwaysInBiggerTapRegion = true;
                this.mStillDown = true;
                this.mInLongPress = false;
                this.mDeferConfirmSingleTap = false;
                if (this.mIsLongpressEnabled) {
                }
                this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + TAP_TIMEOUT);
                return z10 | this.mListener.onDown(motionEvent);
            }
            if (i10 == 1) {
                this.mStillDown = false;
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                if (this.mIsDoubleTapping) {
                    onFling = this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                } else {
                    if (this.mInLongPress) {
                        this.mHandler.removeMessages(3);
                        this.mInLongPress = false;
                    } else if (this.mAlwaysInTapRegion) {
                        boolean onSingleTapUp = this.mListener.onSingleTapUp(motionEvent);
                        if (this.mDeferConfirmSingleTap && (onDoubleTapListener = this.mDoubleTapListener) != null) {
                            onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                        }
                        onFling = onSingleTapUp;
                    } else {
                        VelocityTracker velocityTracker = this.mVelocityTracker;
                        int pointerId = motionEvent.getPointerId(0);
                        velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                        float yVelocity = velocityTracker.getYVelocity(pointerId);
                        float xVelocity = velocityTracker.getXVelocity(pointerId);
                        if (Math.abs(yVelocity) > this.mMinimumFlingVelocity || Math.abs(xVelocity) > this.mMinimumFlingVelocity) {
                            onFling = this.mListener.onFling(this.mCurrentDownEvent, motionEvent, xVelocity, yVelocity);
                        }
                    }
                    onFling = false;
                }
                MotionEvent motionEvent5 = this.mPreviousUpEvent;
                if (motionEvent5 != null) {
                    motionEvent5.recycle();
                }
                this.mPreviousUpEvent = obtain;
                VelocityTracker velocityTracker2 = this.mVelocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.mVelocityTracker = null;
                }
                this.mIsDoubleTapping = false;
                this.mDeferConfirmSingleTap = false;
                this.mHandler.removeMessages(1);
                this.mHandler.removeMessages(2);
            } else {
                if (i10 != 2) {
                    if (i10 == 3) {
                        cancel();
                        return false;
                    }
                    if (i10 == 5) {
                        this.mLastFocusX = f13;
                        this.mDownFocusX = f13;
                        this.mLastFocusY = f14;
                        this.mDownFocusY = f14;
                        cancelTaps();
                        return false;
                    }
                    if (i10 != 6) {
                        return false;
                    }
                    this.mLastFocusX = f13;
                    this.mDownFocusX = f13;
                    this.mLastFocusY = f14;
                    this.mDownFocusY = f14;
                    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                    int actionIndex2 = motionEvent.getActionIndex();
                    int pointerId2 = motionEvent.getPointerId(actionIndex2);
                    float xVelocity2 = this.mVelocityTracker.getXVelocity(pointerId2);
                    float yVelocity2 = this.mVelocityTracker.getYVelocity(pointerId2);
                    for (int i12 = 0; i12 < pointerCount; i12++) {
                        if (i12 != actionIndex2) {
                            int pointerId3 = motionEvent.getPointerId(i12);
                            if ((this.mVelocityTracker.getXVelocity(pointerId3) * xVelocity2) + (this.mVelocityTracker.getYVelocity(pointerId3) * yVelocity2) < 0.0f) {
                                this.mVelocityTracker.clear();
                                return false;
                            }
                        }
                    }
                    return false;
                }
                if (this.mInLongPress) {
                    return false;
                }
                float f15 = this.mLastFocusX - f13;
                float f16 = this.mLastFocusY - f14;
                if (this.mIsDoubleTapping) {
                    return this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                }
                if (!this.mAlwaysInTapRegion) {
                    if (Math.abs(f15) < 1.0f && Math.abs(f16) < 1.0f) {
                        return false;
                    }
                    boolean onScroll = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f15, f16);
                    this.mLastFocusX = f13;
                    this.mLastFocusY = f14;
                    return onScroll;
                }
                int i13 = (int) (f13 - this.mDownFocusX);
                int i14 = (int) (f14 - this.mDownFocusY);
                int i15 = (i13 * i13) + (i14 * i14);
                if (i15 > this.mTouchSlopSquare) {
                    onFling = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f15, f16);
                    this.mLastFocusX = f13;
                    this.mLastFocusY = f14;
                    this.mAlwaysInTapRegion = false;
                    this.mHandler.removeMessages(3);
                    this.mHandler.removeMessages(1);
                    this.mHandler.removeMessages(2);
                } else {
                    onFling = false;
                }
                if (i15 > this.mTouchSlopSquare) {
                    this.mAlwaysInBiggerTapRegion = false;
                }
            }
            return onFling;
        }

        @Override
        public void setIsLongpressEnabled(boolean z10) {
            this.mIsLongpressEnabled = z10;
        }

        @Override
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDoubleTapListener = onDoubleTapListener;
        }

        public class GestureHandler extends Handler {
            public GestureHandler() {
            }

            @Override
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 1) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase = GestureDetectorCompatImplBase.this;
                    gestureDetectorCompatImplBase.mListener.onShowPress(gestureDetectorCompatImplBase.mCurrentDownEvent);
                    return;
                }
                if (i10 == 2) {
                    GestureDetectorCompatImplBase.this.dispatchLongPress();
                    return;
                }
                if (i10 != 3) {
                    throw new RuntimeException("Unknown message " + ((Object) message));
                }
                GestureDetectorCompatImplBase gestureDetectorCompatImplBase2 = GestureDetectorCompatImplBase.this;
                GestureDetector.OnDoubleTapListener onDoubleTapListener = gestureDetectorCompatImplBase2.mDoubleTapListener;
                if (onDoubleTapListener != null) {
                    if (gestureDetectorCompatImplBase2.mStillDown) {
                        gestureDetectorCompatImplBase2.mDeferConfirmSingleTap = true;
                    } else {
                        onDoubleTapListener.onSingleTapConfirmed(gestureDetectorCompatImplBase2.mCurrentDownEvent);
                    }
                }
            }

            public GestureHandler(Handler handler) {
                super(handler.getLooper());
            }
        }
    }

    public static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        public GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }

        @Override
        public boolean isLongpressEnabled() {
            return this.mDetector.isLongpressEnabled();
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        @Override
        public void setIsLongpressEnabled(boolean z10) {
            this.mDetector.setIsLongpressEnabled(z10);
        }

        @Override
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDetector.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z10) {
        this.mImpl.setIsLongpressEnabled(z10);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(onDoubleTapListener);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
    }
}
