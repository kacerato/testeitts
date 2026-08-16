package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.media.AudioAttributes;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.widget.MediaController;
import java.io.InputStream;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/VideoView.class
 */
public class VideoView extends SurfaceView implements MediaController.MediaPlayerControl {
    public VideoView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public VideoView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public VideoView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public VideoView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public int resolveAdjustedSize(int desiredSize, int measureSpec) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoPath(String path) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoURI(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoURI(Uri uri, Map<String, String> headers) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioFocusRequest(int focusGain) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioAttributes(AudioAttributes attributes) {
        throw new RuntimeException("Stub!");
    }

    public void addSubtitleSource(InputStream is, MediaFormat format) {
        throw new RuntimeException("Stub!");
    }

    public void stopPlayback() {
        throw new RuntimeException("Stub!");
    }

    public void setMediaController(MediaController controller) {
        throw new RuntimeException("Stub!");
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener l10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTrackballEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void pause() {
        throw new RuntimeException("Stub!");
    }

    public void suspend() {
        throw new RuntimeException("Stub!");
    }

    public void resume() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getDuration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCurrentPosition() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void seekTo(int msec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isPlaying() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBufferPercentage() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canPause() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canSeekBackward() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canSeekForward() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getAudioSessionId() {
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
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }
}
