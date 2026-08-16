package android.webkit;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings.class
 */
public abstract class WebSettings {
    public static final int LOAD_CACHE_ELSE_NETWORK = 1;
    public static final int LOAD_CACHE_ONLY = 3;
    public static final int LOAD_DEFAULT = -1;

    @Deprecated
    public static final int LOAD_NORMAL = 0;
    public static final int LOAD_NO_CACHE = 2;
    public static final int MENU_ITEM_NONE = 0;
    public static final int MENU_ITEM_PROCESS_TEXT = 4;
    public static final int MENU_ITEM_SHARE = 1;
    public static final int MENU_ITEM_WEB_SEARCH = 2;
    public static final int MIXED_CONTENT_ALWAYS_ALLOW = 0;
    public static final int MIXED_CONTENT_COMPATIBILITY_MODE = 2;
    public static final int MIXED_CONTENT_NEVER_ALLOW = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings$LayoutAlgorithm.class
 */
    public enum LayoutAlgorithm {
        NARROW_COLUMNS,
        NORMAL,
        SINGLE_COLUMN,
        TEXT_AUTOSIZING
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings$PluginState.class
 */
    public enum PluginState {
        OFF,
        ON,
        ON_DEMAND
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings$RenderPriority.class
 */
    public enum RenderPriority {
        HIGH,
        LOW,
        NORMAL
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings$TextSize.class
 */
    @Deprecated
    public enum TextSize {
        LARGER,
        LARGEST,
        NORMAL,
        SMALLER,
        SMALLEST
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebSettings$ZoomDensity.class
 */
    public enum ZoomDensity {
        CLOSE,
        FAR,
        MEDIUM
    }

    public abstract void setSupportZoom(boolean z10);

    public abstract boolean supportZoom();

    public abstract void setMediaPlaybackRequiresUserGesture(boolean z10);

    public abstract boolean getMediaPlaybackRequiresUserGesture();

    public abstract void setBuiltInZoomControls(boolean z10);

    public abstract boolean getBuiltInZoomControls();

    public abstract void setDisplayZoomControls(boolean z10);

    public abstract boolean getDisplayZoomControls();

    public abstract void setAllowFileAccess(boolean z10);

    public abstract boolean getAllowFileAccess();

    public abstract void setAllowContentAccess(boolean z10);

    public abstract boolean getAllowContentAccess();

    public abstract void setLoadWithOverviewMode(boolean z10);

    public abstract boolean getLoadWithOverviewMode();

    @Deprecated
    public abstract void setEnableSmoothTransition(boolean z10);

    @Deprecated
    public abstract boolean enableSmoothTransition();

    @Deprecated
    public abstract void setSaveFormData(boolean z10);

    @Deprecated
    public abstract boolean getSaveFormData();

    @Deprecated
    public abstract void setSavePassword(boolean z10);

    @Deprecated
    public abstract boolean getSavePassword();

    public abstract void setTextZoom(int i10);

    public abstract int getTextZoom();

    @Deprecated
    public abstract void setDefaultZoom(ZoomDensity zoomDensity);

    @Deprecated
    public abstract ZoomDensity getDefaultZoom();

    @Deprecated
    public abstract void setLightTouchEnabled(boolean z10);

    @Deprecated
    public abstract boolean getLightTouchEnabled();

    public abstract void setUseWideViewPort(boolean z10);

    public abstract boolean getUseWideViewPort();

    public abstract void setSupportMultipleWindows(boolean z10);

    public abstract boolean supportMultipleWindows();

    public abstract void setLayoutAlgorithm(LayoutAlgorithm layoutAlgorithm);

    public abstract LayoutAlgorithm getLayoutAlgorithm();

    public abstract void setStandardFontFamily(String str);

    public abstract String getStandardFontFamily();

    public abstract void setFixedFontFamily(String str);

    public abstract String getFixedFontFamily();

    public abstract void setSansSerifFontFamily(String str);

    public abstract String getSansSerifFontFamily();

    public abstract void setSerifFontFamily(String str);

    public abstract String getSerifFontFamily();

    public abstract void setCursiveFontFamily(String str);

    public abstract String getCursiveFontFamily();

    public abstract void setFantasyFontFamily(String str);

    public abstract String getFantasyFontFamily();

    public abstract void setMinimumFontSize(int i10);

    public abstract int getMinimumFontSize();

    public abstract void setMinimumLogicalFontSize(int i10);

    public abstract int getMinimumLogicalFontSize();

    public abstract void setDefaultFontSize(int i10);

    public abstract int getDefaultFontSize();

    public abstract void setDefaultFixedFontSize(int i10);

    public abstract int getDefaultFixedFontSize();

    public abstract void setLoadsImagesAutomatically(boolean z10);

    public abstract boolean getLoadsImagesAutomatically();

    public abstract void setBlockNetworkImage(boolean z10);

    public abstract boolean getBlockNetworkImage();

    public abstract void setBlockNetworkLoads(boolean z10);

    public abstract boolean getBlockNetworkLoads();

    public abstract void setJavaScriptEnabled(boolean z10);

    public abstract void setAllowUniversalAccessFromFileURLs(boolean z10);

    public abstract void setAllowFileAccessFromFileURLs(boolean z10);

    @Deprecated
    public abstract void setPluginState(PluginState pluginState);

    @Deprecated
    public abstract void setDatabasePath(String str);

    @Deprecated
    public abstract void setGeolocationDatabasePath(String str);

    public abstract void setAppCacheEnabled(boolean z10);

    public abstract void setAppCachePath(String str);

    @Deprecated
    public abstract void setAppCacheMaxSize(long j10);

    public abstract void setDatabaseEnabled(boolean z10);

    public abstract void setDomStorageEnabled(boolean z10);

    public abstract boolean getDomStorageEnabled();

    @Deprecated
    public abstract String getDatabasePath();

    public abstract boolean getDatabaseEnabled();

    public abstract void setGeolocationEnabled(boolean z10);

    public abstract boolean getJavaScriptEnabled();

    public abstract boolean getAllowUniversalAccessFromFileURLs();

    public abstract boolean getAllowFileAccessFromFileURLs();

    @Deprecated
    public abstract PluginState getPluginState();

    public abstract void setJavaScriptCanOpenWindowsAutomatically(boolean z10);

    public abstract boolean getJavaScriptCanOpenWindowsAutomatically();

    public abstract void setDefaultTextEncodingName(String str);

    public abstract String getDefaultTextEncodingName();

    public abstract void setUserAgentString(String str);

    public abstract String getUserAgentString();

    public abstract void setNeedInitialFocus(boolean z10);

    @Deprecated
    public abstract void setRenderPriority(RenderPriority renderPriority);

    public abstract void setCacheMode(int i10);

    public abstract int getCacheMode();

    public abstract void setMixedContentMode(int i10);

    public abstract int getMixedContentMode();

    public abstract void setOffscreenPreRaster(boolean z10);

    public abstract boolean getOffscreenPreRaster();

    public abstract void setSafeBrowsingEnabled(boolean z10);

    public abstract boolean getSafeBrowsingEnabled();

    public abstract void setDisabledActionModeMenuItems(int i10);

    public abstract int getDisabledActionModeMenuItems();

    public WebSettings() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public synchronized void setTextSize(TextSize t10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public synchronized TextSize getTextSize() {
        throw new RuntimeException("Stub!");
    }

    public static String getDefaultUserAgent(Context context) {
        throw new RuntimeException("Stub!");
    }
}
