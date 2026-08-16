package android.webkit;

import android.net.Uri;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebResourceRequest.class
 */
public interface WebResourceRequest {
    Uri getUrl();

    boolean isForMainFrame();

    boolean isRedirect();

    boolean hasGesture();

    String getMethod();

    Map<String, String> getRequestHeaders();
}
