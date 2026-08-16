package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.util.Preconditions;

public final class EmojiEditTextHelper {
    private int mEmojiReplaceStrategy;
    private final HelperInternal mHelper;
    private int mMaxEmojiCount;

    public static class HelperInternal {
        public KeyListener getKeyListener(KeyListener keyListener) {
            return keyListener;
        }

        public boolean isEnabled() {
            return false;
        }

        public InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection;
        }

        public void setEmojiReplaceStrategy(int i10) {
        }

        public void setEnabled(boolean z10) {
        }

        public void setMaxEmojiCount(int i10) {
        }
    }

    public static class HelperInternal19 extends HelperInternal {
        private final EditText mEditText;
        private final EmojiTextWatcher mTextWatcher;

        public HelperInternal19(EditText editText, boolean z10) {
            this.mEditText = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z10);
            this.mTextWatcher = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            editText.setEditableFactory(EmojiEditableFactory.getInstance());
        }

        @Override
        public KeyListener getKeyListener(KeyListener keyListener) {
            if (keyListener instanceof EmojiKeyListener) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
        }

        @Override
        public boolean isEnabled() {
            return this.mTextWatcher.isEnabled();
        }

        @Override
        public InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.mEditText, inputConnection, editorInfo);
        }

        @Override
        public void setEmojiReplaceStrategy(int i10) {
            this.mTextWatcher.setEmojiReplaceStrategy(i10);
        }

        @Override
        public void setEnabled(boolean z10) {
            this.mTextWatcher.setEnabled(z10);
        }

        @Override
        public void setMaxEmojiCount(int i10) {
            this.mTextWatcher.setMaxEmojiCount(i10);
        }
    }

    public EmojiEditTextHelper(EditText editText) {
        this(editText, true);
    }

    public int getEmojiReplaceStrategy() {
        return this.mEmojiReplaceStrategy;
    }

    public KeyListener getKeyListener(KeyListener keyListener) {
        return this.mHelper.getKeyListener(keyListener);
    }

    public int getMaxEmojiCount() {
        return this.mMaxEmojiCount;
    }

    public boolean isEnabled() {
        return this.mHelper.isEnabled();
    }

    public InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.mHelper.onCreateInputConnection(inputConnection, editorInfo);
    }

    public void setEmojiReplaceStrategy(int i10) {
        this.mEmojiReplaceStrategy = i10;
        this.mHelper.setEmojiReplaceStrategy(i10);
    }

    public void setEnabled(boolean z10) {
        this.mHelper.setEnabled(z10);
    }

    public void setMaxEmojiCount(int i10) {
        Preconditions.checkArgumentNonnegative(i10, "maxEmojiCount should be greater than 0");
        this.mMaxEmojiCount = i10;
        this.mHelper.setMaxEmojiCount(i10);
    }

    public EmojiEditTextHelper(EditText editText, boolean z10) {
        this.mMaxEmojiCount = Integer.MAX_VALUE;
        this.mEmojiReplaceStrategy = 0;
        Preconditions.checkNotNull(editText, "editText cannot be null");
        this.mHelper = new HelperInternal19(editText, z10);
    }
}
