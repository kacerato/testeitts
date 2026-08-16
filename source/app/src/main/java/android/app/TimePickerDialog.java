package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.TimePicker;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/TimePickerDialog.class
 */
public class TimePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, TimePicker.OnTimeChangedListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/TimePickerDialog$OnTimeSetListener.class
 */
    public interface OnTimeSetListener {
        void onTimeSet(TimePicker timePicker, int i10, int i11);
    }

    public TimePickerDialog(Context context, OnTimeSetListener listener, int hourOfDay, int minute, boolean is24HourView) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public TimePickerDialog(Context context, int themeResId, OnTimeSetListener listener, int hourOfDay, int minute, boolean is24HourView) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTimeChanged(TimePicker view, int hourOfDay, int minute) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void show() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        throw new RuntimeException("Stub!");
    }

    public void updateTime(int hourOfDay, int minuteOfHour) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Bundle onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        throw new RuntimeException("Stub!");
    }
}
