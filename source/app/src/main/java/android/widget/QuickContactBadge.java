package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/QuickContactBadge.class
 */
public class QuickContactBadge extends ImageView implements View.OnClickListener {
    protected String[] mExcludeMimes;

    public QuickContactBadge(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        this.mExcludeMimes = null;
        throw new RuntimeException("Stub!");
    }

    public QuickContactBadge(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        this.mExcludeMimes = null;
        throw new RuntimeException("Stub!");
    }

    public QuickContactBadge(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        this.mExcludeMimes = null;
        throw new RuntimeException("Stub!");
    }

    public QuickContactBadge(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        this.mExcludeMimes = null;
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void setMode(int size) {
        throw new RuntimeException("Stub!");
    }

    public void setPrioritizedMimeType(String prioritizedMimeType) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void setImageToDefault() {
        throw new RuntimeException("Stub!");
    }

    public void assignContactUri(Uri contactUri) {
        throw new RuntimeException("Stub!");
    }

    public void assignContactFromEmail(String emailAddress, boolean lazyLookup) {
        throw new RuntimeException("Stub!");
    }

    public void assignContactFromEmail(String emailAddress, boolean lazyLookup, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public void assignContactFromPhone(String phoneNumber, boolean lazyLookup) {
        throw new RuntimeException("Stub!");
    }

    public void assignContactFromPhone(String phoneNumber, boolean lazyLookup, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public void setOverlay(Drawable overlay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onClick(View v10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public void setExcludeMimes(String[] excludeMimes) {
        throw new RuntimeException("Stub!");
    }
}
