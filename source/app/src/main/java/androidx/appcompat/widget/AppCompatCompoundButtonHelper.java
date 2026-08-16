package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.CompoundButtonCompat;

class AppCompatCompoundButtonHelper {
    private ColorStateList mButtonTintList = null;
    private PorterDuff.Mode mButtonTintMode = null;
    private boolean mHasButtonTint = false;
    private boolean mHasButtonTintMode = false;
    private boolean mSkipNextApply;
    private final CompoundButton mView;

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    public void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable != null) {
            if (this.mHasButtonTint || this.mHasButtonTintMode) {
                Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
                if (this.mHasButtonTint) {
                    DrawableCompat.setTintList(mutate, this.mButtonTintList);
                }
                if (this.mHasButtonTintMode) {
                    DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.mView.getDrawableState());
                }
                this.mView.setButtonDrawable(mutate);
            }
        }
    }

    public int getCompoundPaddingLeft(int i10) {
        return i10;
    }

    public ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005e A[Catch: all -> 0x0039, TryCatch #1 {all -> 0x0039, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:9:0x0056, B:11:0x005e, B:12:0x0067, B:14:0x006f, B:21:0x003b, B:23:0x0043, B:25:0x0049), top: B:2:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006f A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #1 {all -> 0x0039, blocks: (B:3:0x001d, B:5:0x0025, B:8:0x002b, B:9:0x0056, B:11:0x005e, B:12:0x0067, B:14:0x006f, B:21:0x003b, B:23:0x0043, B:25:0x0049), top: B:2:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadFromAttributes(AttributeSet attributeSet, int i10) {
        int resourceId;
        int i11;
        int i12;
        int resourceId2;
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.CompoundButton;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i10, 0);
        CompoundButton compoundButton = this.mView;
        ViewCompat.saveAttributeDataForStyleable(compoundButton, compoundButton.getContext(), iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i10, 0);
        try {
            int i13 = R.styleable.CompoundButton_buttonCompat;
            if (obtainStyledAttributes.hasValue(i13) && (resourceId2 = obtainStyledAttributes.getResourceId(i13, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.mView;
                    compoundButton2.setButtonDrawable(AppCompatResources.getDrawable(compoundButton2.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
                i11 = R.styleable.CompoundButton_buttonTint;
                if (obtainStyledAttributes.hasValue(i11)) {
                    CompoundButtonCompat.setButtonTintList(this.mView, obtainStyledAttributes.getColorStateList(i11));
                }
                i12 = R.styleable.CompoundButton_buttonTintMode;
                if (obtainStyledAttributes.hasValue(i12)) {
                    CompoundButtonCompat.setButtonTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i12, -1), null));
                }
            }
            int i14 = R.styleable.CompoundButton_android_button;
            if (obtainStyledAttributes.hasValue(i14) && (resourceId = obtainStyledAttributes.getResourceId(i14, 0)) != 0) {
                CompoundButton compoundButton3 = this.mView;
                compoundButton3.setButtonDrawable(AppCompatResources.getDrawable(compoundButton3.getContext(), resourceId));
            }
            i11 = R.styleable.CompoundButton_buttonTint;
            if (obtainStyledAttributes.hasValue(i11)) {
            }
            i12 = R.styleable.CompoundButton_buttonTintMode;
            if (obtainStyledAttributes.hasValue(i12)) {
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
        } else {
            this.mSkipNextApply = true;
            applyButtonTint();
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }
}
