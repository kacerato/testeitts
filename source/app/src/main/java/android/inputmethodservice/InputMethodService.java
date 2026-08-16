package android.inputmethodservice;

import android.app.Dialog;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.Region;
import android.inputmethodservice.AbstractInputMethodService;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputBinding;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodSubtype;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/InputMethodService.class
 */
public class InputMethodService extends AbstractInputMethodService {
    public static final int BACK_DISPOSITION_DEFAULT = 0;
    public static final int BACK_DISPOSITION_WILL_DISMISS = 2;
    public static final int BACK_DISPOSITION_WILL_NOT_DISMISS = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/InputMethodService$InputMethodImpl.class
 */
    public class InputMethodImpl extends AbstractInputMethodService.AbstractInputMethodImpl {
        public InputMethodImpl() {
            super();
            throw new RuntimeException("Stub!");
        }

        @Override
        public void attachToken(IBinder token) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void bindInput(InputBinding binding) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void unbindInput() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void startInput(InputConnection ic2, EditorInfo attribute) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void restartInput(InputConnection ic2, EditorInfo attribute) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void hideSoftInput(int flags, ResultReceiver resultReceiver) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void showSoftInput(int flags, ResultReceiver resultReceiver) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void changeInputMethodSubtype(InputMethodSubtype subtype) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/InputMethodService$InputMethodSessionImpl.class
 */
    public class InputMethodSessionImpl extends AbstractInputMethodService.AbstractInputMethodSessionImpl {
        public InputMethodSessionImpl() {
            super();
            throw new RuntimeException("Stub!");
        }

        @Override
        public void finishInput() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void displayCompletions(CompletionInfo[] completions) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void updateExtractedText(int token, ExtractedText text) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void updateSelection(int oldSelStart, int oldSelEnd, int newSelStart, int newSelEnd, int candidatesStart, int candidatesEnd) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void viewClicked(boolean focusChanged) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void updateCursor(Rect newCursor) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void appPrivateCommand(String action, Bundle data) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void toggleSoftInput(int showFlags, int hideFlags) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void updateCursorAnchorInfo(CursorAnchorInfo info) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/InputMethodService$Insets.class
 */
    public static final class Insets {
        public static final int TOUCHABLE_INSETS_CONTENT = 1;
        public static final int TOUCHABLE_INSETS_FRAME = 0;
        public static final int TOUCHABLE_INSETS_REGION = 3;
        public static final int TOUCHABLE_INSETS_VISIBLE = 2;
        public int contentTopInsets;
        public int touchableInsets;
        public final Region touchableRegion;
        public int visibleTopInsets;

        public Insets() {
            throw new RuntimeException("Stub!");
        }
    }

    public InputMethodService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTheme(int theme) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean enableHardwareAcceleration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public void onInitializeInterface() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AbstractInputMethodService.AbstractInputMethodImpl onCreateInputMethodInterface() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AbstractInputMethodService.AbstractInputMethodSessionImpl onCreateInputMethodSessionInterface() {
        throw new RuntimeException("Stub!");
    }

    public LayoutInflater getLayoutInflater() {
        throw new RuntimeException("Stub!");
    }

    public Dialog getWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setBackDisposition(int disposition) {
        throw new RuntimeException("Stub!");
    }

    public int getBackDisposition() {
        throw new RuntimeException("Stub!");
    }

    public int getMaxWidth() {
        throw new RuntimeException("Stub!");
    }

    public InputBinding getCurrentInputBinding() {
        throw new RuntimeException("Stub!");
    }

    public InputConnection getCurrentInputConnection() {
        throw new RuntimeException("Stub!");
    }

    public boolean getCurrentInputStarted() {
        throw new RuntimeException("Stub!");
    }

    public EditorInfo getCurrentInputEditorInfo() {
        throw new RuntimeException("Stub!");
    }

    public void updateFullscreenMode() {
        throw new RuntimeException("Stub!");
    }

    public void onConfigureWindow(Window win, boolean isFullscreen, boolean isCandidatesOnly) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFullscreenMode() {
        throw new RuntimeException("Stub!");
    }

    public boolean onEvaluateFullscreenMode() {
        throw new RuntimeException("Stub!");
    }

    public void setExtractViewShown(boolean shown) {
        throw new RuntimeException("Stub!");
    }

    public boolean isExtractViewShown() {
        throw new RuntimeException("Stub!");
    }

    public void onComputeInsets(Insets outInsets) {
        throw new RuntimeException("Stub!");
    }

    public void updateInputViewShown() {
        throw new RuntimeException("Stub!");
    }

    public boolean isShowInputRequested() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInputViewShown() {
        throw new RuntimeException("Stub!");
    }

    public boolean onEvaluateInputViewShown() {
        throw new RuntimeException("Stub!");
    }

    public void setCandidatesViewShown(boolean shown) {
        throw new RuntimeException("Stub!");
    }

    public int getCandidatesHiddenVisibility() {
        throw new RuntimeException("Stub!");
    }

    public void showStatusIcon(int iconResId) {
        throw new RuntimeException("Stub!");
    }

    public void hideStatusIcon() {
        throw new RuntimeException("Stub!");
    }

    public void switchInputMethod(String id2) {
        throw new RuntimeException("Stub!");
    }

    public void setExtractView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void setCandidatesView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void setInputView(View view) {
        throw new RuntimeException("Stub!");
    }

    public View onCreateExtractTextView() {
        throw new RuntimeException("Stub!");
    }

    public View onCreateCandidatesView() {
        throw new RuntimeException("Stub!");
    }

    public View onCreateInputView() {
        throw new RuntimeException("Stub!");
    }

    public void onStartInputView(EditorInfo info, boolean restarting) {
        throw new RuntimeException("Stub!");
    }

    public void onFinishInputView(boolean finishingInput) {
        throw new RuntimeException("Stub!");
    }

    public void onStartCandidatesView(EditorInfo info, boolean restarting) {
        throw new RuntimeException("Stub!");
    }

    public void onFinishCandidatesView(boolean finishingInput) {
        throw new RuntimeException("Stub!");
    }

    public boolean onShowInputRequested(int flags, boolean configChange) {
        throw new RuntimeException("Stub!");
    }

    public void showWindow(boolean showInput) {
        throw new RuntimeException("Stub!");
    }

    public void hideWindow() {
        throw new RuntimeException("Stub!");
    }

    public void onWindowShown() {
        throw new RuntimeException("Stub!");
    }

    public void onWindowHidden() {
        throw new RuntimeException("Stub!");
    }

    public void onBindInput() {
        throw new RuntimeException("Stub!");
    }

    public void onUnbindInput() {
        throw new RuntimeException("Stub!");
    }

    public void onStartInput(EditorInfo attribute, boolean restarting) {
        throw new RuntimeException("Stub!");
    }

    public void onFinishInput() {
        throw new RuntimeException("Stub!");
    }

    public void onDisplayCompletions(CompletionInfo[] completions) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdateExtractedText(int token, ExtractedText text) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdateSelection(int oldSelStart, int oldSelEnd, int newSelStart, int newSelEnd, int candidatesStart, int candidatesEnd) {
        throw new RuntimeException("Stub!");
    }

    public void onViewClicked(boolean focusChanged) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onUpdateCursor(Rect newCursor) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdateCursorAnchorInfo(CursorAnchorInfo cursorAnchorInfo) {
        throw new RuntimeException("Stub!");
    }

    public void requestHideSelf(int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int count, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onAppPrivateCommand(String action, Bundle data) {
        throw new RuntimeException("Stub!");
    }

    public void sendDownUpKeyEvents(int keyEventCode) {
        throw new RuntimeException("Stub!");
    }

    public boolean sendDefaultEditorAction(boolean fromEnterKey) {
        throw new RuntimeException("Stub!");
    }

    public void sendKeyChar(char charCode) {
        throw new RuntimeException("Stub!");
    }

    public void onExtractedSelectionChanged(int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public void onExtractedTextClicked() {
        throw new RuntimeException("Stub!");
    }

    public void onExtractedCursorMovement(int dx, int dy) {
        throw new RuntimeException("Stub!");
    }

    public boolean onExtractTextContextMenuItem(int id2) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getTextForImeAction(int imeOptions) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdateExtractingVisibility(EditorInfo ei2) {
        throw new RuntimeException("Stub!");
    }

    public void onUpdateExtractingViews(EditorInfo ei2) {
        throw new RuntimeException("Stub!");
    }

    public void onExtractingInputChanged(EditorInfo ei2) {
        throw new RuntimeException("Stub!");
    }

    protected void onCurrentInputMethodSubtypeChanged(InputMethodSubtype newSubtype) {
        throw new RuntimeException("Stub!");
    }

    public int getInputMethodWindowRecommendedHeight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dump(FileDescriptor fd2, PrintWriter fout, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
