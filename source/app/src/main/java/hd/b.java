package Hd;

import Cd.b;
import Dd.c;
import Mf.l;
import ag.C3617K;
import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class b extends WebView implements Dd.b, c.b {

    public l<? super Dd.b, P0> f8357b;

    public final HashSet<Ed.d> f8358c;

    public final Handler f8359d;

    public boolean f8360e;

    public static final class a implements Runnable {

        public final String f8362c;

        public final float f8363d;

        public a(String str, float f10) {
            this.f8362c = str;
            this.f8363d = f10;
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:cueVideo('" + this.f8362c + "', " + this.f8363d + ')');
        }
    }

    public static final class C0181b extends WebChromeClient {
        @Override
        @Nullable
        public Bitmap getDefaultVideoPoster() {
            Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
            return defaultVideoPoster != null ? defaultVideoPoster : Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
        }
    }

    public static final class c implements Runnable {

        public final String f8365c;

        public final float f8366d;

        public c(String str, float f10) {
            this.f8365c = str;
            this.f8366d = f10;
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:loadVideo('" + this.f8365c + "', " + this.f8366d + ')');
        }
    }

    public static final class d implements Runnable {
        public d() {
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:mute()");
        }
    }

    public static final class e implements Runnable {
        public e() {
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:pauseVideo()");
        }
    }

    public static final class f implements Runnable {
        public f() {
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:playVideo()");
        }
    }

    public static final class g implements Runnable {

        public final float f8371c;

        public g(float f10) {
            this.f8371c = f10;
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:seekTo(" + this.f8371c + ')');
        }
    }

    public static final class h implements Runnable {

        public final int f8373c;

        public h(int i10) {
            this.f8373c = i10;
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:setVolume(" + this.f8373c + ')');
        }
    }

    public static final class i implements Runnable {
        public i() {
        }

        @Override
        public final void run() {
            b.this.loadUrl("javascript:unMute()");
        }
    }

    public b(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override
    public void a(float f10) {
        this.f8359d.post(new g(f10));
    }

    @Override
    public void b() {
        l<? super Dd.b, P0> lVar = this.f8357b;
        if (lVar == null) {
            M.S("youTubePlayerInitListener");
        }
        lVar.invoke(this);
    }

    @Override
    public boolean c(@NotNull Ed.d listener) {
        M.q(listener, "listener");
        return this.f8358c.remove(listener);
    }

    @Override
    public boolean d(@NotNull Ed.d listener) {
        M.q(listener, "listener");
        return this.f8358c.add(listener);
    }

    @Override
    public void destroy() {
        this.f8358c.clear();
        this.f8359d.removeCallbacksAndMessages(null);
        super.destroy();
    }

    @Override
    public void e() {
        this.f8359d.post(new d());
    }

    @Override
    public void f(@NotNull String videoId, float f10) {
        M.q(videoId, "videoId");
        this.f8359d.post(new a(videoId, f10));
    }

    @Override
    public void g() {
        this.f8359d.post(new i());
    }

    @Override
    @NotNull
    public Dd.b getInstance() {
        return this;
    }

    @Override
    @NotNull
    public Collection<Ed.d> getListeners() {
        Collection<Ed.d> unmodifiableCollection = Collections.unmodifiableCollection(new HashSet(this.f8358c));
        M.h(unmodifiableCollection, "Collections.unmodifiable\u2026(youTubePlayerListeners))");
        return unmodifiableCollection;
    }

    @Override
    public void h(@NotNull String videoId, float f10) {
        M.q(videoId, "videoId");
        this.f8359d.post(new c(videoId, f10));
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public final void i(Fd.a aVar) {
        WebSettings settings = getSettings();
        M.h(settings, "settings");
        settings.setJavaScriptEnabled(true);
        WebSettings settings2 = getSettings();
        M.h(settings2, "settings");
        settings2.setMediaPlaybackRequiresUserGesture(false);
        WebSettings settings3 = getSettings();
        M.h(settings3, "settings");
        settings3.setCacheMode(2);
        addJavascriptInterface(new Dd.c(this), "YouTubePlayerBridge");
        Gd.e eVar = Gd.e.f7784a;
        InputStream openRawResource = getResources().openRawResource(b.k.f3404a);
        M.h(openRawResource, "resources.openRawResourc\u2026R.raw.ayp_youtube_player)");
        loadDataWithBaseURL(aVar.b(), C3617K.B2(eVar.b(openRawResource), "<<injectedPlayerVars>>", aVar.toString(), false, 4, null), ClipDescription.MIMETYPE_TEXT_HTML, "utf-8", null);
        setWebChromeClient(new C0181b());
    }

    public final void j(@NotNull l<? super Dd.b, P0> initListener, @Nullable Fd.a aVar) {
        M.q(initListener, "initListener");
        this.f8357b = initListener;
        if (aVar == null) {
            aVar = Fd.a.f6779c.a();
        }
        i(aVar);
    }

    public final boolean k() {
        return this.f8360e;
    }

    @Override
    public void onWindowVisibilityChanged(int i10) {
        if (this.f8360e && (i10 == 8 || i10 == 4)) {
            return;
        }
        super.onWindowVisibilityChanged(i10);
    }

    @Override
    public void pause() {
        this.f8359d.post(new e());
    }

    @Override
    public void play() {
        this.f8359d.post(new f());
    }

    public final void setBackgroundPlaybackEnabled$core_release(boolean z10) {
        this.f8360e = z10;
    }

    @Override
    public void setVolume(int i10) {
        if (!(i10 >= 0 && i10 <= 100)) {
            throw new IllegalArgumentException("Volume must be between 0 and 100");
        }
        this.f8359d.post(new h(i10));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.q(context, "context");
        this.f8358c = new HashSet<>();
        this.f8359d = new Handler(Looper.getMainLooper());
    }
}
