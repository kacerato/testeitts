package com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views;

import Cd.b;
import Ed.c;
import Ed.d;
import Gd.g;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class YouTubePlayerView extends Hd.a implements LifecycleObserver {

    public final LegacyYouTubePlayerView f83467b;

    public final Gd.a f83468c;

    public boolean f83469d;

    public static final class a implements c {
        public a() {
        }

        @Override
        public void g() {
            YouTubePlayerView.this.f83468c.c();
        }

        @Override
        public void h() {
            YouTubePlayerView.this.f83468c.b();
        }
    }

    public static final class b extends Ed.a {

        public final String f83472c;

        public final boolean f83473d;

        public b(String str, boolean z10) {
            this.f83472c = str;
            this.f83473d = z10;
        }

        @Override
        public void C(@NotNull Dd.b youTubePlayer) {
            M.q(youTubePlayer, "youTubePlayer");
            if (this.f83472c != null) {
                g.b(youTubePlayer, YouTubePlayerView.this.f83467b.getCanPlay$core_release() && this.f83473d, this.f83472c, 0.0f);
            }
            youTubePlayer.c(this);
        }
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    private final void onResume() {
        this.f83467b.onResume$core_release();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    private final void onStop() {
        this.f83467b.onStop$core_release();
    }

    public final boolean c(@NotNull c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f83468c.a(fullScreenListener);
    }

    public final boolean d(@NotNull d youTubePlayerListener) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        return this.f83467b.getYouTubePlayer$core_release().d(youTubePlayerListener);
    }

    public final void e(boolean z10) {
        this.f83467b.f(z10);
    }

    public final void f() {
        this.f83467b.g();
    }

    public final void g() {
        this.f83467b.h();
    }

    public final boolean getEnableAutomaticInitialization() {
        return this.f83469d;
    }

    @NotNull
    public final Id.c getPlayerUiController() {
        return this.f83467b.getPlayerUiController();
    }

    public final void h(@NotNull Ed.b youTubePlayerCallback) {
        M.q(youTubePlayerCallback, "youTubePlayerCallback");
        this.f83467b.i(youTubePlayerCallback);
    }

    @NotNull
    public final View i(@LayoutRes int i10) {
        return this.f83467b.j(i10);
    }

    public final void j(@NotNull d youTubePlayerListener) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        if (this.f83469d) {
            throw new IllegalStateException("YouTubePlayerView: If you want to initialize this view manually, you need to set 'enableAutomaticInitialization' to false");
        }
        this.f83467b.l(youTubePlayerListener, true);
    }

    public final void k(@NotNull d youTubePlayerListener, boolean z10) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        if (this.f83469d) {
            throw new IllegalStateException("YouTubePlayerView: If you want to initialize this view manually, you need to set 'enableAutomaticInitialization' to false");
        }
        this.f83467b.m(youTubePlayerListener, z10, null);
    }

    public final void l(@NotNull d youTubePlayerListener, boolean z10, @Nullable Fd.a aVar) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        if (this.f83469d) {
            throw new IllegalStateException("YouTubePlayerView: If you want to initialize this view manually, you need to set 'enableAutomaticInitialization' to false");
        }
        this.f83467b.m(youTubePlayerListener, z10, aVar);
    }

    public final void m(@NotNull d youTubePlayerListener, boolean z10) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        if (this.f83469d) {
            throw new IllegalStateException("YouTubePlayerView: If you want to initialize this view manually, you need to set 'enableAutomaticInitialization' to false");
        }
        this.f83467b.n(youTubePlayerListener, z10);
    }

    public final boolean n() {
        return this.f83468c.d();
    }

    public final boolean o(@NotNull c fullScreenListener) {
        M.q(fullScreenListener, "fullScreenListener");
        return this.f83468c.e(fullScreenListener);
    }

    public final boolean p(@NotNull d youTubePlayerListener) {
        M.q(youTubePlayerListener, "youTubePlayerListener");
        return this.f83467b.getYouTubePlayer$core_release().c(youTubePlayerListener);
    }

    public final void q() {
        this.f83467b.t();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void release() {
        this.f83467b.release();
    }

    public final void setEnableAutomaticInitialization(boolean z10) {
        this.f83469d = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.q(context, "context");
        LegacyYouTubePlayerView legacyYouTubePlayerView = new LegacyYouTubePlayerView(context);
        this.f83467b = legacyYouTubePlayerView;
        this.f83468c = new Gd.a(this);
        addView(legacyYouTubePlayerView, new FrameLayout.LayoutParams(-1, -1));
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, b.n.f3860G8, 0, 0);
        this.f83469d = obtainStyledAttributes.getBoolean(b.n.f3880I8, true);
        boolean z10 = obtainStyledAttributes.getBoolean(b.n.f3870H8, false);
        boolean z11 = obtainStyledAttributes.getBoolean(b.n.f3900K8, true);
        String string = obtainStyledAttributes.getString(b.n.f3970R8);
        boolean z12 = obtainStyledAttributes.getBoolean(b.n.f3960Q8, false);
        boolean z13 = obtainStyledAttributes.getBoolean(b.n.f3890J8, false);
        boolean z14 = obtainStyledAttributes.getBoolean(b.n.f3950P8, true);
        boolean z15 = obtainStyledAttributes.getBoolean(b.n.f3910L8, true);
        boolean z16 = obtainStyledAttributes.getBoolean(b.n.f3930N8, true);
        boolean z17 = obtainStyledAttributes.getBoolean(b.n.f3940O8, true);
        boolean z18 = obtainStyledAttributes.getBoolean(b.n.f3920M8, true);
        obtainStyledAttributes.recycle();
        if (!this.f83469d && z12) {
            throw new IllegalStateException("YouTubePlayerView: 'enableAutomaticInitialization' is false and 'useWebUi' is set to true. This is not possible, if you want to manually initialize YouTubePlayerView and use the web ui, you should manually initialize the YouTubePlayerView using 'initializeWithWebUi'");
        }
        if (string == null && z10) {
            throw new IllegalStateException("YouTubePlayerView: videoId is not set but autoPlay is set to true. This combination is not possible.");
        }
        if (!z12) {
            legacyYouTubePlayerView.getPlayerUiController().u(z13).d(z14).x(z15).B(z16).i(z17).D(z18);
        }
        b bVar = new b(string, z10);
        if (this.f83469d) {
            if (z12) {
                legacyYouTubePlayerView.n(bVar, z11);
            } else {
                legacyYouTubePlayerView.l(bVar, z11);
            }
        }
        legacyYouTubePlayerView.e(new a());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(@NotNull Context context) {
        this(context, null, 0);
        M.q(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        M.q(context, "context");
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i10, C14026x c14026x) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
