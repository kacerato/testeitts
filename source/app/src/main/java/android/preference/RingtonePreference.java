package android.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/RingtonePreference.class
 */
public class RingtonePreference extends Preference implements PreferenceManager.OnActivityResultListener {
    public RingtonePreference(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public RingtonePreference(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public RingtonePreference(Context context, AttributeSet attrs) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public RingtonePreference(Context context) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public int getRingtoneType() {
        throw new RuntimeException("Stub!");
    }

    public void setRingtoneType(int type) {
        throw new RuntimeException("Stub!");
    }

    public boolean getShowDefault() {
        throw new RuntimeException("Stub!");
    }

    public void setShowDefault(boolean showDefault) {
        throw new RuntimeException("Stub!");
    }

    public boolean getShowSilent() {
        throw new RuntimeException("Stub!");
    }

    public void setShowSilent(boolean showSilent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onClick() {
        throw new RuntimeException("Stub!");
    }

    protected void onPrepareRingtonePickerIntent(Intent ringtonePickerIntent) {
        throw new RuntimeException("Stub!");
    }

    protected void onSaveRingtone(Uri ringtoneUri) {
        throw new RuntimeException("Stub!");
    }

    protected Uri onRestoreRingtone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Object onGetDefaultValue(TypedArray a10, int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValueObj) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {
        throw new RuntimeException("Stub!");
    }
}
