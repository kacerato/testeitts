package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/MediaController.class
 */
public class MediaController extends FrameLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/MediaController$MediaPlayerControl.class
 */
    public interface MediaPlayerControl {
        void start();

        void pause();

        int getDuration();

        int getCurrentPosition();

        void seekTo(int i10);

        boolean isPlaying();

        int getBufferPercentage();

        boolean canPause();

        boolean canSeekBackward();

        boolean canSeekForward();

        int getAudioSessionId();
    }

    public MediaController(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public MediaController(Context context, boolean useFastForward) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public MediaController(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    public void setMediaPlayer(MediaPlayerControl player) {
        throw new RuntimeException("Stub!");
    }

    public void setAnchorView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void show() {
        throw new RuntimeException("Stub!");
    }

    public void show(int timeout) {
        throw new RuntimeException("Stub!");
    }

    public boolean isShowing() {
        throw new RuntimeException("Stub!");
    }

    public void hide() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTrackballEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public void setPrevNextListeners(View.OnClickListener next, View.OnClickListener prev) {
        throw new RuntimeException("Stub!");
    }
}
