package android.service.voice;

import android.app.Dialog;
import android.app.VoiceInteractor;
import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession.class
 */
public class VoiceInteractionSession implements KeyEvent.Callback, ComponentCallbacks2 {
    public static final int SHOW_SOURCE_ACTIVITY = 16;
    public static final int SHOW_SOURCE_APPLICATION = 8;
    public static final int SHOW_SOURCE_ASSIST_GESTURE = 4;
    public static final int SHOW_WITH_ASSIST = 1;
    public static final int SHOW_WITH_SCREENSHOT = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$Request.class
 */
    public static class Request {
        Request() {
            throw new RuntimeException("Stub!");
        }

        public int getCallingUid() {
            throw new RuntimeException("Stub!");
        }

        public String getCallingPackage() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public boolean isActive() {
            throw new RuntimeException("Stub!");
        }

        public void cancel() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$ConfirmationRequest.class
 */
    public static final class ConfirmationRequest extends Request {
        ConfirmationRequest() {
            throw new RuntimeException("Stub!");
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public CharSequence getPrompt() {
            throw new RuntimeException("Stub!");
        }

        public void sendConfirmationResult(boolean confirmed, Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$PickOptionRequest.class
 */
    public static final class PickOptionRequest extends Request {
        PickOptionRequest() {
            throw new RuntimeException("Stub!");
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public CharSequence getPrompt() {
            throw new RuntimeException("Stub!");
        }

        public VoiceInteractor.PickOptionRequest.Option[] getOptions() {
            throw new RuntimeException("Stub!");
        }

        public void sendIntermediatePickOptionResult(VoiceInteractor.PickOptionRequest.Option[] selections, Bundle result) {
            throw new RuntimeException("Stub!");
        }

        public void sendPickOptionResult(VoiceInteractor.PickOptionRequest.Option[] selections, Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$CompleteVoiceRequest.class
 */
    public static final class CompleteVoiceRequest extends Request {
        CompleteVoiceRequest() {
            throw new RuntimeException("Stub!");
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public CharSequence getMessage() {
            throw new RuntimeException("Stub!");
        }

        public void sendCompleteResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$AbortVoiceRequest.class
 */
    public static final class AbortVoiceRequest extends Request {
        AbortVoiceRequest() {
            throw new RuntimeException("Stub!");
        }

        public VoiceInteractor.Prompt getVoicePrompt() {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public CharSequence getMessage() {
            throw new RuntimeException("Stub!");
        }

        public void sendAbortResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$CommandRequest.class
 */
    public static final class CommandRequest extends Request {
        CommandRequest() {
            throw new RuntimeException("Stub!");
        }

        public String getCommand() {
            throw new RuntimeException("Stub!");
        }

        public void sendIntermediateResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }

        public void sendResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSession$Insets.class
 */
    public static final class Insets {
        public static final int TOUCHABLE_INSETS_CONTENT = 1;
        public static final int TOUCHABLE_INSETS_FRAME = 0;
        public static final int TOUCHABLE_INSETS_REGION = 3;
        public final Rect contentInsets;
        public int touchableInsets;
        public final Region touchableRegion;

        public Insets() {
            throw new RuntimeException("Stub!");
        }
    }

    public VoiceInteractionSession(Context context) {
        throw new RuntimeException("Stub!");
    }

    public VoiceInteractionSession(Context context, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public Context getContext() {
        throw new RuntimeException("Stub!");
    }

    public void setDisabledShowContext(int flags) {
        throw new RuntimeException("Stub!");
    }

    public int getDisabledShowContext() {
        throw new RuntimeException("Stub!");
    }

    public int getUserDisabledShowContext() {
        throw new RuntimeException("Stub!");
    }

    public void show(Bundle args, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void hide() {
        throw new RuntimeException("Stub!");
    }

    public void setUiEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setTheme(int theme) {
        throw new RuntimeException("Stub!");
    }

    public void startVoiceActivity(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void startAssistantActivity(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void setKeepAwake(boolean keepAwake) {
        throw new RuntimeException("Stub!");
    }

    public void closeSystemDialogs() {
        throw new RuntimeException("Stub!");
    }

    public LayoutInflater getLayoutInflater() {
        throw new RuntimeException("Stub!");
    }

    public Dialog getWindow() {
        throw new RuntimeException("Stub!");
    }

    public void finish() {
        throw new RuntimeException("Stub!");
    }

    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    public void onPrepareShow(Bundle args, int showFlags) {
        throw new RuntimeException("Stub!");
    }

    public void onShow(Bundle args, int showFlags) {
        throw new RuntimeException("Stub!");
    }

    public void onHide() {
        throw new RuntimeException("Stub!");
    }

    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    public View onCreateContentView() {
        throw new RuntimeException("Stub!");
    }

    public void setContentView(View view) {
        throw new RuntimeException("Stub!");
    }

    public void onAssistStructureFailure(Throwable failure) {
        throw new RuntimeException("Stub!");
    }

    public void onHandleAssist(Bundle data, AssistStructure structure, AssistContent content) {
        throw new RuntimeException("Stub!");
    }

    public void onHandleAssistSecondary(Bundle data, AssistStructure structure, AssistContent content, int index, int count) {
        throw new RuntimeException("Stub!");
    }

    public void onHandleScreenshot(Bitmap screenshot) {
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
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int count, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void onBackPressed() {
        throw new RuntimeException("Stub!");
    }

    public void onCloseSystemDialogs() {
        throw new RuntimeException("Stub!");
    }

    public void onLockscreenShown() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLowMemory() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onTrimMemory(int level) {
        throw new RuntimeException("Stub!");
    }

    public void onComputeInsets(Insets outInsets) {
        throw new RuntimeException("Stub!");
    }

    public void onTaskStarted(Intent intent, int taskId) {
        throw new RuntimeException("Stub!");
    }

    public void onTaskFinished(Intent intent, int taskId) {
        throw new RuntimeException("Stub!");
    }

    public boolean[] onGetSupportedCommands(String[] commands) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestConfirmation(ConfirmationRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestPickOption(PickOptionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestCompleteVoice(CompleteVoiceRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestAbortVoice(AbortVoiceRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestCommand(CommandRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onCancelRequest(Request request) {
        throw new RuntimeException("Stub!");
    }

    public void dump(String prefix, FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
