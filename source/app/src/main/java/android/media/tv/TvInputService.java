package android.media.tv;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputService.class
 */
public abstract class TvInputService extends Service {
    public static final String SERVICE_INTERFACE = "android.media.tv.TvInputService";
    public static final String SERVICE_META_DATA = "android.media.tv.input";

    public abstract Session onCreateSession(String str);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputService$Session.class
 */
    public static abstract class Session implements KeyEvent.Callback {
        public abstract void onRelease();

        public abstract boolean onSetSurface(Surface surface);

        public abstract void onSetStreamVolume(float f10);

        public abstract boolean onTune(Uri uri);

        public abstract void onSetCaptionEnabled(boolean z10);

        public Session(Context context) {
            throw new RuntimeException("Stub!");
        }

        public void setOverlayViewEnabled(boolean enable) {
            throw new RuntimeException("Stub!");
        }

        public void notifyChannelRetuned(Uri channelUri) {
            throw new RuntimeException("Stub!");
        }

        public void notifyTracksChanged(List<TvTrackInfo> tracks) {
            throw new RuntimeException("Stub!");
        }

        public void notifyTrackSelected(int type, String trackId) {
            throw new RuntimeException("Stub!");
        }

        public void notifyVideoAvailable() {
            throw new RuntimeException("Stub!");
        }

        public void notifyVideoUnavailable(int reason) {
            throw new RuntimeException("Stub!");
        }

        public void notifyContentAllowed() {
            throw new RuntimeException("Stub!");
        }

        public void notifyContentBlocked(TvContentRating rating) {
            throw new RuntimeException("Stub!");
        }

        public void notifyTimeShiftStatusChanged(int status) {
            throw new RuntimeException("Stub!");
        }

        public void layoutSurface(int left, int top, int right, int bottom) {
            throw new RuntimeException("Stub!");
        }

        public void onSurfaceChanged(int format, int width, int height) {
            throw new RuntimeException("Stub!");
        }

        public void onOverlayViewSizeChanged(int width, int height) {
            throw new RuntimeException("Stub!");
        }

        public boolean onTune(Uri channelUri, Bundle params) {
            throw new RuntimeException("Stub!");
        }

        public void onUnblockContent(TvContentRating unblockedRating) {
            throw new RuntimeException("Stub!");
        }

        public boolean onSelectTrack(int type, String trackId) {
            throw new RuntimeException("Stub!");
        }

        public void onAppPrivateCommand(String action, Bundle data) {
            throw new RuntimeException("Stub!");
        }

        public View onCreateOverlayView() {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftPlay(Uri recordedProgramUri) {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftPause() {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftResume() {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftSeekTo(long timeMs) {
            throw new RuntimeException("Stub!");
        }

        public void onTimeShiftSetPlaybackParams(PlaybackParams params) {
            throw new RuntimeException("Stub!");
        }

        public long onTimeShiftGetStartPosition() {
            throw new RuntimeException("Stub!");
        }

        public long onTimeShiftGetCurrentPosition() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onKeyDown(int keyCode, KeyEvent event) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onKeyLongPress(int keyCode, KeyEvent event) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onKeyMultiple(int keyCode, int count, KeyEvent event) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onKeyUp(int keyCode, KeyEvent event) {
            throw new RuntimeException("Stub!");
        }

        public boolean onTouchEvent(MotionEvent event) {
            throw new RuntimeException("Stub!");
        }

        public boolean onTrackballEvent(MotionEvent event) {
            throw new RuntimeException("Stub!");
        }

        public boolean onGenericMotionEvent(MotionEvent event) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputService$RecordingSession.class
 */
    public static abstract class RecordingSession {
        public abstract void onTune(Uri uri);

        public abstract void onStartRecording(Uri uri);

        public abstract void onStopRecording();

        public abstract void onRelease();

        public RecordingSession(Context context) {
            throw new RuntimeException("Stub!");
        }

        public void notifyTuned(Uri channelUri) {
            throw new RuntimeException("Stub!");
        }

        public void notifyRecordingStopped(Uri recordedProgramUri) {
            throw new RuntimeException("Stub!");
        }

        public void notifyError(int error) {
            throw new RuntimeException("Stub!");
        }

        public void onTune(Uri channelUri, Bundle params) {
            throw new RuntimeException("Stub!");
        }

        public void onAppPrivateCommand(String action, Bundle data) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvInputService$HardwareSession.class
 */
    public static abstract class HardwareSession extends Session {
        public abstract String getHardwareInputId();

        public HardwareSession(Context context) {
            super((Context) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean onSetSurface(Surface surface) {
            throw new RuntimeException("Stub!");
        }

        public void onHardwareVideoAvailable() {
            throw new RuntimeException("Stub!");
        }

        public void onHardwareVideoUnavailable(int reason) {
            throw new RuntimeException("Stub!");
        }
    }

    public TvInputService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public RecordingSession onCreateRecordingSession(String inputId) {
        throw new RuntimeException("Stub!");
    }
}
