package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.autofill.AutofillValue;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RadioGroup.class
 */
public class RadioGroup extends LinearLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RadioGroup$OnCheckedChangeListener.class
 */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(RadioGroup radioGroup, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/RadioGroup$LayoutParams.class
 */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(int w10, int h10, float initWeight) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.LayoutParams p10) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super((LinearLayout.LayoutParams) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        protected void setBaseAttributes(TypedArray a10, int widthAttr, int heightAttr) {
            throw new RuntimeException("Stub!");
        }
    }

    public RadioGroup(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public RadioGroup(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishInflate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    public void check(int id2) {
        throw new RuntimeException("Stub!");
    }

    public int getCheckedRadioButtonId() {
        throw new RuntimeException("Stub!");
    }

    public void clearCheck() {
        throw new RuntimeException("Stub!");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onProvideAutofillStructure(ViewStructure structure, int flags) {
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
