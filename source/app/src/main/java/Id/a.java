package Id;

import Cd.b;
import Dd.a;
import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views.LegacyYouTubePlayerView;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.ui.views.YouTubePlayerSeekBar;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class a implements Id.c, Ed.d, Ed.c, Md.b {

    public Jd.b f9225b;

    public final View f9226c;

    public final View f9227d;

    public final LinearLayout f9228e;

    public final TextView f9229f;

    public final TextView f9230g;

    public final ProgressBar f9231h;

    public final ImageView f9232i;

    public final ImageView f9233j;

    public final ImageView f9234k;

    public final ImageView f9235l;

    public final ImageView f9236m;

    public final ImageView f9237n;

    public final YouTubePlayerSeekBar f9238o;

    public View.OnClickListener f9239p;

    public View.OnClickListener f9240q;

    public final Ld.a f9241r;

    public boolean f9242s;

    public boolean f9243t;

    public boolean f9244u;

    public boolean f9245v;

    public final LegacyYouTubePlayerView f9246w;

    public final Dd.b f9247x;

    public static final class ViewOnClickListenerC0235a implements View.OnClickListener {
        public ViewOnClickListenerC0235a() {
        }

        @Override
        public final void onClick(View view) {
            a.this.f9246w.t();
        }
    }

    public static final class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public final void onClick(View view) {
            a.this.f9225b.c(a.this.f9232i);
        }
    }

    public static final class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public final void onClick(View view) {
            a.this.f9241r.o();
        }
    }

    public static final class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public final void onClick(View view) {
            a.this.T();
        }
    }

    public static final class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public final void onClick(View view) {
            a.this.f9239p.onClick(a.this.f9235l);
        }
    }

    public static final class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public final void onClick(View view) {
            a.this.f9240q.onClick(a.this.f9232i);
        }
    }

    public static final class g implements View.OnClickListener {

        public final String f9255c;

        public g(String str) {
            this.f9255c = str;
        }

        @Override
        public final void onClick(View view) {
            try {
                a.this.f9234k.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.youtube.com/watch?v=" + this.f9255c + "#t=" + a.this.f9238o.getSeekBar().getProgress())));
            } catch (Exception e10) {
                String simpleName = a.this.getClass().getSimpleName();
                String message = e10.getMessage();
                if (message == null) {
                    message = "Can't open url to YouTube";
                }
                Log.e(simpleName, message);
            }
        }
    }

    public a(@NotNull LegacyYouTubePlayerView youTubePlayerView, @NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayerView, "youTubePlayerView");
        M.q(youTubePlayer, "youTubePlayer");
        this.f9246w = youTubePlayerView;
        this.f9247x = youTubePlayer;
        this.f9243t = true;
        View inflate = View.inflate(youTubePlayerView.getContext(), b.j.f3363C, youTubePlayerView);
        Context context = youTubePlayerView.getContext();
        M.h(context, "youTubePlayerView.context");
        this.f9225b = new Kd.a(context);
        View findViewById = inflate.findViewById(b.g.f3267b1);
        M.h(findViewById, "controlsView.findViewById(R.id.panel)");
        this.f9226c = findViewById;
        View findViewById2 = inflate.findViewById(b.g.f3305l0);
        M.h(findViewById2, "controlsView.findViewById(R.id.controls_container)");
        this.f9227d = findViewById2;
        View findViewById3 = inflate.findViewById(b.g.f3347z0);
        M.h(findViewById3, "controlsView.findViewByI\u2026id.extra_views_container)");
        this.f9228e = (LinearLayout) findViewById3;
        View findViewById4 = inflate.findViewById(b.g.f3288g2);
        M.h(findViewById4, "controlsView.findViewById(R.id.video_title)");
        this.f9229f = (TextView) findViewById4;
        View findViewById5 = inflate.findViewById(b.g.f3229P0);
        M.h(findViewById5, "controlsView.findViewByI\u2026.id.live_video_indicator)");
        this.f9230g = (TextView) findViewById5;
        View findViewById6 = inflate.findViewById(b.g.f3279e1);
        M.h(findViewById6, "controlsView.findViewById(R.id.progress)");
        this.f9231h = (ProgressBar) findViewById6;
        View findViewById7 = inflate.findViewById(b.g.f3232Q0);
        M.h(findViewById7, "controlsView.findViewById(R.id.menu_button)");
        this.f9232i = (ImageView) findViewById7;
        View findViewById8 = inflate.findViewById(b.g.f3275d1);
        M.h(findViewById8, "controlsView.findViewById(R.id.play_pause_button)");
        this.f9233j = (ImageView) findViewById8;
        View findViewById9 = inflate.findViewById(b.g.f3296i2);
        M.h(findViewById9, "controlsView.findViewById(R.id.youtube_button)");
        this.f9234k = (ImageView) findViewById9;
        View findViewById10 = inflate.findViewById(b.g.f3187B0);
        M.h(findViewById10, "controlsView.findViewById(R.id.fullscreen_button)");
        this.f9235l = (ImageView) findViewById10;
        View findViewById11 = inflate.findViewById(b.g.f3314o0);
        M.h(findViewById11, "controlsView.findViewByI\u2026ustom_action_left_button)");
        this.f9236m = (ImageView) findViewById11;
        View findViewById12 = inflate.findViewById(b.g.f3317p0);
        M.h(findViewById12, "controlsView.findViewByI\u2026stom_action_right_button)");
        this.f9237n = (ImageView) findViewById12;
        View findViewById13 = inflate.findViewById(b.g.f3300j2);
        M.h(findViewById13, "controlsView.findViewByI\u2026d.youtube_player_seekbar)");
        this.f9238o = (YouTubePlayerSeekBar) findViewById13;
        this.f9241r = new Ld.a(findViewById2);
        this.f9239p = new ViewOnClickListenerC0235a();
        this.f9240q = new b();
        S();
    }

    @Override
    public void A(@NotNull Dd.b youTubePlayer, @NotNull a.b playbackRate) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(playbackRate, "playbackRate");
    }

    @Override
    @NotNull
    public Id.c B(boolean z10) {
        this.f9238o.getVideoCurrentTimeTextView().setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    public void C(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    @NotNull
    public Id.c D(boolean z10) {
        this.f9238o.getSeekBar().setVisibility(z10 ? 0 : 4);
        return this;
    }

    @Override
    @NotNull
    public Id.c E(boolean z10) {
        this.f9238o.setShowBufferingProgress(z10);
        return this;
    }

    public final void S() {
        this.f9247x.d(this.f9238o);
        this.f9247x.d(this.f9241r);
        this.f9238o.setYoutubePlayerSeekBarListener(this);
        this.f9226c.setOnClickListener(new c());
        this.f9233j.setOnClickListener(new d());
        this.f9235l.setOnClickListener(new e());
        this.f9232i.setOnClickListener(new f());
    }

    public final void T() {
        if (this.f9242s) {
            this.f9247x.pause();
        } else {
            this.f9247x.play();
        }
    }

    public final void U(boolean z10) {
        this.f9233j.setImageResource(z10 ? b.f.f3082C0 : b.f.f3084D0);
    }

    public final void V(a.d dVar) {
        int i10 = Id.b.f9256a[dVar.ordinal()];
        if (i10 == 1) {
            this.f9242s = false;
        } else if (i10 == 2) {
            this.f9242s = false;
        } else if (i10 == 3) {
            this.f9242s = true;
        }
        U(!this.f9242s);
    }

    @Override
    public void a(float f10) {
        this.f9247x.a(f10);
    }

    @Override
    @NotNull
    public Id.c addView(@NotNull View view) {
        M.q(view, "view");
        this.f9228e.addView(view, 0);
        return this;
    }

    @Override
    @NotNull
    public Id.c b(@NotNull Drawable icon, @Nullable View.OnClickListener onClickListener) {
        M.q(icon, "icon");
        this.f9237n.setImageDrawable(icon);
        this.f9237n.setOnClickListener(onClickListener);
        p(true);
        return this;
    }

    @Override
    @NotNull
    public Id.c c(@NotNull View.OnClickListener customMenuButtonClickListener) {
        M.q(customMenuButtonClickListener, "customMenuButtonClickListener");
        this.f9240q = customMenuButtonClickListener;
        return this;
    }

    @Override
    @NotNull
    public Id.c d(boolean z10) {
        this.f9234k.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    public void e(@NotNull Dd.b youTubePlayer, @NotNull String videoId) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(videoId, "videoId");
        this.f9234k.setOnClickListener(new g(videoId));
    }

    @Override
    public void f(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    public void g() {
        this.f9235l.setImageResource(b.f.f3182z0);
    }

    @Override
    @NotNull
    public Jd.b getMenu() {
        return this.f9225b;
    }

    @Override
    public void h() {
        this.f9235l.setImageResource(b.f.f3078A0);
    }

    @Override
    @NotNull
    public Id.c i(boolean z10) {
        this.f9238o.getVideoDurationTextView().setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    public void j(@NotNull Dd.b youTubePlayer, @NotNull a.c error) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(error, "error");
    }

    @Override
    @NotNull
    public Id.c k(boolean z10) {
        this.f9232i.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    public void l(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    public void m(@NotNull Dd.b youTubePlayer, @NotNull a.EnumC0095a playbackQuality) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(playbackQuality, "playbackQuality");
    }

    @Override
    @NotNull
    public Id.c n(boolean z10) {
        this.f9244u = z10;
        this.f9236m.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    @NotNull
    public Id.c o(boolean z10) {
        this.f9229f.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    @NotNull
    public Id.c p(boolean z10) {
        this.f9245v = z10;
        this.f9237n.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    @NotNull
    public Id.c q(boolean z10) {
        this.f9233j.setVisibility(z10 ? 0 : 8);
        this.f9243t = z10;
        return this;
    }

    @Override
    @NotNull
    public Id.c r(@NotNull Drawable icon, @Nullable View.OnClickListener onClickListener) {
        M.q(icon, "icon");
        this.f9236m.setImageDrawable(icon);
        this.f9236m.setOnClickListener(onClickListener);
        n(true);
        return this;
    }

    @Override
    @NotNull
    public Id.c removeView(@NotNull View view) {
        M.q(view, "view");
        this.f9228e.removeView(view);
        return this;
    }

    @Override
    public void s(@NotNull Dd.b youTubePlayer) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    @NotNull
    public Id.c t(@NotNull String videoTitle) {
        M.q(videoTitle, "videoTitle");
        this.f9229f.setText(videoTitle);
        return this;
    }

    @Override
    @NotNull
    public Id.c u(boolean z10) {
        this.f9238o.setVisibility(z10 ? 4 : 0);
        this.f9230g.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    public void v(@NotNull Dd.b youTubePlayer, @NotNull a.d state) {
        M.q(youTubePlayer, "youTubePlayer");
        M.q(state, "state");
        V(state);
        a.d dVar = a.d.PLAYING;
        if (state == dVar || state == a.d.PAUSED || state == a.d.VIDEO_CUED) {
            View view = this.f9226c;
            view.setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.transparent));
            this.f9231h.setVisibility(8);
            if (this.f9243t) {
                this.f9233j.setVisibility(0);
            }
            if (this.f9244u) {
                this.f9236m.setVisibility(0);
            }
            if (this.f9245v) {
                this.f9237n.setVisibility(0);
            }
            U(state == dVar);
            return;
        }
        U(false);
        if (state == a.d.BUFFERING) {
            this.f9231h.setVisibility(0);
            View view2 = this.f9226c;
            view2.setBackgroundColor(ContextCompat.getColor(view2.getContext(), R.color.transparent));
            if (this.f9243t) {
                this.f9233j.setVisibility(4);
            }
            this.f9236m.setVisibility(8);
            this.f9237n.setVisibility(8);
        }
        if (state == a.d.UNSTARTED) {
            this.f9231h.setVisibility(8);
            if (this.f9243t) {
                this.f9233j.setVisibility(0);
            }
        }
    }

    @Override
    public void w(@NotNull Dd.b youTubePlayer, float f10) {
        M.q(youTubePlayer, "youTubePlayer");
    }

    @Override
    @NotNull
    public Id.c x(boolean z10) {
        this.f9235l.setVisibility(z10 ? 0 : 8);
        return this;
    }

    @Override
    @NotNull
    public Id.c y(boolean z10) {
        this.f9241r.k(!z10);
        this.f9227d.setVisibility(z10 ? 0 : 4);
        return this;
    }

    @Override
    @NotNull
    public Id.c z(@NotNull View.OnClickListener customFullScreenButtonClickListener) {
        M.q(customFullScreenButtonClickListener, "customFullScreenButtonClickListener");
        this.f9239p = customFullScreenButtonClickListener;
        return this;
    }
}
