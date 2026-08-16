package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    public static final int[] f64580e = {R.attr.state_checked};

    public boolean f64581b;

    public boolean f64582c;

    public boolean f64583d;

    public class a extends AccessibilityDelegateCompat {
        public a() {
        }

        @Override
        public void onInitializeAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(CheckableImageButton.this.a());
            accessibilityNodeInfoCompat.setChecked(CheckableImageButton.this.isChecked());
        }
    }

    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        public boolean f64585b;

        public static class a implements Parcelable.ClassLoaderCreator<b> {
            @Override
            @NonNull
            public b createFromParcel(@NonNull Parcel parcel) {
                return new b(parcel, null);
            }

            @Override
            @NonNull
            public b createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            @Override
            @NonNull
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        private void b(@NonNull Parcel parcel) {
            this.f64585b = parcel.readInt() == 1;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f64585b ? 1 : 0);
        }

        public b(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            b(parcel);
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public boolean a() {
        return this.f64582c;
    }

    public boolean b() {
        return this.f64583d;
    }

    @Override
    public boolean isChecked() {
        return this.f64581b;
    }

    @Override
    public int[] onCreateDrawableState(int i10) {
        if (!this.f64581b) {
            return super.onCreateDrawableState(i10);
        }
        int[] iArr = f64580e;
        return View.mergeDrawableStates(super.onCreateDrawableState(i10 + iArr.length), iArr);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setChecked(bVar.f64585b);
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f64585b = this.f64581b;
        return bVar;
    }

    public void setCheckable(boolean z10) {
        if (this.f64582c != z10) {
            this.f64582c = z10;
            sendAccessibilityEvent(0);
        }
    }

    @Override
    public void setChecked(boolean z10) {
        if (!this.f64582c || this.f64581b == z10) {
            return;
        }
        this.f64581b = z10;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z10) {
        this.f64583d = z10;
    }

    @Override
    public void setPressed(boolean z10) {
        if (this.f64583d) {
            super.setPressed(z10);
        }
    }

    @Override
    public void toggle() {
        setChecked(!this.f64581b);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f64582c = true;
        this.f64583d = true;
        ViewCompat.setAccessibilityDelegate(this, new a());
    }
}
