package android.webkit;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.net.Uri;
import android.net.http.SslCertificate;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.print.PrintDocumentAdapter;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsoluteLayout;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView.class
 */
public class WebView extends AbsoluteLayout implements ViewTreeObserver.OnGlobalFocusChangeListener, ViewGroup.OnHierarchyChangeListener {
    public static final int RENDERER_PRIORITY_BOUND = 1;
    public static final int RENDERER_PRIORITY_IMPORTANT = 2;
    public static final int RENDERER_PRIORITY_WAIVED = 0;
    public static final String SCHEME_GEO = "geo:0,0?q=";
    public static final String SCHEME_MAILTO = "mailto:";
    public static final String SCHEME_TEL = "tel:";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView$FindListener.class
 */
    public interface FindListener {
        void onFindResultReceived(int i10, int i11, boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView$PictureListener.class
 */
    @Deprecated
    public interface PictureListener {
        @Deprecated
        void onNewPicture(WebView webView, Picture picture);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView$WebViewTransport.class
 */
    public class WebViewTransport {
        public WebViewTransport() {
            throw new RuntimeException("Stub!");
        }

        public synchronized void setWebView(WebView webview) {
            throw new RuntimeException("Stub!");
        }

        public synchronized WebView getWebView() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView$VisualStateCallback.class
 */
    public static abstract class VisualStateCallback {
        public abstract void onComplete(long j10);

        public VisualStateCallback() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebView$HitTestResult.class
 */
    public static class HitTestResult {

        @Deprecated
        public static final int ANCHOR_TYPE = 1;
        public static final int EDIT_TEXT_TYPE = 9;
        public static final int EMAIL_TYPE = 4;
        public static final int GEO_TYPE = 3;

        @Deprecated
        public static final int IMAGE_ANCHOR_TYPE = 6;
        public static final int IMAGE_TYPE = 5;
        public static final int PHONE_TYPE = 2;
        public static final int SRC_ANCHOR_TYPE = 7;
        public static final int SRC_IMAGE_ANCHOR_TYPE = 8;
        public static final int UNKNOWN_TYPE = 0;

        HitTestResult() {
            throw new RuntimeException("Stub!");
        }

        public int getType() {
            throw new RuntimeException("Stub!");
        }

        public String getExtra() {
            throw new RuntimeException("Stub!");
        }
    }

    public WebView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public WebView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public WebView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public WebView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public WebView(Context context, AttributeSet attrs, int defStyleAttr, boolean privateBrowsing) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setHorizontalScrollbarOverlay(boolean overlay) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setVerticalScrollbarOverlay(boolean overlay) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean overlayHorizontalScrollbar() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean overlayVerticalScrollbar() {
        throw new RuntimeException("Stub!");
    }

    public SslCertificate getCertificate() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setCertificate(SslCertificate certificate) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void savePassword(String host, String username, String password) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setHttpAuthUsernamePassword(String host, String realm, String username, String password) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public String[] getHttpAuthUsernamePassword(String host, String realm) {
        throw new RuntimeException("Stub!");
    }

    public void destroy() {
        throw new RuntimeException("Stub!");
    }

    public void setNetworkAvailable(boolean networkUp) {
        throw new RuntimeException("Stub!");
    }

    public WebBackForwardList saveState(Bundle outState) {
        throw new RuntimeException("Stub!");
    }

    public WebBackForwardList restoreState(Bundle inState) {
        throw new RuntimeException("Stub!");
    }

    public void loadUrl(String url, Map<String, String> additionalHttpHeaders) {
        throw new RuntimeException("Stub!");
    }

    public void loadUrl(String url) {
        throw new RuntimeException("Stub!");
    }

    public void postUrl(String url, byte[] postData) {
        throw new RuntimeException("Stub!");
    }

    public void loadData(String data, String mimeType, String encoding) {
        throw new RuntimeException("Stub!");
    }

    public void loadDataWithBaseURL(String baseUrl, String data, String mimeType, String encoding, String historyUrl) {
        throw new RuntimeException("Stub!");
    }

    public void evaluateJavascript(String script, ValueCallback<String> resultCallback) {
        throw new RuntimeException("Stub!");
    }

    public void saveWebArchive(String filename) {
        throw new RuntimeException("Stub!");
    }

    public void saveWebArchive(String basename, boolean autoname, ValueCallback<String> callback) {
        throw new RuntimeException("Stub!");
    }

    public void stopLoading() {
        throw new RuntimeException("Stub!");
    }

    public void reload() {
        throw new RuntimeException("Stub!");
    }

    public boolean canGoBack() {
        throw new RuntimeException("Stub!");
    }

    public void goBack() {
        throw new RuntimeException("Stub!");
    }

    public boolean canGoForward() {
        throw new RuntimeException("Stub!");
    }

    public void goForward() {
        throw new RuntimeException("Stub!");
    }

    public boolean canGoBackOrForward(int steps) {
        throw new RuntimeException("Stub!");
    }

    public void goBackOrForward(int steps) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPrivateBrowsingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean pageUp(boolean top) {
        throw new RuntimeException("Stub!");
    }

    public boolean pageDown(boolean bottom) {
        throw new RuntimeException("Stub!");
    }

    public void postVisualStateCallback(long requestId, VisualStateCallback callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void clearView() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Picture capturePicture() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public PrintDocumentAdapter createPrintDocumentAdapter() {
        throw new RuntimeException("Stub!");
    }

    public PrintDocumentAdapter createPrintDocumentAdapter(String documentName) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "webview")
    @Deprecated
    public float getScale() {
        throw new RuntimeException("Stub!");
    }

    public void setInitialScale(int scaleInPercent) {
        throw new RuntimeException("Stub!");
    }

    public void invokeZoomPicker() {
        throw new RuntimeException("Stub!");
    }

    public HitTestResult getHitTestResult() {
        throw new RuntimeException("Stub!");
    }

    public void requestFocusNodeHref(Message hrefMsg) {
        throw new RuntimeException("Stub!");
    }

    public void requestImageRef(Message msg) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getUrl() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getOriginalUrl() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public String getTitle() {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getFavicon() {
        throw new RuntimeException("Stub!");
    }

    public int getProgress() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "webview")
    public int getContentHeight() {
        throw new RuntimeException("Stub!");
    }

    public void pauseTimers() {
        throw new RuntimeException("Stub!");
    }

    public void resumeTimers() {
        throw new RuntimeException("Stub!");
    }

    public void onPause() {
        throw new RuntimeException("Stub!");
    }

    public void onResume() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void freeMemory() {
        throw new RuntimeException("Stub!");
    }

    public void clearCache(boolean includeDiskFiles) {
        throw new RuntimeException("Stub!");
    }

    public void clearFormData() {
        throw new RuntimeException("Stub!");
    }

    public void clearHistory() {
        throw new RuntimeException("Stub!");
    }

    public void clearSslPreferences() {
        throw new RuntimeException("Stub!");
    }

    public static void clearClientCertPreferences(Runnable onCleared) {
        throw new RuntimeException("Stub!");
    }

    public WebBackForwardList copyBackForwardList() {
        throw new RuntimeException("Stub!");
    }

    public void setFindListener(FindListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void findNext(boolean forward) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int findAll(String find) {
        throw new RuntimeException("Stub!");
    }

    public void findAllAsync(String find) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean showFindDialog(String text, boolean showIme) {
        throw new RuntimeException("Stub!");
    }

    public static String findAddress(String addr) {
        throw new RuntimeException("Stub!");
    }

    public static void enableSlowWholeDocumentDraw() {
        throw new RuntimeException("Stub!");
    }

    public void clearMatches() {
        throw new RuntimeException("Stub!");
    }

    public void documentHasImages(Message response) {
        throw new RuntimeException("Stub!");
    }

    public void setWebViewClient(WebViewClient client) {
        throw new RuntimeException("Stub!");
    }

    public WebViewClient getWebViewClient() {
        throw new RuntimeException("Stub!");
    }

    public void setDownloadListener(DownloadListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setWebChromeClient(WebChromeClient client) {
        throw new RuntimeException("Stub!");
    }

    public WebChromeClient getWebChromeClient() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setPictureListener(PictureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void addJavascriptInterface(Object object, String name) {
        throw new RuntimeException("Stub!");
    }

    public void removeJavascriptInterface(String name) {
        throw new RuntimeException("Stub!");
    }

    public WebMessagePort[] createWebMessageChannel() {
        throw new RuntimeException("Stub!");
    }

    public void postWebMessage(WebMessage message, Uri targetOrigin) {
        throw new RuntimeException("Stub!");
    }

    public WebSettings getSettings() {
        throw new RuntimeException("Stub!");
    }

    public static void setWebContentsDebuggingEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void onChildViewAdded(View parent, View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void onChildViewRemoved(View p10, View child) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public void onGlobalFocusChanged(View oldFocus, View newFocus) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setMapTrackballToArrowKeys(boolean setMap) {
        throw new RuntimeException("Stub!");
    }

    public void flingScroll(int vx, int vy) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean canZoomIn() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean canZoomOut() {
        throw new RuntimeException("Stub!");
    }

    public void zoomBy(float zoomFactor) {
        throw new RuntimeException("Stub!");
    }

    public boolean zoomIn() {
        throw new RuntimeException("Stub!");
    }

    public boolean zoomOut() {
        throw new RuntimeException("Stub!");
    }

    public void setRendererPriorityPolicy(int rendererRequestedPriority, boolean waivedWhenNotVisible) {
        throw new RuntimeException("Stub!");
    }

    public int getRendererRequestedPriority() {
        throw new RuntimeException("Stub!");
    }

    public boolean getRendererPriorityWaivedWhenNotVisible() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOverScrollMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setScrollBarStyle(int style) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeHorizontalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int computeVerticalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void computeScroll() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onGenericMotionEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public boolean shouldDelayChildPressedState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onProvideVirtualStructure(ViewStructure structure) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onProvideAutofillVirtualStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void autofill(SparseArray<AutofillValue> values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowVisibilityChanged(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performLongClick() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onDragEvent(DragEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int ow, int oh2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onScrollChanged(int l10, int t10, int oldl, int oldt) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requestChildRectangleOnScreen(View child, Rect rect, boolean immediate) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setBackgroundColor(int color) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setLayerType(int layerType, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onStartTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFinishTemporaryDetach() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Handler getHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public View findFocus() {
        throw new RuntimeException("Stub!");
    }

    public static PackageInfo getCurrentWebViewPackage() {
        throw new RuntimeException("Stub!");
    }
}
