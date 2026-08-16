package android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/MultiAutoCompleteTextView.class
 */
public class MultiAutoCompleteTextView extends AutoCompleteTextView {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/MultiAutoCompleteTextView$Tokenizer.class
 */
    public interface Tokenizer {
        int findTokenStart(CharSequence charSequence, int i10);

        int findTokenEnd(CharSequence charSequence, int i10);

        CharSequence terminateToken(CharSequence charSequence);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/MultiAutoCompleteTextView$CommaTokenizer.class
 */
    public static class CommaTokenizer implements Tokenizer {
        public CommaTokenizer() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int findTokenStart(CharSequence text, int cursor) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int findTokenEnd(CharSequence text, int cursor) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public CharSequence terminateToken(CharSequence text) {
            throw new RuntimeException("Stub!");
        }
    }

    public MultiAutoCompleteTextView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0, (Resources.Theme) null);
        throw new RuntimeException("Stub!");
    }

    public MultiAutoCompleteTextView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0, (Resources.Theme) null);
        throw new RuntimeException("Stub!");
    }

    public MultiAutoCompleteTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0, (Resources.Theme) null);
        throw new RuntimeException("Stub!");
    }

    public MultiAutoCompleteTextView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0, (Resources.Theme) null);
        throw new RuntimeException("Stub!");
    }

    public void setTokenizer(Tokenizer t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void performFiltering(CharSequence text, int keyCode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean enoughToFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void performValidation() {
        throw new RuntimeException("Stub!");
    }

    protected void performFiltering(CharSequence text, int start, int end, int keyCode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void replaceText(CharSequence text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
