package m0;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Display;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.filament.Renderer;

public class C14176k {

    public final Object f96654a;

    public Handler f96655b;

    public DisplayManager f96656c;

    public Display f96657d;

    public Renderer f96658e;

    public DisplayManager.DisplayListener f96659f;

    public class a implements DisplayManager.DisplayListener {

        public final Display f96660a;

        public final C14176k f96661b;

        public a(C14176k c14176k, Display display) {
            this.f96660a = display;
            this.f96661b = c14176k;
        }

        @Override
        public void onDisplayAdded(int i10) {
        }

        @Override
        public void onDisplayChanged(int i10) {
            if (i10 == this.f96660a.getDisplayId()) {
                this.f96661b.j();
            }
        }

        @Override
        public void onDisplayRemoved(int i10) {
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            C14176k.this.j();
        }
    }

    public C14176k(@NonNull Context context) {
        this.f96654a = new Object();
        this.f96655b = null;
        this.f96656c = (DisplayManager) context.getSystemService(Context.DISPLAY_SERVICE);
    }

    public static long d(@NonNull Display display) {
        if (Build.VERSION.SDK_INT >= 29) {
            return display.getAppVsyncOffsetNanos();
        }
        return 0L;
    }

    @NonNull
    public static Renderer.b f(@NonNull Display display, @Nullable Renderer.b bVar) {
        if (bVar == null) {
            bVar = new Renderer.b();
        }
        bVar.f60068a = i(display);
        return bVar;
    }

    public static long g(@NonNull Display display) {
        if (Build.VERSION.SDK_INT >= 29) {
            return display.getPresentationDeadlineNanos();
        }
        return 11600000L;
    }

    public static long h(@NonNull Display display) {
        return (long) (1.0E9d / display.getRefreshRate());
    }

    public static float i(@NonNull Display display) {
        return display.getRefreshRate();
    }

    public void b(@NonNull Renderer renderer, @NonNull Display display) {
        synchronized (this.f96654a) {
            try {
                if (this.f96656c != null && (renderer != this.f96658e || display != this.f96657d)) {
                    this.f96658e = renderer;
                    this.f96657d = display;
                    a aVar = new a(this, display);
                    this.f96659f = aVar;
                    this.f96656c.registerDisplayListener(aVar, this.f96655b);
                    Handler handler = this.f96655b;
                    if (handler != null) {
                        handler.post(new b());
                    } else {
                        j();
                    }
                }
            } finally {
            }
        }
    }

    public void c() {
        synchronized (this.f96654a) {
            try {
                DisplayManager.DisplayListener displayListener = this.f96659f;
                if (displayListener != null) {
                    this.f96656c.unregisterDisplayListener(displayListener);
                    this.f96659f = null;
                    this.f96657d = null;
                    this.f96658e = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Display e() {
        return this.f96657d;
    }

    public void finalize() throws Throwable {
        try {
            c();
        } finally {
            super.finalize();
        }
    }

    public final void j() {
        Display display;
        synchronized (this.f96654a) {
            try {
                Renderer renderer = this.f96658e;
                if (renderer != null && (display = this.f96657d) != null) {
                    renderer.t(f(display, renderer.f()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public C14176k(@NonNull Context context, @NonNull Handler handler) {
        this(context);
        this.f96655b = handler;
    }
}
