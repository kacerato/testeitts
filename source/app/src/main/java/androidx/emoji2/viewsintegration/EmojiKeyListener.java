package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

final class EmojiKeyListener implements KeyListener {
    private final EmojiCompatHandleKeyDownHelper mEmojiCompatHandleKeyDownHelper;
    private final KeyListener mKeyListener;

    public static class EmojiCompatHandleKeyDownHelper {
        public boolean handleKeyDown(Editable editable, int i10, KeyEvent keyEvent) {
            return EmojiCompat.handleOnKeyDown(editable, i10, keyEvent);
        }
    }

    public EmojiKeyListener(KeyListener keyListener) {
        this(keyListener, new EmojiCompatHandleKeyDownHelper());
    }

    @Override
    public void clearMetaKeyState(View view, Editable editable, int i10) {
        this.mKeyListener.clearMetaKeyState(view, editable, i10);
    }

    @Override
    public int getInputType() {
        return this.mKeyListener.getInputType();
    }

    @Override
    public boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.mEmojiCompatHandleKeyDownHelper.handleKeyDown(editable, i10, keyEvent) || this.mKeyListener.onKeyDown(view, editable, i10, keyEvent);
    }

    @Override
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyOther(view, editable, keyEvent);
    }

    @Override
    public boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyUp(view, editable, i10, keyEvent);
    }

    public EmojiKeyListener(KeyListener keyListener, EmojiCompatHandleKeyDownHelper emojiCompatHandleKeyDownHelper) {
        this.mKeyListener = keyListener;
        this.mEmojiCompatHandleKeyDownHelper = emojiCompatHandleKeyDownHelper;
    }
}
