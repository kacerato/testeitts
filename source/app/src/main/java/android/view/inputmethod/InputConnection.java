package android.view.inputmethod;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputConnection.class
 */
public interface InputConnection {
    public static final int CURSOR_UPDATE_IMMEDIATE = 1;
    public static final int CURSOR_UPDATE_MONITOR = 2;
    public static final int GET_EXTRACTED_TEXT_MONITOR = 1;
    public static final int GET_TEXT_WITH_STYLES = 1;
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    CharSequence getTextBeforeCursor(int i10, int i11);

    CharSequence getTextAfterCursor(int i10, int i11);

    CharSequence getSelectedText(int i10);

    int getCursorCapsMode(int i10);

    ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i10);

    boolean deleteSurroundingText(int i10, int i11);

    boolean deleteSurroundingTextInCodePoints(int i10, int i11);

    boolean setComposingText(CharSequence charSequence, int i10);

    boolean setComposingRegion(int i10, int i11);

    boolean finishComposingText();

    boolean commitText(CharSequence charSequence, int i10);

    boolean commitCompletion(CompletionInfo completionInfo);

    boolean commitCorrection(CorrectionInfo correctionInfo);

    boolean setSelection(int i10, int i11);

    boolean performEditorAction(int i10);

    boolean performContextMenuAction(int i10);

    boolean beginBatchEdit();

    boolean endBatchEdit();

    boolean sendKeyEvent(KeyEvent keyEvent);

    boolean clearMetaKeyStates(int i10);

    boolean reportFullscreenMode(boolean z10);

    boolean performPrivateCommand(String str, Bundle bundle);

    boolean requestCursorUpdates(int i10);

    Handler getHandler();

    void closeConnection();

    boolean commitContent(InputContentInfo inputContentInfo, int i10, Bundle bundle);
}
