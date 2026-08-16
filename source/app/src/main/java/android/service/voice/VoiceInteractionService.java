package android.service.voice;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.service.voice.AlwaysOnHotwordDetector;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionService.class
 */
public class VoiceInteractionService extends Service {
    public static final String SERVICE_INTERFACE = "android.service.voice.VoiceInteractionService";
    public static final String SERVICE_META_DATA = "android.voice_interaction";

    public VoiceInteractionService() {
        throw new RuntimeException("Stub!");
    }

    public void onLaunchVoiceAssistFromKeyguard() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isActiveService(Context context, ComponentName service) {
        throw new RuntimeException("Stub!");
    }

    public void setDisabledShowContext(int flags) {
        throw new RuntimeException("Stub!");
    }

    public int getDisabledShowContext() {
        throw new RuntimeException("Stub!");
    }

    public void showSession(Bundle args, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void onReady() {
        throw new RuntimeException("Stub!");
    }

    public void onShutdown() {
        throw new RuntimeException("Stub!");
    }

    public final AlwaysOnHotwordDetector createAlwaysOnHotwordDetector(String keyphrase, Locale locale, AlwaysOnHotwordDetector.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void dump(FileDescriptor fd2, PrintWriter pw, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
