package android.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor.class
 */
public final class VoiceInteractor {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$Request.class
 */
    public static abstract class Request {
        Request() {
            throw new RuntimeException("Stub!");
        }

        public String getName() {
            throw new RuntimeException("Stub!");
        }

        public void cancel() {
            throw new RuntimeException("Stub!");
        }

        public Context getContext() {
            throw new RuntimeException("Stub!");
        }

        public Activity getActivity() {
            throw new RuntimeException("Stub!");
        }

        public void onCancel() {
            throw new RuntimeException("Stub!");
        }

        public void onAttached(Activity activity) {
            throw new RuntimeException("Stub!");
        }

        public void onDetached() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$ConfirmationRequest.class
 */
    public static class ConfirmationRequest extends Request {
        public ConfirmationRequest(Prompt prompt, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onConfirmationResult(boolean confirmed, Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$PickOptionRequest.class
 */
    public static class PickOptionRequest extends Request {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$PickOptionRequest$Option.class
 */
        public static final class Option implements Parcelable {
            public static final Parcelable.Creator<Option> CREATOR = null;

            public Option(CharSequence label, int index) {
                throw new RuntimeException("Stub!");
            }

            public Option addSynonym(CharSequence synonym) {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getLabel() {
                throw new RuntimeException("Stub!");
            }

            public int getIndex() {
                throw new RuntimeException("Stub!");
            }

            public int countSynonyms() {
                throw new RuntimeException("Stub!");
            }

            public CharSequence getSynonymAt(int index) {
                throw new RuntimeException("Stub!");
            }

            public void setExtras(Bundle extras) {
                throw new RuntimeException("Stub!");
            }

            public Bundle getExtras() {
                throw new RuntimeException("Stub!");
            }

            @Override
            public int describeContents() {
                throw new RuntimeException("Stub!");
            }

            @Override
            public void writeToParcel(Parcel dest, int flags) {
                throw new RuntimeException("Stub!");
            }
        }

        public PickOptionRequest(Prompt prompt, Option[] options, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPickOptionResult(boolean finished, Option[] selections, Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$CompleteVoiceRequest.class
 */
    public static class CompleteVoiceRequest extends Request {
        public CompleteVoiceRequest(Prompt prompt, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onCompleteResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$AbortVoiceRequest.class
 */
    public static class AbortVoiceRequest extends Request {
        public AbortVoiceRequest(Prompt prompt, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onAbortResult(Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$CommandRequest.class
 */
    public static class CommandRequest extends Request {
        public CommandRequest(String command, Bundle args) {
            throw new RuntimeException("Stub!");
        }

        public void onCommandResult(boolean isCompleted, Bundle result) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/VoiceInteractor$Prompt.class
 */
    public static class Prompt implements Parcelable {
        public static final Parcelable.Creator<Prompt> CREATOR = null;

        public Prompt(CharSequence[] voicePrompts, CharSequence visualPrompt) {
            throw new RuntimeException("Stub!");
        }

        public Prompt(CharSequence prompt) {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getVoicePromptAt(int index) {
            throw new RuntimeException("Stub!");
        }

        public int countVoicePrompts() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getVisualPrompt() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    VoiceInteractor() {
        throw new RuntimeException("Stub!");
    }

    public boolean submitRequest(Request request) {
        throw new RuntimeException("Stub!");
    }

    public boolean submitRequest(Request request, String name) {
        throw new RuntimeException("Stub!");
    }

    public Request[] getActiveRequests() {
        throw new RuntimeException("Stub!");
    }

    public Request getActiveRequest(String name) {
        throw new RuntimeException("Stub!");
    }

    public boolean[] supportsCommands(String[] commands) {
        throw new RuntimeException("Stub!");
    }
}
