package android.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ViewStructure;
import android.view.autofill.AutofillValue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/DatePicker.class
 */
public class DatePicker extends FrameLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/DatePicker$OnDateChangedListener.class
 */
    public interface OnDateChangedListener {
        void onDateChanged(DatePicker datePicker, int i10, int i11, int i12);
    }

    public DatePicker(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePicker(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePicker(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public void init(int year, int monthOfYear, int dayOfMonth, OnDateChangedListener onDateChangedListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDateChangedListener(OnDateChangedListener onDateChangedListener) {
        throw new RuntimeException("Stub!");
    }

    public void updateDate(int year, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public int getYear() {
        throw new RuntimeException("Stub!");
    }

    public int getMonth() {
        throw new RuntimeException("Stub!");
    }

    public int getDayOfMonth() {
        throw new RuntimeException("Stub!");
    }

    public long getMinDate() {
        throw new RuntimeException("Stub!");
    }

    public void setMinDate(long minDate) {
        throw new RuntimeException("Stub!");
    }

    public long getMaxDate() {
        throw new RuntimeException("Stub!");
    }

    public void setMaxDate(long maxDate) {
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
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    public void setFirstDayOfWeek(int firstDayOfWeek) {
        throw new RuntimeException("Stub!");
    }

    public int getFirstDayOfWeek() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean getCalendarViewShown() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public CalendarView getCalendarView() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setCalendarViewShown(boolean shown) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean getSpinnersShown() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setSpinnersShown(boolean shown) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
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
