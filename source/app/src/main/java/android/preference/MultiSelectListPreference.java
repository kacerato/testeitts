package android.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/MultiSelectListPreference.class
 */
public class MultiSelectListPreference extends DialogPreference {
    public MultiSelectListPreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public MultiSelectListPreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public MultiSelectListPreference(Context context, AttributeSet attrs) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public MultiSelectListPreference(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void setEntries(CharSequence[] entries) {
        throw new RuntimeException("Stub!");
    }

    public void setEntries(int entriesResId) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence[] getEntries() {
        throw new RuntimeException("Stub!");
    }

    public void setEntryValues(CharSequence[] entryValues) {
        throw new RuntimeException("Stub!");
    }

    public void setEntryValues(int entryValuesResId) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence[] getEntryValues() {
        throw new RuntimeException("Stub!");
    }

    public void setValues(Set<String> values) {
        throw new RuntimeException("Stub!");
    }

    public Set<String> getValues() {
        throw new RuntimeException("Stub!");
    }

    public int findIndexOfValue(String value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onDialogClosed(boolean positiveResult) {
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
}
