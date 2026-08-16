package android.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AdapterViewAnimator.class
 */
public abstract class AdapterViewAnimator extends AdapterView<Adapter> implements Advanceable {
    public AdapterViewAnimator(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterViewAnimator(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterViewAnimator(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AdapterViewAnimator(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setDisplayedChild(int whichChild) {
        throw new RuntimeException("Stub!");
    }

    public int getDisplayedChild() {
        throw new RuntimeException("Stub!");
    }

    public void showNext() {
        throw new RuntimeException("Stub!");
    }

    public void showPrevious() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    public View getCurrentView() {
        throw new RuntimeException("Stub!");
    }

    public ObjectAnimator getInAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void setInAnimation(ObjectAnimator inAnimation) {
        throw new RuntimeException("Stub!");
    }

    public ObjectAnimator getOutAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void setOutAnimation(ObjectAnimator outAnimation) {
        throw new RuntimeException("Stub!");
    }

    public void setInAnimation(Context context, int resourceID) {
        throw new RuntimeException("Stub!");
    }

    public void setOutAnimation(Context context, int resourceID) {
        throw new RuntimeException("Stub!");
    }

    public void setAnimateFirstView(boolean animate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Adapter getAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAdapter(Adapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public void setRemoteViewsAdapter(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSelection(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getSelectedView() {
        throw new RuntimeException("Stub!");
    }

    public void deferNotifyDataSetChanged() {
        throw new RuntimeException("Stub!");
    }

    public boolean onRemoteAdapterConnected() {
        throw new RuntimeException("Stub!");
    }

    public void onRemoteAdapterDisconnected() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void advance() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void fyiWillBeAdvancedByHostKThx() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
