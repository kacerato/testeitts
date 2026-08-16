package android.media.tv;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Region;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvView.class
 */
public class TvView extends ViewGroup {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvView$OnUnhandledInputEventListener.class
 */
    public interface OnUnhandledInputEventListener {
        boolean onUnhandledInputEvent(InputEvent inputEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvView$TimeShiftPositionCallback.class
 */
    public static abstract class TimeShiftPositionCallback {
        public TimeShiftPositionCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftStartPositionChanged(String inputId, long timeMs) {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftCurrentPositionChanged(String inputId, long timeMs) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvView$TvInputCallback.class
 */
    public static abstract class TvInputCallback {
        public TvInputCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionFailed(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onDisconnected(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onChannelRetuned(String inputId, Uri channelUri) {
            throw new RuntimeException("Stub!");
        }

        public void onTracksChanged(String inputId, List<TvTrackInfo> tracks) {
            throw new RuntimeException("Stub!");
        }

        public void onTrackSelected(String inputId, int type, String trackId) {
            throw new RuntimeException("Stub!");
        }

        public void onVideoSizeChanged(String inputId, int width, int height) {
            throw new RuntimeException("Stub!");
        }

        public void onVideoAvailable(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onVideoUnavailable(String inputId, int reason) {
            throw new RuntimeException("Stub!");
        }

        public void onContentAllowed(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onContentBlocked(String inputId, TvContentRating rating) {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftStatusChanged(String inputId, int status) {
            throw new RuntimeException("Stub!");
        }
    }

    public TvView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TvView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TvView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setCallback(TvInputCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void setZOrderMediaOverlay(boolean isMediaOverlay) {
        throw new RuntimeException("Stub!");
    }

    public void setZOrderOnTop(boolean onTop) {
        throw new RuntimeException("Stub!");
    }

    public void setStreamVolume(float volume) {
        throw new RuntimeException("Stub!");
    }

    public void tune(String inputId, Uri channelUri) {
        throw new RuntimeException("Stub!");
    }

    public void tune(String inputId, Uri channelUri, Bundle params) {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public void setCaptionEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void selectTrack(int type, String trackId) {
        throw new RuntimeException("Stub!");
    }

    public List<TvTrackInfo> getTracks(int type) {
        throw new RuntimeException("Stub!");
    }

    public String getSelectedTrack(int type) {
        throw new RuntimeException("Stub!");
    }

    public void timeShiftPlay(String inputId, Uri recordedProgramUri) {
        throw new RuntimeException("Stub!");
    }

    public void timeShiftPause() {
        throw new RuntimeException("Stub!");
    }

    public void timeShiftResume() {
        throw new RuntimeException("Stub!");
    }

    public void timeShiftSeekTo(long timeMs) {
        throw new RuntimeException("Stub!");
    }

    public void timeShiftSetPlaybackParams(PlaybackParams params) {
        throw new RuntimeException("Stub!");
    }

    public void setTimeShiftPositionCallback(TimeShiftPositionCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void sendAppPrivateCommand(String action, Bundle data) {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchUnhandledInputEvent(InputEvent event) {
        throw new RuntimeException("Stub!");
    }

    public boolean onUnhandledInputEvent(InputEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void setOnUnhandledInputEventListener(OnUnhandledInputEventListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchWindowFocusChanged(boolean hasFocus) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean gatherTransparentRegion(Region region) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }
}
