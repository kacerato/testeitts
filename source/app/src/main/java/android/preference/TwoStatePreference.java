package android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/TwoStatePreference.class
 */
public abstract class TwoStatePreference extends Preference {
    public TwoStatePreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public TwoStatePreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public TwoStatePreference(Context context, AttributeSet attrs) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public TwoStatePreference(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onClick() {
        throw new RuntimeException("Stub!");
    }

    public void setChecked(boolean checked) {
        throw new RuntimeException("Stub!");
    }

    public boolean isChecked() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean shouldDisableDependents() {
        throw new RuntimeException("Stub!");
    }

    public void setSummaryOn(CharSequence summary) {
        throw new RuntimeException("Stub!");
    }

    public void setSummaryOn(int summaryResId) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getSummaryOn() {
        throw new RuntimeException("Stub!");
    }

    public void setSummaryOff(CharSequence summary) {
        throw new RuntimeException("Stub!");
    }

    public void setSummaryOff(int summaryResId) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getSummaryOff() {
        throw new RuntimeException("Stub!");
    }

    public boolean getDisableDependentsState() {
        throw new RuntimeException("Stub!");
    }

    public void setDisableDependentsState(boolean disableDependentsState) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Object onGetDefaultValue(TypedArray a10, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }
}
