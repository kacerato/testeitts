package android.telecom;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.telecom.Call;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/CallScreeningService.class
 */
public abstract class CallScreeningService extends Service {
    public static final String SERVICE_INTERFACE = "android.telecom.CallScreeningService";

    public abstract void onScreenCall(Call.Details details);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/CallScreeningService$CallResponse.class
 */
    public static class CallResponse {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/CallScreeningService$CallResponse$Builder.class
 */
        public static class Builder {
            public Builder() {
                throw new RuntimeException("Stub!");
            }

            public Builder setDisallowCall(boolean shouldDisallowCall) {
                throw new RuntimeException("Stub!");
            }

            public Builder setRejectCall(boolean shouldRejectCall) {
                throw new RuntimeException("Stub!");
            }

            public Builder setSkipCallLog(boolean shouldSkipCallLog) {
                throw new RuntimeException("Stub!");
            }

            public Builder setSkipNotification(boolean shouldSkipNotification) {
                throw new RuntimeException("Stub!");
            }

            public CallResponse build() {
                throw new RuntimeException("Stub!");
            }
        }

        CallResponse() {
            throw new RuntimeException("Stub!");
        }

        public boolean getDisallowCall() {
            throw new RuntimeException("Stub!");
        }

        public boolean getRejectCall() {
            throw new RuntimeException("Stub!");
        }

        public boolean getSkipCallLog() {
            throw new RuntimeException("Stub!");
        }

        public boolean getSkipNotification() {
            throw new RuntimeException("Stub!");
        }
    }

    public CallScreeningService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onUnbind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final void respondToCall(Call.Details callDetails, CallResponse response) {
        throw new RuntimeException("Stub!");
    }
}
