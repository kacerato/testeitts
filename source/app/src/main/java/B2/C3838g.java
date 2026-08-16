package b2;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import w1.C15879a;

public class C3838g extends AbstractC3834c<C3838g, a, b> {

    public interface a extends InterfaceC3832a<C3838g> {
    }

    public interface b extends InterfaceC3833b<C3838g> {
    }

    public C3838g(@NonNull Context context) {
        this(context, null);
    }

    @Override
    public boolean K() {
        return super.K();
    }

    @Override
    public boolean O() {
        return super.O();
    }

    @Override
    public boolean b0() {
        if (getActiveThumbIndex() != -1) {
            return true;
        }
        setActiveThumbIndex(0);
        return true;
    }

    @Override
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return super.getAccessibilityClassName();
    }

    @Override
    public int getActiveThumbIndex() {
        return super.getActiveThumbIndex();
    }

    @Override
    public int getFocusedThumbIndex() {
        return super.getFocusedThumbIndex();
    }

    @Override
    @Dimension
    public int getHaloRadius() {
        return super.getHaloRadius();
    }

    @Override
    @NonNull
    public ColorStateList getHaloTintList() {
        return super.getHaloTintList();
    }

    @Override
    public int getLabelBehavior() {
        return super.getLabelBehavior();
    }

    @Override
    public float getStepSize() {
        return super.getStepSize();
    }

    @Override
    public float getThumbElevation() {
        return super.getThumbElevation();
    }

    @Override
    @Dimension
    public int getThumbRadius() {
        return super.getThumbRadius();
    }

    @Override
    public ColorStateList getThumbStrokeColor() {
        return super.getThumbStrokeColor();
    }

    @Override
    public float getThumbStrokeWidth() {
        return super.getThumbStrokeWidth();
    }

    @Override
    @NonNull
    public ColorStateList getThumbTintList() {
        return super.getThumbTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTickActiveTintList() {
        return super.getTickActiveTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return super.getTickInactiveTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTickTintList() {
        return super.getTickTintList();
    }

    @Override
    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return super.getTrackActiveTintList();
    }

    @Override
    @Dimension
    public int getTrackHeight() {
        return super.getTrackHeight();
    }

    @Override
    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return super.getTrackInactiveTintList();
    }

    @Override
    @Dimension
    public int getTrackSidePadding() {
        return super.getTrackSidePadding();
    }

    @Override
    @NonNull
    public ColorStateList getTrackTintList() {
        return super.getTrackTintList();
    }

    @Override
    @Dimension
    public int getTrackWidth() {
        return super.getTrackWidth();
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    @Override
    public float getValueFrom() {
        return super.getValueFrom();
    }

    @Override
    public float getValueTo() {
        return super.getValueTo();
    }

    @Override
    public void o() {
        super.o();
    }

    @Override
    public boolean onKeyDown(int i10, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i10, @NonNull KeyEvent keyEvent) {
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void p() {
        super.p();
    }

    @Override
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
    }

    @Override
    public void setFocusedThumbIndex(int i10) {
        super.setFocusedThumbIndex(i10);
    }

    @Override
    public void setHaloRadius(@IntRange(from = 0) @Dimension int i10) {
        super.setHaloRadius(i10);
    }

    @Override
    public void setHaloRadiusResource(@DimenRes int i10) {
        super.setHaloRadiusResource(i10);
    }

    @Override
    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override
    public void setLabelBehavior(int i10) {
        super.setLabelBehavior(i10);
    }

    @Override
    public void setLabelFormatter(@Nullable InterfaceC3836e interfaceC3836e) {
        super.setLabelFormatter(interfaceC3836e);
    }

    @Override
    public void setStepSize(float f10) {
        super.setStepSize(f10);
    }

    @Override
    public void setThumbElevation(float f10) {
        super.setThumbElevation(f10);
    }

    @Override
    public void setThumbElevationResource(@DimenRes int i10) {
        super.setThumbElevationResource(i10);
    }

    @Override
    public void setThumbRadius(@IntRange(from = 0) @Dimension int i10) {
        super.setThumbRadius(i10);
    }

    @Override
    public void setThumbRadiusResource(@DimenRes int i10) {
        super.setThumbRadiusResource(i10);
    }

    @Override
    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    @Override
    public void setThumbStrokeColorResource(@ColorRes int i10) {
        super.setThumbStrokeColorResource(i10);
    }

    @Override
    public void setThumbStrokeWidth(float f10) {
        super.setThumbStrokeWidth(f10);
    }

    @Override
    public void setThumbStrokeWidthResource(@DimenRes int i10) {
        super.setThumbStrokeWidthResource(i10);
    }

    @Override
    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        super.setThumbTintList(colorStateList);
    }

    @Override
    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override
    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    @Override
    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        super.setTickTintList(colorStateList);
    }

    @Override
    public void setTickVisible(boolean z10) {
        super.setTickVisible(z10);
    }

    @Override
    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override
    public void setTrackHeight(@IntRange(from = 0) @Dimension int i10) {
        super.setTrackHeight(i10);
    }

    @Override
    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override
    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackTintList(colorStateList);
    }

    public void setValue(float f10) {
        setValues(Float.valueOf(f10));
    }

    @Override
    public void setValueFrom(float f10) {
        super.setValueFrom(f10);
    }

    @Override
    public void setValueTo(float f10) {
        super.setValueTo(f10);
    }

    public C3838g(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122348dd);
    }

    public C3838g(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.value});
        if (obtainStyledAttributes.hasValue(0)) {
            setValue(obtainStyledAttributes.getFloat(0, 0.0f));
        }
        obtainStyledAttributes.recycle();
    }
}
