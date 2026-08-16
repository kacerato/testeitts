package android.service.voice;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/VoiceInteractionSessionService.class
 */
public abstract class VoiceInteractionSessionService extends Service {
    public abstract VoiceInteractionSession onNewSession(Bundle bundle);

    public VoiceInteractionSessionService() {
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

    @Override
    protected void dump(FileDescriptor fd2, PrintWriter writer, String[] args) {
        throw new RuntimeException("Stub!");
    }
}
