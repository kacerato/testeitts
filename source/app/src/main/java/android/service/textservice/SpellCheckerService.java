package android.service.textservice;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SuggestionsInfo;
import android.view.textservice.TextInfo;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/textservice/SpellCheckerService.class
 */
public abstract class SpellCheckerService extends Service {
    public static final String SERVICE_INTERFACE = "android.service.textservice.SpellCheckerService";

    public abstract Session createSession();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/textservice/SpellCheckerService$Session.class
 */
    public static abstract class Session {
        public abstract void onCreate();

        public abstract SuggestionsInfo onGetSuggestions(TextInfo textInfo, int i10);

        public Session() {
            throw new RuntimeException("Stub!");
        }

        public SuggestionsInfo[] onGetSuggestionsMultiple(TextInfo[] textInfos, int suggestionsLimit, boolean sequentialWords) {
            throw new RuntimeException("Stub!");
        }

        public SentenceSuggestionsInfo[] onGetSentenceSuggestionsMultiple(TextInfo[] textInfos, int suggestionsLimit) {
            throw new RuntimeException("Stub!");
        }

        public void onCancel() {
            throw new RuntimeException("Stub!");
        }

        public void onClose() {
            throw new RuntimeException("Stub!");
        }

        public String getLocale() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getBundle() {
            throw new RuntimeException("Stub!");
        }
    }

    public SpellCheckerService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
