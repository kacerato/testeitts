package android.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.autofill.AutofillValue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/AbsSpinner.class
 */
public abstract class AbsSpinner extends AdapterView<SpinnerAdapter> {
    public AbsSpinner(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSpinner(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSpinner(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public AbsSpinner(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAdapter(SpinnerAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    public void setSelection(int position, boolean animate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSelection(int position) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View getSelectedView() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void requestLayout() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public SpinnerAdapter getAdapter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    public int pointToPosition(int x10, int y10) {
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
    public CharSequence getAccessibilityClassName() {
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
