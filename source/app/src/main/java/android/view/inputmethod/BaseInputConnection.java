package android.view.inputmethod;

import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Spannable;
import android.view.KeyEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/BaseInputConnection.class
 */
public class BaseInputConnection implements InputConnection {
    public BaseInputConnection(View targetView, boolean fullEditor) {
        throw new RuntimeException("Stub!");
    }

    public static final void removeComposingSpans(Spannable text) {
        throw new RuntimeException("Stub!");
    }

    public static void setComposingSpans(Spannable text) {
        throw new RuntimeException("Stub!");
    }

    public static int getComposingSpanStart(Spannable text) {
        throw new RuntimeException("Stub!");
    }

    public static int getComposingSpanEnd(Spannable text) {
        throw new RuntimeException("Stub!");
    }

    public Editable getEditable() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean beginBatchEdit() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean endBatchEdit() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void closeConnection() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean clearMetaKeyStates(int states) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean commitCompletion(CompletionInfo text) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean commitText(CharSequence text, int newCursorPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteSurroundingText(int beforeLength, int afterLength) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteSurroundingTextInCodePoints(int beforeLength, int afterLength) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean finishComposingText() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCursorCapsMode(int reqModes) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ExtractedText getExtractedText(ExtractedTextRequest request, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getTextBeforeCursor(int length, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getSelectedText(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getTextAfterCursor(int length, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performEditorAction(int actionCode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performContextMenuAction(int id2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performPrivateCommand(String action, Bundle data) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestCursorUpdates(int cursorUpdateMode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Handler getHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setComposingText(CharSequence text, int newCursorPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setComposingRegion(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setSelection(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean sendKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean reportFullscreenMode(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean commitContent(InputContentInfo inputContentInfo, int flags, Bundle opts) {
        throw new RuntimeException("Stub!");
    }
}
