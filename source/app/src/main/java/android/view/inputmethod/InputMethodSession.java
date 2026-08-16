package android.view.inputmethod;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputMethodSession.class
 */
public interface InputMethodSession {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputMethodSession$EventCallback.class
 */
    public interface EventCallback {
        void finishedEvent(int i10, boolean z10);
    }

    void finishInput();

    void updateSelection(int i10, int i11, int i12, int i13, int i14, int i15);

    void viewClicked(boolean z10);

    void updateCursor(Rect rect);

    void displayCompletions(CompletionInfo[] completionInfoArr);

    void updateExtractedText(int i10, ExtractedText extractedText);

    void dispatchKeyEvent(int i10, KeyEvent keyEvent, EventCallback eventCallback);

    void dispatchTrackballEvent(int i10, MotionEvent motionEvent, EventCallback eventCallback);

    void dispatchGenericMotionEvent(int i10, MotionEvent motionEvent, EventCallback eventCallback);

    void appPrivateCommand(String str, Bundle bundle);

    void toggleSoftInput(int i10, int i11);

    void updateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo);
}
