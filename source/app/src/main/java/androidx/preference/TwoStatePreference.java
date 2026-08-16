package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;

public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    public boolean getDisableDependentsState() {
        return this.mDisableDependentsState;
    }

    public CharSequence getSummaryOff() {
        return this.mSummaryOff;
    }

    public CharSequence getSummaryOn() {
        return this.mSummaryOn;
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    @Override
    public void onClick() {
        super.onClick();
        boolean z10 = !isChecked();
        if (callChangeListener(Boolean.valueOf(z10))) {
            setChecked(z10);
        }
    }

    @Override
    public Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.mChecked);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.mChecked = isChecked();
        return savedState;
    }

    @Override
    public void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        setChecked(getPersistedBoolean(((Boolean) obj).booleanValue()));
    }

    public void setChecked(boolean z10) {
        boolean z11 = this.mChecked != z10;
        if (z11 || !this.mCheckedSet) {
            this.mChecked = z10;
            this.mCheckedSet = true;
            persistBoolean(z10);
            if (z11) {
                notifyDependencyChange(shouldDisableDependents());
                notifyChanged();
            }
        }
    }

    public void setDisableDependentsState(boolean z10) {
        this.mDisableDependentsState = z10;
    }

    public void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (isChecked()) {
            return;
        }
        notifyChanged();
    }

    public void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (isChecked()) {
            notifyChanged();
        }
    }

    @Override
    public boolean shouldDisableDependents() {
        return (this.mDisableDependentsState ? this.mChecked : !this.mChecked) || super.shouldDisableDependents();
    }

    public void syncSummaryView(PreferenceViewHolder preferenceViewHolder) {
        syncSummaryView(preferenceViewHolder.findViewById(android.R.id.summary));
    }

    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        boolean mChecked;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mChecked = parcel.readInt() == 1;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.mChecked ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void syncSummaryView(View view) {
        boolean z10;
        int i10;
        if (!(view instanceof TextView)) {
            return;
        }
        TextView textView = (TextView) view;
        if (this.mChecked && !TextUtils.isEmpty(this.mSummaryOn)) {
            textView.setText(this.mSummaryOn);
        } else if (!this.mChecked && !TextUtils.isEmpty(this.mSummaryOff)) {
            textView.setText(this.mSummaryOff);
        } else {
            z10 = true;
            if (z10) {
                CharSequence summary = getSummary();
                if (!TextUtils.isEmpty(summary)) {
                    textView.setText(summary);
                    z10 = false;
                }
            }
            i10 = z10 ? 8 : 0;
            if (i10 == textView.getVisibility()) {
                textView.setVisibility(i10);
                return;
            }
            return;
        }
        z10 = false;
        if (z10) {
        }
        if (z10) {
        }
        if (i10 == textView.getVisibility()) {
        }
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    public void setSummaryOff(int i10) {
        setSummaryOff(getContext().getString(i10));
    }

    public void setSummaryOn(int i10) {
        setSummaryOn(getContext().getString(i10));
    }
}
