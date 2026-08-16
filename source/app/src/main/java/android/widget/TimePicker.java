package android.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ViewStructure;
import android.view.autofill.AutofillValue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/TimePicker.class
 */
public class TimePicker extends FrameLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/TimePicker$OnTimeChangedListener.class
 */
    public interface OnTimeChangedListener {
        void onTimeChanged(TimePicker timePicker, int i10, int i11);
    }

    public TimePicker(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TimePicker(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TimePicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TimePicker(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void setHour(int hour) {
        throw new RuntimeException("Stub!");
    }

    public int getHour() {
        throw new RuntimeException("Stub!");
    }

    public void setMinute(int minute) {
        throw new RuntimeException("Stub!");
    }

    public int getMinute() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setCurrentHour(Integer currentHour) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Integer getCurrentHour() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setCurrentMinute(Integer currentMinute) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Integer getCurrentMinute() {
        throw new RuntimeException("Stub!");
    }

    public void setIs24HourView(Boolean is24HourView) {
        throw new RuntimeException("Stub!");
    }

    public boolean is24HourView() {
        throw new RuntimeException("Stub!");
    }

    public void setOnTimeChangedListener(OnTimeChangedListener onTimeChangedListener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    public boolean validateInput() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void autofill(AutofillValue value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getAutofillType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AutofillValue getAutofillValue() {
        throw new RuntimeException("Stub!");
    }
}
