package android.widget;

import android.content.Context;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RatingBar.class
 */
public class RatingBar extends AbsSeekBar {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RatingBar$OnRatingBarChangeListener.class
 */
    public interface OnRatingBarChangeListener {
        void onRatingChanged(RatingBar ratingBar, float f10, boolean z10);
    }

    public RatingBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RatingBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RatingBar(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RatingBar(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setOnRatingBarChangeListener(OnRatingBarChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public OnRatingBarChangeListener getOnRatingBarChangeListener() {
        throw new RuntimeException("Stub!");
    }

    public void setIsIndicator(boolean isIndicator) {
        throw new RuntimeException("Stub!");
    }

    public boolean isIndicator() {
        throw new RuntimeException("Stub!");
    }

    public void setNumStars(int numStars) {
        throw new RuntimeException("Stub!");
    }

    public int getNumStars() {
        throw new RuntimeException("Stub!");
    }

    public void setRating(float rating) {
        throw new RuntimeException("Stub!");
    }

    public float getRating() {
        throw new RuntimeException("Stub!");
    }

    public void setStepSize(float stepSize) {
        throw new RuntimeException("Stub!");
    }

    public float getStepSize() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void setMax(int max) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
