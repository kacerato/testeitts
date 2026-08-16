package m0;

import android.os.Build;
import android.view.Choreographer;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.filament.Renderer;

public class C14169d {

    public final Choreographer f96648a;

    public final a f96649b;

    public Renderer f96650c;

    public final Object f96651d;

    public interface a {
        void a(long j10);
    }

    public class b implements Choreographer.FrameCallback {
        @Override
        public void doFrame(long j10) {
            C14169d.this.f96648a.postFrameCallback(this);
            C14169d.this.c(j10);
        }

        public b() {
        }
    }

    @RequiresApi(33)
    public class c implements Choreographer.VsyncCallback {
        public void onVsync(Choreographer.FrameData frameData) {
            long frameTimeNanos;
            Choreographer.FrameTimeline preferredFrameTimeline;
            long expectedPresentationTimeNanos;
            long deadlineNanos;
            C14169d.this.f96648a.postVsyncCallback(this);
            if (C14169d.this.f96650c != null) {
                preferredFrameTimeline = frameData.getPreferredFrameTimeline();
                Renderer renderer = C14169d.this.f96650c;
                expectedPresentationTimeNanos = preferredFrameTimeline.getExpectedPresentationTimeNanos();
                renderer.s(expectedPresentationTimeNanos);
                Renderer renderer2 = C14169d.this.f96650c;
                deadlineNanos = preferredFrameTimeline.getDeadlineNanos();
                renderer2.w(deadlineNanos);
            }
            C14169d c14169d = C14169d.this;
            frameTimeNanos = frameData.getFrameTimeNanos();
            c14169d.c(frameTimeNanos);
        }

        public c() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14169d() {
        this.f96648a = Choreographer.getInstance();
        Object[] objArr = 0;
        this.f96649b = null;
        if (Build.VERSION.SDK_INT >= 33) {
            this.f96651d = new c();
        } else {
            this.f96651d = new b();
        }
    }

    public void c(long j10) {
        a aVar = this.f96649b;
        if (aVar != null) {
            aVar.a(j10);
        }
    }

    public void d() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f96648a.postVsyncCallback(C14166a.a(this.f96651d));
        } else {
            this.f96648a.postFrameCallback((Choreographer.FrameCallback) this.f96651d);
        }
    }

    public void e() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f96648a.removeVsyncCallback(C14166a.a(this.f96651d));
        } else {
            this.f96648a.removeFrameCallback((Choreographer.FrameCallback) this.f96651d);
        }
    }

    public void f(@Nullable Renderer renderer) {
        this.f96650c = renderer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14169d(@NonNull a aVar) {
        this.f96648a = Choreographer.getInstance();
        this.f96649b = aVar;
        Object[] objArr = 0;
        if (Build.VERSION.SDK_INT >= 33) {
            this.f96651d = new c();
        } else {
            this.f96651d = new b();
        }
    }
}
