package android.webkit;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.WebStorage;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebChromeClient.class
 */
public class WebChromeClient {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebChromeClient$CustomViewCallback.class
 */
    public interface CustomViewCallback {
        void onCustomViewHidden();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebChromeClient$FileChooserParams.class
 */
    public static abstract class FileChooserParams {
        public static final int MODE_OPEN = 0;
        public static final int MODE_OPEN_MULTIPLE = 1;
        public static final int MODE_SAVE = 3;

        public abstract int getMode();

        public abstract String[] getAcceptTypes();

        public abstract boolean isCaptureEnabled();

        public abstract CharSequence getTitle();

        public abstract String getFilenameHint();

        public abstract Intent createIntent();

        public FileChooserParams() {
            throw new RuntimeException("Stub!");
        }

        public static Uri[] parseResult(int resultCode, Intent data) {
            throw new RuntimeException("Stub!");
        }
    }

    public WebChromeClient() {
        throw new RuntimeException("Stub!");
    }

    public void onProgressChanged(WebView view, int newProgress) {
        throw new RuntimeException("Stub!");
    }

    public void onReceivedTitle(WebView view, String title) {
        throw new RuntimeException("Stub!");
    }

    public void onReceivedIcon(WebView view, Bitmap icon) {
        throw new RuntimeException("Stub!");
    }

    public void onReceivedTouchIconUrl(WebView view, String url, boolean precomposed) {
        throw new RuntimeException("Stub!");
    }

    public void onShowCustomView(View view, CustomViewCallback callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onShowCustomView(View view, int requestedOrientation, CustomViewCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void onHideCustomView() {
        throw new RuntimeException("Stub!");
    }

    public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestFocus(WebView view) {
        throw new RuntimeException("Stub!");
    }

    public void onCloseWindow(WebView window) {
        throw new RuntimeException("Stub!");
    }

    public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        throw new RuntimeException("Stub!");
    }

    public boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        throw new RuntimeException("Stub!");
    }

    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        throw new RuntimeException("Stub!");
    }

    public boolean onJsBeforeUnload(WebView view, String url, String message, JsResult result) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onExceededDatabaseQuota(String url, String databaseIdentifier, long quota, long estimatedDatabaseSize, long totalQuota, WebStorage.QuotaUpdater quotaUpdater) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onReachedMaxAppCacheSize(long requiredStorage, long quota, WebStorage.QuotaUpdater quotaUpdater) {
        throw new RuntimeException("Stub!");
    }

    public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void onGeolocationPermissionsHidePrompt() {
        throw new RuntimeException("Stub!");
    }

    public void onPermissionRequest(PermissionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onPermissionRequestCanceled(PermissionRequest request) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean onJsTimeout() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void onConsoleMessage(String message, int lineNumber, String sourceID) {
        throw new RuntimeException("Stub!");
    }

    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getDefaultVideoPoster() {
        throw new RuntimeException("Stub!");
    }

    public View getVideoLoadingProgressView() {
        throw new RuntimeException("Stub!");
    }

    public void getVisitedHistory(ValueCallback<String[]> callback) {
        throw new RuntimeException("Stub!");
    }

    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, FileChooserParams fileChooserParams) {
        throw new RuntimeException("Stub!");
    }
}
