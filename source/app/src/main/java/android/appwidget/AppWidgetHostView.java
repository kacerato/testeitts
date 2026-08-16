package android.appwidget;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/appwidget/AppWidgetHostView.class
 */
public class AppWidgetHostView extends FrameLayout {
    public AppWidgetHostView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AppWidgetHostView(Context context, int animationIn, int animationOut) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setAppWidget(int appWidgetId, AppWidgetProviderInfo info) {
        throw new RuntimeException("Stub!");
    }

    public static Rect getDefaultPaddingForWidget(Context context, ComponentName component, Rect padding) {
        throw new RuntimeException("Stub!");
    }

    public int getAppWidgetId() {
        throw new RuntimeException("Stub!");
    }

    public AppWidgetProviderInfo getAppWidgetInfo() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void updateAppWidgetSize(Bundle newOptions, int minWidth, int minHeight, int maxWidth, int maxHeight) {
        throw new RuntimeException("Stub!");
    }

    public void updateAppWidgetOptions(Bundle options) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public void setExecutor(Executor executor) {
        throw new RuntimeException("Stub!");
    }

    public void updateAppWidget(RemoteViews remoteViews) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        throw new RuntimeException("Stub!");
    }

    protected void prepareView(View view) {
        throw new RuntimeException("Stub!");
    }

    protected View getDefaultView() {
        throw new RuntimeException("Stub!");
    }

    protected View getErrorView() {
        throw new RuntimeException("Stub!");
    }
}
