package android.preference;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceGroup.class
 */
public abstract class PreferenceGroup extends Preference {
    public PreferenceGroup(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public PreferenceGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public PreferenceGroup(Context context, AttributeSet attrs) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public void setOrderingAsAdded(boolean orderingAsAdded) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOrderingAsAdded() {
        throw new RuntimeException("Stub!");
    }

    public void addItemFromInflater(Preference preference) {
        throw new RuntimeException("Stub!");
    }

    public int getPreferenceCount() {
        throw new RuntimeException("Stub!");
    }

    public Preference getPreference(int index) {
        throw new RuntimeException("Stub!");
    }

    public boolean addPreference(Preference preference) {
        throw new RuntimeException("Stub!");
    }

    public boolean removePreference(Preference preference) {
        throw new RuntimeException("Stub!");
    }

    public void removeAll() {
        throw new RuntimeException("Stub!");
    }

    protected boolean onPrepareAddPreference(Preference preference) {
        throw new RuntimeException("Stub!");
    }

    public Preference findPreference(CharSequence key) {
        throw new RuntimeException("Stub!");
    }

    protected boolean isOnSameScreenAsChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onAttachedToActivity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onPrepareForRemoval() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void notifyDependencyChange(boolean disableDependents) {
        throw new RuntimeException("Stub!");
    }

    protected void dispatchSaveInstanceState(Bundle container) {
        throw new RuntimeException("Stub!");
    }

    protected void dispatchRestoreInstanceState(Bundle container) {
        throw new RuntimeException("Stub!");
    }
}
