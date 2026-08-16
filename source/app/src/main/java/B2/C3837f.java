package b2;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.s;
import java.util.ArrayList;
import java.util.List;
import w1.C15879a;

public class C3837f extends AbstractC3834c<C3837f, b, c> {

    public float f32905q2;

    public int f32906v2;

    public interface b extends InterfaceC3832a<C3837f> {
    }

    public interface c extends InterfaceC3833b<C3837f> {
    }

    public static class d extends AbsSavedState {
        public static final Parcelable.Creator<d> CREATOR = new a();

        public float f32907b;

        public int f32908c;

        public static class a implements Parcelable.Creator<d> {
            @Override
            public d createFromParcel(Parcel parcel) {
                return new d(parcel);
            }

            @Override
            public d[] newArray(int i10) {
                return new d[i10];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f32907b);
            parcel.writeInt(this.f32908c);
        }

        public d(Parcelable parcelable) {
            super(parcelable);
        }

        public d(Parcel parcel) {
            super(parcel.readParcelable(d.class.getClassLoader()));
            this.f32907b = parcel.readFloat();
            this.f32908c = parcel.readInt();
        }
    }

    public C3837f(@NonNull Context context) {
        this(context, null);
    }

    public static List<Float> z0(TypedArray typedArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < typedArray.length(); i10++) {
            arrayList.add(Float.valueOf(typedArray.getFloat(i10, -1.0f)));
        }
        return arrayList;
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
    public float getMinSeparation() {
        return this.f32905q2;
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

    @Override
    public float getValueFrom() {
        return super.getValueFrom();
    }

    @Override
    public float getValueTo() {
        return super.getValueTo();
    }

    @Override
    @NonNull
    public List<Float> getValues() {
        return super.getValues();
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
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        d dVar = (d) parcelable;
        super.onRestoreInstanceState(dVar.getSuperState());
        this.f32905q2 = dVar.f32907b;
        int i10 = dVar.f32908c;
        this.f32906v2 = i10;
        setSeparationUnit(i10);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        d dVar = new d(super.onSaveInstanceState());
        dVar.f32907b = this.f32905q2;
        dVar.f32908c = this.f32906v2;
        return dVar;
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

    public void setMinSeparation(@Dimension float f10) {
        this.f32905q2 = f10;
        this.f32906v2 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f10) {
        this.f32905q2 = f10;
        this.f32906v2 = 1;
        setSeparationUnit(1);
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

    @Override
    public void setValueFrom(float f10) {
        super.setValueFrom(f10);
    }

    @Override
    public void setValueTo(float f10) {
        super.setValueTo(f10);
    }

    @Override
    public void setValues(@NonNull Float... fArr) {
        super.setValues(fArr);
    }

    public C3837f(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122348dd);
    }

    @Override
    public void setValues(@NonNull List<Float> list) {
        super.setValues(list);
    }

    public C3837f(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray j10 = s.j(context, attributeSet, C15879a.o.zp, i10, AbstractC3834c.f32822R1, new int[0]);
        int i11 = C15879a.o.Bp;
        if (j10.hasValue(i11)) {
            setValues(z0(j10.getResources().obtainTypedArray(j10.getResourceId(i11, 0))));
        }
        this.f32905q2 = j10.getDimension(C15879a.o.Ap, 0.0f);
        j10.recycle();
    }
}
