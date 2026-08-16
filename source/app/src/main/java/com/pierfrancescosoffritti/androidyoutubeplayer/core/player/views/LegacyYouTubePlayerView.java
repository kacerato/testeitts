package com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views;

import Cd.b;
import Dd.a;
import Fd.a;
import Mf.l;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class LegacyYouTubePlayerView extends Hd.a implements LifecycleObserver {

    @NotNull
    public final Hd.b f83449b;

    public final Id.a f83450c;

    public final Gd.b f83451d;

    public final Gd.d f83452e;

    public final Gd.a f83453f;

    public boolean f83454g;

    public Mf.a<P0> f83455h;

    public final HashSet<Ed.b> f83456i;

    public boolean f83457j;

    public boolean f83458k;

    public static final class a extends Ed.a {
        public a() {
        }

        @Override
        public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
            M.q(youTubePlayer, "youTubePlayer");
            M.q(state, "state");
            if (state != a.d.PLAYING || LegacyYouTubePlayerView.this.o()) {
                return;
            }
            youTubePlayer.pause();
        }
    }

    public static final class b extends Ed.a {
        public b() {
        }

        @Override
        public void C(@NotNull Dd.b youTubePlayer) {
            M.q(youTubePlayer, "youTubePlayer");
            LegacyYouTubePlayerView.this.setYouTubePlayerReady$core_release(true);
            Iterator<E> it = LegacyYouTubePlayerView.this.f83456i.iterator();
            while (it.hasNext()) {
                ((Ed.b) it.next()).a(youTubePlayer);
            }
            LegacyYouTubePlayerView.this.f83456i.clear();
            youTubePlayer.c(this);
        }
    }

    public static final class c extends O implements Mf.a<P0> {
        public c() {
            super(0);
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            if (!LegacyYouTubePlayerView.this.r()) {
                LegacyYouTubePlayerView.this.f83455h.invoke();
            } else {
                LegacyYouTubePlayerView.this.f83452e.c(LegacyYouTubePlayerView.this.getYouTubePlayer$core_release());
            }
        }
    }

    public static final class d extends O implements Mf.a<P0> {

        public static final d f83462b = new d();

        public d() {
            super(0);
        }

        public final void invoke2() {
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }
    }

    public static final class e extends O implements Mf.a<P0> {

        public final Ed.d f83464c;

        public final Fd.a f83465d;

        public static final class a extends O implements l<Dd.b, P0> {
            public a() {
                super(1);
            }

            public final void b(@NotNull Dd.b it) {
                M.q(it, "it");
                it.d(e.this.f83464c);
            }

            @Override
            public P0 invoke(Dd.b bVar) {
                b(bVar);
                return P0.f98194a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Ed.d dVar, Fd.a aVar) {
            super(0);
            this.f83464c = dVar;
            this.f83465d = aVar;
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            LegacyYouTubePlayerView.this.getYouTubePlayer$core_release().j(new a(), this.f83465d);
        }
    }

    public LegacyYouTubePlayerView(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    public final boolean e(@NotNull Ed.c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f83453f.a(fullScreenListener);
    }

    public final void f(boolean z10) {
        this.f83449b.setBackgroundPlaybackEnabled$core_release(z10);
    }

    public final void g() {
        this.f83453f.b();
    }

    public final boolean getCanPlay$core_release() {
        return this.f83457j;
    }

    @NotNull
    public final Id.c getPlayerUiController() {
        if (this.f83458k) {
            throw new RuntimeException("You have inflated a custom player Ui. You must manage it with your own controller.");
        }
        return this.f83450c;
    }

    @NotNull
    public final Hd.b getYouTubePlayer$core_release() {
        return this.f83449b;
    }

    public final void h() {
        this.f83453f.c();
    }

    public final void i(@NotNull Ed.b youTubePlayerCallback) {
        M.q(youTubePlayerCallback, "youTubePlayerCallback");
        if (this.f83454g) {
            youTubePlayerCallback.a(this.f83449b);
        } else {
            this.f83456i.add(youTubePlayerCallback);
        }
    }

    @NotNull
    public final View j(@LayoutRes int i10) {
        removeViews(1, getChildCount() - 1);
        if (!this.f83458k) {
            this.f83449b.c(this.f83450c);
            this.f83453f.e(this.f83450c);
        }
        this.f83458k = true;
        View inflate = View.inflate(getContext(), i10, this);
        M.h(inflate, "View.inflate(context, layoutId, this)");
        return inflate;
    }

    public final void k(@NotNull Ed.d youTubePlayerListener) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        l(youTubePlayerListener, true);
    }

    public final void l(@NotNull Ed.d youTubePlayerListener, boolean z10) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        m(youTubePlayerListener, z10, null);
    }

    public final void m(@NotNull Ed.d youTubePlayerListener, boolean z10, @Nullable Fd.a aVar) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        if (this.f83454g) {
            throw new IllegalStateException("This YouTubePlayerView has already been initialized.");
        }
        if (z10) {
            getContext().registerReceiver(this.f83451d, new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION));
        }
        e eVar = new e(youTubePlayerListener, aVar);
        this.f83455h = eVar;
        if (z10) {
            return;
        }
        eVar.invoke();
    }

    public final void n(@NotNull Ed.d youTubePlayerListener, boolean z10) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        Fd.a c10 = new a.C0129a().e(1).c();
        j(b.j.f3364D);
        m(youTubePlayerListener, z10, c10);
    }

    public final boolean o() {
        return this.f83457j || this.f83449b.k();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public final void onResume$core_release() {
        this.f83452e.a();
        this.f83457j = true;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public final void onStop$core_release() {
        this.f83449b.pause();
        this.f83452e.b();
        this.f83457j = false;
    }

    public final boolean p() {
        return this.f83453f.d();
    }

    public final boolean q() {
        return this.f83458k;
    }

    public final boolean r() {
        return this.f83454g;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void release() {
        removeView(this.f83449b);
        this.f83449b.removeAllViews();
        this.f83449b.destroy();
        try {
            getContext().unregisterReceiver(this.f83451d);
        } catch (Exception unused) {
        }
    }

    public final boolean s(@NotNull Ed.c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f83453f.e(fullScreenListener);
    }

    public final void setYouTubePlayerReady$core_release(boolean z10) {
        this.f83454g = z10;
    }

    public final void t() {
        this.f83453f.f();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyYouTubePlayerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.q(context, "context");
        Hd.b bVar = new Hd.b(context, null, 0, 6, null);
        this.f83449b = bVar;
        Gd.b bVar2 = new Gd.b();
        this.f83451d = bVar2;
        Gd.d dVar = new Gd.d();
        this.f83452e = dVar;
        Gd.a aVar = new Gd.a(this);
        this.f83453f = aVar;
        this.f83455h = d.f83462b;
        this.f83456i = new HashSet<>();
        this.f83457j = true;
        addView(bVar, new FrameLayout.LayoutParams(-1, -1));
        Id.a aVar2 = new Id.a(this, bVar);
        this.f83450c = aVar2;
        aVar.a(aVar2);
        bVar.d(aVar2);
        bVar.d(dVar);
        bVar.d(new a());
        bVar.d(new b());
        bVar2.c(new c());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LegacyYouTubePlayerView(@NotNull Context context) {
        this(context, null, 0);
        M.q(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LegacyYouTubePlayerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        M.q(context, "context");
    }

    public LegacyYouTubePlayerView(Context context, AttributeSet attributeSet, int i10, C14026x c14026x) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
