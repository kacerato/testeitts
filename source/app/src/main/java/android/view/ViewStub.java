package android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewStub.class
 */
@RemoteViews.RemoteView
public final class ViewStub extends View {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewStub$OnInflateListener.class
 */
    public interface OnInflateListener {
        void onInflate(ViewStub viewStub, View view);
    }

    public ViewStub(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewStub(Context context, int layoutResource) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewStub(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewStub(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ViewStub(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public int getInflatedId() {
        throw new RuntimeException("Stub!");
    }

    public void setInflatedId(int inflatedId) {
        throw new RuntimeException("Stub!");
    }

    public int getLayoutResource() {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutResource(int layoutResource) {
        throw new RuntimeException("Stub!");
    }

    public void setLayoutInflater(LayoutInflater inflater) {
        throw new RuntimeException("Stub!");
    }

    public LayoutInflater getLayoutInflater() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
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
    public void setVisibility(int visibility) {
        throw new RuntimeException("Stub!");
    }

    public View inflate() {
        throw new RuntimeException("Stub!");
    }

    public void setOnInflateListener(OnInflateListener inflateListener) {
        throw new RuntimeException("Stub!");
    }
}
