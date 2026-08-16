package Dd;

import Dd.a;
import ag.C3617K;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import androidx.annotation.RestrictTo;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class c {

    public static final String f5111c = "UNSTARTED";

    public static final String f5112d = "ENDED";

    public static final String f5113e = "PLAYING";

    public static final String f5114f = "PAUSED";

    public static final String f5115g = "BUFFERING";

    public static final String f5116h = "CUED";

    public static final String f5117i = "small";

    public static final String f5118j = "medium";

    public static final String f5119k = "large";

    public static final String f5120l = "hd720";

    public static final String f5121m = "hd1080";

    public static final String f5122n = "highres";

    public static final String f5123o = "default";

    public static final String f5124p = "0.25";

    public static final String f5125q = "0.5";

    public static final String f5126r = "1";

    public static final String f5127s = "1.5";

    public static final String f5128t = "2";

    public static final String f5129u = "2";

    public static final String f5130v = "5";

    public static final String f5131w = "100";

    public static final String f5132x = "101";

    public static final String f5133y = "150";

    public static final a f5134z = new a(null);

    public final Handler f5135a;

    public final b f5136b;

    public static final class a {
        public a() {
        }

        public a(C14026x c14026x) {
            this();
        }
    }

    public interface b {
        void b();

        @NotNull
        Dd.b getInstance();

        @NotNull
        Collection<Ed.d> getListeners();
    }

    public static final class RunnableC0096c implements Runnable {
        public RunnableC0096c() {
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().s(c.this.f5136b.getInstance());
            }
        }
    }

    public static final class d implements Runnable {

        public final a.c f5139c;

        public d(a.c cVar) {
            this.f5139c = cVar;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().j(c.this.f5136b.getInstance(), this.f5139c);
            }
        }
    }

    public static final class e implements Runnable {

        public final a.EnumC0095a f5141c;

        public e(a.EnumC0095a enumC0095a) {
            this.f5141c = enumC0095a;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().m(c.this.f5136b.getInstance(), this.f5141c);
            }
        }
    }

    public static final class f implements Runnable {

        public final a.b f5143c;

        public f(a.b bVar) {
            this.f5143c = bVar;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().A(c.this.f5136b.getInstance(), this.f5143c);
            }
        }
    }

    public static final class g implements Runnable {
        public g() {
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().C(c.this.f5136b.getInstance());
            }
        }
    }

    public static final class h implements Runnable {

        public final a.d f5146c;

        public h(a.d dVar) {
            this.f5146c = dVar;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().v(c.this.f5136b.getInstance(), this.f5146c);
            }
        }
    }

    public static final class i implements Runnable {

        public final float f5148c;

        public i(float f10) {
            this.f5148c = f10;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().l(c.this.f5136b.getInstance(), this.f5148c);
            }
        }
    }

    public static final class j implements Runnable {

        public final float f5150c;

        public j(float f10) {
            this.f5150c = f10;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().w(c.this.f5136b.getInstance(), this.f5150c);
            }
        }
    }

    public static final class k implements Runnable {

        public final String f5152c;

        public k(String str) {
            this.f5152c = str;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().e(c.this.f5136b.getInstance(), this.f5152c);
            }
        }
    }

    public static final class l implements Runnable {

        public final float f5154c;

        public l(float f10) {
            this.f5154c = f10;
        }

        @Override
        public final void run() {
            Iterator<Ed.d> it = c.this.f5136b.getListeners().iterator();
            while (it.hasNext()) {
                it.next().f(c.this.f5136b.getInstance(), this.f5154c);
            }
        }
    }

    public static final class m implements Runnable {
        public m() {
        }

        @Override
        public final void run() {
            c.this.f5136b.b();
        }
    }

    public c(@NotNull b youTubePlayerOwner) {
        M.q(youTubePlayerOwner, "youTubePlayerOwner");
        this.f5136b = youTubePlayerOwner;
        this.f5135a = new Handler(Looper.getMainLooper());
    }

    public final a.EnumC0095a b(String str) {
        return C3617K.e2(str, f5117i, true) ? a.EnumC0095a.SMALL : C3617K.e2(str, "medium", true) ? a.EnumC0095a.MEDIUM : C3617K.e2(str, f5119k, true) ? a.EnumC0095a.LARGE : C3617K.e2(str, f5120l, true) ? a.EnumC0095a.HD720 : C3617K.e2(str, f5121m, true) ? a.EnumC0095a.HD1080 : C3617K.e2(str, f5122n, true) ? a.EnumC0095a.HIGH_RES : C3617K.e2(str, "default", true) ? a.EnumC0095a.DEFAULT : a.EnumC0095a.UNKNOWN;
    }

    public final a.b c(String str) {
        return C3617K.e2(str, f5124p, true) ? a.b.RATE_0_25 : C3617K.e2(str, f5125q, true) ? a.b.RATE_0_5 : C3617K.e2(str, "1", true) ? a.b.RATE_1 : C3617K.e2(str, "1.5", true) ? a.b.RATE_1_5 : C3617K.e2(str, "2", true) ? a.b.RATE_2 : a.b.UNKNOWN;
    }

    public final a.c d(String str) {
        if (C3617K.e2(str, "2", true)) {
            return a.c.INVALID_PARAMETER_IN_REQUEST;
        }
        if (C3617K.e2(str, "5", true)) {
            return a.c.HTML_5_PLAYER;
        }
        if (C3617K.e2(str, f5131w, true)) {
            return a.c.VIDEO_NOT_FOUND;
        }
        if (!C3617K.e2(str, f5132x, true) && !C3617K.e2(str, f5133y, true)) {
            return a.c.UNKNOWN;
        }
        return a.c.VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER;
    }

    public final a.d e(String str) {
        return C3617K.e2(str, f5111c, true) ? a.d.UNSTARTED : C3617K.e2(str, f5112d, true) ? a.d.ENDED : C3617K.e2(str, f5113e, true) ? a.d.PLAYING : C3617K.e2(str, f5114f, true) ? a.d.PAUSED : C3617K.e2(str, f5115g, true) ? a.d.BUFFERING : C3617K.e2(str, f5116h, true) ? a.d.VIDEO_CUED : a.d.UNKNOWN;
    }

    @JavascriptInterface
    public final void sendApiChange() {
        this.f5135a.post(new RunnableC0096c());
    }

    @JavascriptInterface
    public final void sendError(@NotNull String error) {
        M.q(error, "error");
        this.f5135a.post(new d(d(error)));
    }

    @JavascriptInterface
    public final void sendPlaybackQualityChange(@NotNull String quality) {
        M.q(quality, "quality");
        this.f5135a.post(new e(b(quality)));
    }

    @JavascriptInterface
    public final void sendPlaybackRateChange(@NotNull String rate) {
        M.q(rate, "rate");
        this.f5135a.post(new f(c(rate)));
    }

    @JavascriptInterface
    public final void sendReady() {
        this.f5135a.post(new g());
    }

    @JavascriptInterface
    public final void sendStateChange(@NotNull String state) {
        M.q(state, "state");
        this.f5135a.post(new h(e(state)));
    }

    @JavascriptInterface
    public final void sendVideoCurrentTime(@NotNull String seconds) {
        M.q(seconds, "seconds");
        try {
            this.f5135a.post(new i(Float.parseFloat(seconds)));
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final void sendVideoDuration(@NotNull String seconds) {
        M.q(seconds, "seconds");
        try {
            if (TextUtils.isEmpty(seconds)) {
                seconds = "0";
            }
            this.f5135a.post(new j(Float.parseFloat(seconds)));
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final void sendVideoId(@NotNull String videoId) {
        M.q(videoId, "videoId");
        this.f5135a.post(new k(videoId));
    }

    @JavascriptInterface
    public final void sendVideoLoadedFraction(@NotNull String fraction) {
        M.q(fraction, "fraction");
        try {
            this.f5135a.post(new l(Float.parseFloat(fraction)));
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @JavascriptInterface
    public final boolean sendYouTubeIFrameAPIReady() {
        return this.f5135a.post(new m());
    }
}
