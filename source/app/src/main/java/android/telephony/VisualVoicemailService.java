package android.telephony;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.telecom.PhoneAccountHandle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/VisualVoicemailService.class
 */
public abstract class VisualVoicemailService extends Service {
    public static final String SERVICE_INTERFACE = "android.telephony.VisualVoicemailService";

    public abstract void onCellServiceConnected(VisualVoicemailTask visualVoicemailTask, PhoneAccountHandle phoneAccountHandle);

    public abstract void onSmsReceived(VisualVoicemailTask visualVoicemailTask, VisualVoicemailSms visualVoicemailSms);

    public abstract void onSimRemoved(VisualVoicemailTask visualVoicemailTask, PhoneAccountHandle phoneAccountHandle);

    public abstract void onStopped(VisualVoicemailTask visualVoicemailTask);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/VisualVoicemailService$VisualVoicemailTask.class
 */
    public static class VisualVoicemailTask {
        VisualVoicemailTask() {
            throw new RuntimeException("Stub!");
        }

        public final void finish() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }
    }

    public VisualVoicemailService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
