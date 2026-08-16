package com.itsmagic.engine.Engines.Utils;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import com.itsmagic.engine.Engines.Engine.Texture.Data.NativeTextureRGBA8;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Utils.WebViewToOpenGL;
import java.util.concurrent.atomic.AtomicBoolean;
import ub.l;

public class WebViewToOpenGL {

    public WebView f81491a;

    public Bitmap f81492b;

    public Canvas f81493c;

    public int f81494d;

    public int f81495e;

    public NativeTextureRGBA8 f81496f;

    public final l f81497g;

    public NativeByteBuffer f81498h;

    public String f81502l;

    public View.OnFocusChangeListener f81504n;

    public boolean f81505o;

    public final AtomicBoolean f81499i = new AtomicBoolean();

    public final AtomicBoolean f81500j = new AtomicBoolean();

    public final AtomicBoolean f81501k = new AtomicBoolean();

    public boolean f81503m = true;

    public int f81506p = 24;

    public long f81507q = 0;

    public final WebChromeClient f81508r = new a();

    public final WebViewClient f81509s = new b();

    public final Runnable f81510t = new c();

    public class a extends WebChromeClient {
        public a() {
        }

        public static void i(JsPromptResult jsPromptResult, EditText editText, DialogInterface dialogInterface, int i10) {
            jsPromptResult.confirm(editText.getText().toString());
        }

        @Override
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Log.d("WebView", consoleMessage.message());
            return true;
        }

        @Override
        public boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
            new AlertDialog.Builder(view.getContext()).setMessage(message).setPositiveButton(R.string.f32411ok, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    JsResult.this.confirm();
                }
            }).setCancelable(false).create().show();
            return true;
        }

        @Override
        public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
            new AlertDialog.Builder(view.getContext()).setMessage(message).setPositiveButton(R.string.f32411ok, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    JsResult.this.confirm();
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    JsResult.this.cancel();
                }
            }).create().show();
            return true;
        }

        @Override
        public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, final JsPromptResult result) {
            final EditText editText = new EditText(view.getContext());
            editText.setText(defaultValue);
            new AlertDialog.Builder(view.getContext()).setMessage(message).setView(editText).setPositiveButton(R.string.f32411ok, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    WebViewToOpenGL.a.i(JsPromptResult.this, editText, dialogInterface, i10);
                }
            }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    JsPromptResult.this.cancel();
                }
            }).create().show();
            return true;
        }

        @Override
        public void onProgressChanged(WebView view, int progress) {
        }

        @Override
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            return true;
        }
    }

    public class b extends WebViewClient {
        public b() {
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            WebViewToOpenGL.this.f81500j.set(true);
            WebViewToOpenGL.this.f81491a.evaluateJavascript("var observer = new MutationObserver(function(mutations) {    mutations.forEach(function(mutation) {        if (mutation.type === 'childList' || mutation.type === 'subtree') {            Android.onPageContentChanged();  // Notifica o Android        }    });});observer.observe(document.body, { childList: true, subtree: true });", null);
        }

        @Override
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            return false;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            WebViewToOpenGL.this.f81501k.set(false);
        }
    }

    public class d implements Runnable {

        public final Context f81514b;

        public final int f81515c;

        public final int f81516d;

        public final String f81517e;

        public class a implements View.OnFocusChangeListener {
            public a() {
            }

            @Override
            public void onFocusChange(View v10, boolean hasFocus) {
                if (WebViewToOpenGL.this.f81504n != null) {
                    WebViewToOpenGL.this.f81504n.onFocusChange(v10, hasFocus);
                }
                WebViewToOpenGL.this.f81505o = hasFocus;
            }
        }

        public class b implements ValueCallback<String> {
            public b() {
            }

            @Override
            public void onReceiveValue(String currentContent) {
                if (currentContent.equals(WebViewToOpenGL.this.f81502l)) {
                    return;
                }
                WebViewToOpenGL.this.f81502l = currentContent;
                WebViewToOpenGL.this.f81500j.set(true);
            }
        }

        public d(final Context val$context, final int val$width, final int val$height, final String val$url) {
            this.f81514b = val$context;
            this.f81515c = val$width;
            this.f81516d = val$height;
            this.f81517e = val$url;
        }

        @Override
        public void run() {
            WebView.enableSlowWholeDocumentDraw();
            WebViewToOpenGL.this.f81491a = new WebView(this.f81514b);
            WebViewToOpenGL.this.f81491a.layout(0, 0, this.f81515c, this.f81516d);
            WebViewToOpenGL.this.f81491a.setWebChromeClient(WebViewToOpenGL.this.f81508r);
            WebViewToOpenGL.this.f81491a.setWebViewClient(WebViewToOpenGL.this.f81509s);
            WebViewToOpenGL.this.f81491a.setOnFocusChangeListener(new a());
            WebSettings settings = WebViewToOpenGL.this.f81491a.getSettings();
            settings.setUserAgentString("Mozilla/5.0 (Linux; U; Android 10; en-us; Pixel 4 Build/QD2A.190505.003) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Mobile Safari/537.36");
            settings.setJavaScriptEnabled(true);
            settings.setDefaultTextEncodingName("UTF-8");
            settings.setDomStorageEnabled(true);
            settings.setDatabaseEnabled(true);
            settings.setCacheMode(-1);
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
            settings.setSupportZoom(false);
            settings.setBuiltInZoomControls(true);
            settings.setDisplayZoomControls(false);
            WebViewToOpenGL.this.f81491a.setLayerType(1, null);
            WebViewToOpenGL.this.f81491a.addJavascriptInterface(new j(), "Android");
            WebViewToOpenGL.this.f81491a.evaluateJavascript("document.body.innerHTML", new b());
            WebViewToOpenGL.this.f81491a.loadUrl(this.f81517e);
            WebViewToOpenGL.this.f81499i.set(true);
        }
    }

    public class e implements Runnable {

        public final String f81521b;

        public e(final String val$code) {
            this.f81521b = val$code;
        }

        @Override
        public void run() {
            WebViewToOpenGL.this.f81491a.evaluateJavascript(this.f81521b, null);
        }
    }

    public class f implements Runnable {

        public final int f81523b;

        public final float f81524c;

        public final float f81525d;

        public f(final int val$action, final float val$x, final float val$y) {
            this.f81523b = val$action;
            this.f81524c = val$x;
            this.f81525d = val$y;
        }

        @Override
        public void run() {
            WebViewToOpenGL.this.f81491a.dispatchTouchEvent(MotionEvent.obtain(System.currentTimeMillis(), System.currentTimeMillis(), this.f81523b, this.f81524c, this.f81525d, 0));
        }
    }

    public class g implements Runnable {

        public final int f81527b;

        public final int f81528c;

        public g(final int val$action, final int val$keyCode) {
            this.f81527b = val$action;
            this.f81528c = val$keyCode;
        }

        @Override
        public void run() {
            WebViewToOpenGL.this.f81491a.dispatchKeyEvent(new KeyEvent(System.currentTimeMillis(), System.currentTimeMillis(), this.f81527b, this.f81528c, 0, 0, 0, 0, 0, 2));
        }
    }

    public class h implements Runnable {

        public final String f81530b;

        public h(final String val$url) {
            this.f81530b = val$url;
        }

        @Override
        public void run() {
            WebViewToOpenGL.this.f81491a.loadUrl(this.f81530b);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            if (WebViewToOpenGL.this.f81491a != null) {
                WebViewToOpenGL.this.f81491a.stopLoading();
                WebViewToOpenGL.this.f81491a.setWebChromeClient(null);
                WebViewToOpenGL.this.f81491a.setWebViewClient(null);
                WebViewToOpenGL.this.f81491a.destroy();
                WebViewToOpenGL.this.f81491a = null;
            }
        }
    }

    public class j {
        public j() {
        }

        @JavascriptInterface
        public void onPageContentChanged() {
            WebViewToOpenGL.this.f81500j.set(true);
        }
    }

    static {
        System.loadLibrary("native-webview-to-opengl");
    }

    public WebViewToOpenGL(Context context, int width, int height, String url) {
        this.f81494d = width;
        this.f81495e = height;
        N7.c.j0(new d(context, width, height, url));
        this.f81492b = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f81493c = new Canvas(this.f81492b);
        y(width, height);
        TextureConfig l10 = l();
        this.f81496f = new NativeTextureRGBA8(width, height, l10);
        this.f81497g = new l(this.f81496f, l10);
    }

    private static native boolean nativeCopyBitmapToNativeBuffer(Bitmap bitmap, long nativeByteBufferPointer);

    public void A(int action, int keyCode) {
        if (this.f81499i.get()) {
            N7.c.j0(new g(action, keyCode));
        }
    }

    public void B(int action, float x10, float y10) {
        if (this.f81499i.get()) {
            N7.c.j0(new f(action, x10, y10));
        }
    }

    public void C(boolean allowHibernate) {
        this.f81503m = allowHibernate;
    }

    public void D(int fps) {
        this.f81506p = fps;
    }

    public void E(View.OnFocusChangeListener onFocusChangeListener) {
        this.f81504n = onFocusChangeListener;
    }

    public void F() {
        if (this.f81499i.get() && !this.f81501k.get()) {
            if (this.f81500j.compareAndSet(true, false) || !this.f81503m) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.f81507q >= 1000 / this.f81506p) {
                    this.f81493c.setMatrix(null);
                    this.f81493c.drawColor(0, PorterDuff.Mode.CLEAR);
                    Matrix matrix = new Matrix();
                    matrix.setTranslate(-r(), -s());
                    this.f81493c.setMatrix(matrix);
                    try {
                        this.f81491a.draw(this.f81493c);
                    } catch (RuntimeException e10) {
                        e10.printStackTrace();
                    }
                    this.f81493c.setMatrix(null);
                    this.f81493c.drawBitmap(this.f81492b, 0.0f, 0.0f, (Paint) null);
                    this.f81498h.position(0);
                    if (!nativeCopyBitmapToNativeBuffer(this.f81492b, NativeByteBuffer.getCriticalDirectCppPointer(this.f81498h, 0L))) {
                        this.f81500j.set(true);
                        return;
                    }
                    this.f81498h.position(0);
                    this.f81501k.set(true);
                    try {
                        this.f81496f.Z0(this.f81498h, this.f81510t);
                        this.f81507q = currentTimeMillis;
                    } catch (RuntimeException e11) {
                        this.f81501k.set(false);
                        this.f81500j.set(true);
                        throw e11;
                    }
                }
            }
        }
    }

    public final TextureConfig l() {
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.m0(TextureConfig.d.RGBA8);
        textureConfig.Z(true);
        textureConfig.p0(false);
        textureConfig.J0(TextureConfig.h.Clamp);
        textureConfig.j0(TextureConfig.c.Linear);
        return textureConfig;
    }

    public void m() {
        this.f81499i.set(false);
        this.f81501k.set(false);
        N7.c.j0(new i());
        Bitmap bitmap = this.f81492b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f81492b.recycle();
        }
        this.f81492b = null;
        this.f81493c = null;
        NativeByteBuffer nativeByteBuffer = this.f81498h;
        if (nativeByteBuffer != null) {
            nativeByteBuffer.destroyImmediate();
            this.f81498h = null;
        }
        l lVar = this.f81497g;
        if (lVar != null) {
            lVar.destroyImmediate();
        }
        this.f81496f = null;
    }

    public void n(String code) {
        if (this.f81499i.get()) {
            N7.c.j0(new e(code));
        }
    }

    public l o() {
        return this.f81497g;
    }

    public int p() {
        return this.f81506p;
    }

    public View.OnFocusChangeListener q() {
        return this.f81504n;
    }

    public final float r() {
        return this.f81491a.getScrollX();
    }

    public final float s() {
        return this.f81491a.getScrollY();
    }

    public l t() {
        return this.f81497g;
    }

    public String u() {
        if (this.f81499i.get()) {
            return this.f81491a.getUrl();
        }
        return null;
    }

    public boolean v() {
        return this.f81503m;
    }

    public boolean w() {
        return this.f81505o;
    }

    public void x(String url) {
        if (this.f81499i.get()) {
            N7.c.j0(new h(url));
        }
    }

    public final void y(int width, int height) {
        NativeByteBuffer nativeByteBuffer = this.f81498h;
        if (nativeByteBuffer != null) {
            nativeByteBuffer.destroyImmediate();
        }
        this.f81498h = new NativeByteBuffer(width * height * 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void z(int newWidth, int newHeight) {
        NativeTextureRGBA8 nativeTextureRGBA8;
        Throwable e10;
        TextureConfig l10;
        if (this.f81499i.get()) {
            int i10 = this.f81494d;
            if (i10 == newWidth && this.f81495e == newHeight) {
                return;
            }
            int i11 = this.f81495e;
            Bitmap bitmap = this.f81492b;
            Canvas canvas = this.f81493c;
            NativeByteBuffer nativeByteBuffer = this.f81498h;
            NativeTextureRGBA8 nativeTextureRGBA82 = this.f81496f;
            this.f81494d = newWidth;
            this.f81495e = newHeight;
            try {
                this.f81500j.set(true);
                l10 = l();
                nativeTextureRGBA8 = new NativeTextureRGBA8(this.f81494d, this.f81495e, l10);
            } catch (Error | Exception e11) {
                nativeTextureRGBA8 = null;
                e10 = e11;
            }
            try {
                this.f81492b = Bitmap.createBitmap(this.f81494d, this.f81495e, Bitmap.Config.ARGB_8888);
                this.f81493c = new Canvas(this.f81492b);
                y(this.f81494d, this.f81495e);
                this.f81496f = nativeTextureRGBA8;
                this.f81497g.v0(nativeTextureRGBA8, l10);
                this.f81491a.layout(0, 0, this.f81494d, this.f81495e);
                F();
                if (nativeTextureRGBA82 != null) {
                    nativeTextureRGBA82.destroyImmediate();
                }
            } catch (Error e12) {
                e10 = e12;
                e10.printStackTrace();
                this.f81494d = i10;
                this.f81495e = i11;
                this.f81492b = bitmap;
                this.f81493c = canvas;
                this.f81498h = nativeByteBuffer;
                this.f81496f = nativeTextureRGBA82;
                if (nativeTextureRGBA82 != null) {
                    this.f81497g.v0(nativeTextureRGBA82, l());
                }
                if (nativeTextureRGBA8 != null || nativeTextureRGBA8 == nativeTextureRGBA82) {
                }
                nativeTextureRGBA8.destroyImmediate();
            } catch (Exception e13) {
                e10 = e13;
                e10.printStackTrace();
                this.f81494d = i10;
                this.f81495e = i11;
                this.f81492b = bitmap;
                this.f81493c = canvas;
                this.f81498h = nativeByteBuffer;
                this.f81496f = nativeTextureRGBA82;
                if (nativeTextureRGBA82 != null) {
                }
                if (nativeTextureRGBA8 != null) {
                }
            }
        }
    }
}
