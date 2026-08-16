package android.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.DatePicker;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/DatePickerDialog.class
 */
public class DatePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, DatePicker.OnDateChangedListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/DatePickerDialog$OnDateSetListener.class
 */
    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i10, int i11, int i12);
    }

    public DatePickerDialog(Context context) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePickerDialog(Context context, int themeResId) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePickerDialog(Context context, OnDateSetListener listener, int year, int month, int dayOfMonth) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    public DatePickerDialog(Context context, int themeResId, OnDateSetListener listener, int year, int monthOfYear, int dayOfMonth) {
        super((Context) null, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDateChanged(DatePicker view, int year, int month, int dayOfMonth) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDateSetListener(OnDateSetListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        throw new RuntimeException("Stub!");
    }

    public DatePicker getDatePicker() {
        throw new RuntimeException("Stub!");
    }

    public void updateDate(int year, int month, int dayOfMonth) {
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
