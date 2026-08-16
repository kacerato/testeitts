package android.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ContextThemeWrapper.class
 */
public class ContextThemeWrapper extends ContextWrapper {
    public ContextThemeWrapper() {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public ContextThemeWrapper(Context base, int themeResId) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public ContextThemeWrapper(Context base, Resources.Theme theme) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void attachBaseContext(Context newBase) {
        throw new RuntimeException("Stub!");
    }

    public void applyOverrideConfiguration(Configuration overrideConfiguration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AssetManager getAssets() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources getResources() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTheme(int resid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Resources.Theme getTheme() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getSystemService(String name) {
        throw new RuntimeException("Stub!");
    }

    protected void onApplyThemeResource(Resources.Theme theme, int resId, boolean first) {
        throw new RuntimeException("Stub!");
    }
}
