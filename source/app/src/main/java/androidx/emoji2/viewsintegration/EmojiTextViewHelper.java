package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;

public final class EmojiTextViewHelper {
    private final HelperInternal mHelper;

    public static class HelperInternal {
        public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        public boolean isEnabled() {
            return false;
        }

        public void setAllCaps(boolean z10) {
        }

        public void setEnabled(boolean z10) {
        }

        public void updateTransformationMethod() {
        }

        public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            return transformationMethod;
        }
    }

    public static class HelperInternal19 extends HelperInternal {
        private final EmojiInputFilter mEmojiInputFilter;
        private boolean mEnabled = true;
        private final TextView mTextView;

        public HelperInternal19(TextView textView) {
            this.mTextView = textView;
            this.mEmojiInputFilter = new EmojiInputFilter(textView);
        }

        private InputFilter[] addEmojiInputFilterIfMissing(InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.mEmojiInputFilter) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.mEmojiInputFilter;
            return inputFilterArr2;
        }

        private SparseArray<InputFilter> getEmojiInputFilterPositionArray(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i10 = 0; i10 < inputFilterArr.length; i10++) {
                InputFilter inputFilter = inputFilterArr[i10];
                if (inputFilter instanceof EmojiInputFilter) {
                    sparseArray.put(i10, inputFilter);
                }
            }
            return sparseArray;
        }

        private InputFilter[] removeEmojiInputFilterIfPresent(InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> emojiInputFilterPositionArray = getEmojiInputFilterPositionArray(inputFilterArr);
            if (emojiInputFilterPositionArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - emojiInputFilterPositionArray.size()];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (emojiInputFilterPositionArray.indexOfKey(i11) < 0) {
                    inputFilterArr2[i10] = inputFilterArr[i11];
                    i10++;
                }
            }
            return inputFilterArr2;
        }

        private TransformationMethod unwrapForDisabled(TransformationMethod transformationMethod) {
            return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
        }

        private void updateFilters() {
            this.mTextView.setFilters(getFilters(this.mTextView.getFilters()));
        }

        private TransformationMethod wrapForEnabled(TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
        }

        @Override
        public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            return !this.mEnabled ? removeEmojiInputFilterIfPresent(inputFilterArr) : addEmojiInputFilterIfMissing(inputFilterArr);
        }

        @Override
        public boolean isEnabled() {
            return this.mEnabled;
        }

        @Override
        public void setAllCaps(boolean z10) {
            if (z10) {
                updateTransformationMethod();
            }
        }

        @Override
        public void setEnabled(boolean z10) {
            this.mEnabled = z10;
            updateTransformationMethod();
            updateFilters();
        }

        public void setEnabledUnsafe(boolean z10) {
            this.mEnabled = z10;
        }

        @Override
        public void updateTransformationMethod() {
            this.mTextView.setTransformationMethod(wrapTransformationMethod(this.mTextView.getTransformationMethod()));
        }

        @Override
        public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            return this.mEnabled ? wrapForEnabled(transformationMethod) : unwrapForDisabled(transformationMethod);
        }
    }

    public static class SkippingHelper19 extends HelperInternal {
        private final HelperInternal19 mHelperDelegate;

        public SkippingHelper19(TextView textView) {
            this.mHelperDelegate = new HelperInternal19(textView);
        }

        private boolean skipBecauseEmojiCompatNotInitialized() {
            return !EmojiCompat.isConfigured();
        }

        @Override
        public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
            return skipBecauseEmojiCompatNotInitialized() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
        }

        @Override
        public boolean isEnabled() {
            return this.mHelperDelegate.isEnabled();
        }

        @Override
        public void setAllCaps(boolean z10) {
            if (skipBecauseEmojiCompatNotInitialized()) {
                return;
            }
            this.mHelperDelegate.setAllCaps(z10);
        }

        @Override
        public void setEnabled(boolean z10) {
            if (skipBecauseEmojiCompatNotInitialized()) {
                this.mHelperDelegate.setEnabledUnsafe(z10);
            } else {
                this.mHelperDelegate.setEnabled(z10);
            }
        }

        @Override
        public void updateTransformationMethod() {
            if (skipBecauseEmojiCompatNotInitialized()) {
                return;
            }
            this.mHelperDelegate.updateTransformationMethod();
        }

        @Override
        public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
            return skipBecauseEmojiCompatNotInitialized() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
        }
    }

    public EmojiTextViewHelper(TextView textView) {
        this(textView, true);
    }

    public InputFilter[] getFilters(InputFilter[] inputFilterArr) {
        return this.mHelper.getFilters(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.mHelper.isEnabled();
    }

    public void setAllCaps(boolean z10) {
        this.mHelper.setAllCaps(z10);
    }

    public void setEnabled(boolean z10) {
        this.mHelper.setEnabled(z10);
    }

    public void updateTransformationMethod() {
        this.mHelper.updateTransformationMethod();
    }

    public TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
        return this.mHelper.wrapTransformationMethod(transformationMethod);
    }

    public EmojiTextViewHelper(TextView textView, boolean z10) {
        Preconditions.checkNotNull(textView, "textView cannot be null");
        if (!z10) {
            this.mHelper = new SkippingHelper19(textView);
        } else {
            this.mHelper = new HelperInternal19(textView);
        }
    }
}
