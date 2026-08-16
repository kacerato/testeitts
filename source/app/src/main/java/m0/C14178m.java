package m0;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class C14178m {

    public static final String f96663i = "UiHelper";

    public static final boolean f96664j = false;

    public int f96665a;

    public int f96666b;

    public Object f96667c;

    public c f96668d;

    public boolean f96669e;

    public b f96670f;

    public boolean f96671g;

    public boolean f96672h;

    public enum a {
        CHECK,
        DONT_CHECK
    }

    public interface b {
        void a();

        void b(int i10, int i11);
    }

    public interface c {
        void a(Surface surface);

        void b(int i10, int i11);

        void c();
    }

    public class d implements b, SurfaceHolder.Callback {

        public final SurfaceHolder f96673a;

        public d(@NonNull SurfaceHolder surfaceHolder) {
            this.f96673a = surfaceHolder;
            surfaceHolder.addCallback(this);
            if (C14178m.this.f96665a > 0 && C14178m.this.f96666b > 0) {
                surfaceHolder.setFixedSize(C14178m.this.f96665a, C14178m.this.f96666b);
            }
            Surface surface = surfaceHolder.getSurface();
            if (surface == null || !surface.isValid()) {
                return;
            }
            surfaceCreated(surfaceHolder);
            surfaceChanged(surfaceHolder, 1, surfaceHolder.getSurfaceFrame().width(), surfaceHolder.getSurfaceFrame().height());
        }

        @Override
        public void a() {
            this.f96673a.removeCallback(this);
        }

        @Override
        public void b(int i10, int i11) {
            this.f96673a.setFixedSize(i10, i11);
        }

        @Override
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            if (C14178m.this.f96668d != null) {
                C14178m.this.f96668d.b(i11, i12);
            }
        }

        @Override
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            C14178m.this.j(surfaceHolder.getSurface());
        }

        @Override
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            C14178m.this.k();
        }
    }

    public class e implements b, SurfaceHolder.Callback {

        @NonNull
        public final SurfaceView f96675a;

        public e(@NonNull SurfaceView surfaceView) {
            this.f96675a = surfaceView;
            SurfaceHolder holder = surfaceView.getHolder();
            holder.addCallback(this);
            if (C14178m.this.f96665a > 0 && C14178m.this.f96666b > 0) {
                holder.setFixedSize(C14178m.this.f96665a, C14178m.this.f96666b);
            }
            Surface surface = holder.getSurface();
            if (surface == null || !surface.isValid()) {
                return;
            }
            surfaceCreated(holder);
            surfaceChanged(holder, 1, holder.getSurfaceFrame().width(), holder.getSurfaceFrame().height());
        }

        @Override
        public void a() {
            this.f96675a.getHolder().removeCallback(this);
        }

        @Override
        public void b(int i10, int i11) {
            this.f96675a.getHolder().setFixedSize(i10, i11);
        }

        @Override
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            if (C14178m.this.f96668d != null) {
                C14178m.this.f96668d.b(i11, i12);
            }
        }

        @Override
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            C14178m.this.j(surfaceHolder.getSurface());
        }

        @Override
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            C14178m.this.k();
        }
    }

    public class f implements b, TextureView.SurfaceTextureListener {

        public final TextureView f96677a;

        public Surface f96678b;

        public f(@NonNull TextureView textureView) {
            SurfaceTexture surfaceTexture;
            this.f96677a = textureView;
            textureView.setSurfaceTextureListener(this);
            if (!textureView.isAvailable() || (surfaceTexture = textureView.getSurfaceTexture()) == null) {
                return;
            }
            onSurfaceTextureAvailable(surfaceTexture, C14178m.this.f96665a, C14178m.this.f96666b);
        }

        @Override
        public void a() {
            this.f96677a.setSurfaceTextureListener(null);
        }

        @Override
        public void b(int i10, int i11) {
            SurfaceTexture surfaceTexture = this.f96677a.getSurfaceTexture();
            if (surfaceTexture != null) {
                surfaceTexture.setDefaultBufferSize(i10, i11);
            }
            if (C14178m.this.f96668d != null) {
                C14178m.this.f96668d.b(i10, i11);
            }
        }

        public final Surface c() {
            return this.f96678b;
        }

        public final void d(@Nullable Surface surface) {
            Surface surface2;
            if (surface == null && (surface2 = this.f96678b) != null) {
                surface2.release();
            }
            this.f96678b = surface;
        }

        @Override
        public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
            if (C14178m.this.f96665a > 0 && C14178m.this.f96666b > 0) {
                surfaceTexture.setDefaultBufferSize(C14178m.this.f96665a, C14178m.this.f96666b);
            }
            Surface surface = new Surface(surfaceTexture);
            d(surface);
            C14178m.this.j(surface);
            if (C14178m.this.f96668d != null) {
                C14178m.this.f96668d.b(i10, i11);
            }
        }

        @Override
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            d(null);
            C14178m.this.k();
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
            if (C14178m.this.f96668d != null) {
                if (C14178m.this.f96665a <= 0 || C14178m.this.f96666b <= 0) {
                    C14178m.this.f96668d.b(i10, i11);
                } else {
                    surfaceTexture.setDefaultBufferSize(C14178m.this.f96665a, C14178m.this.f96666b);
                    C14178m.this.f96668d.b(C14178m.this.f96665a, C14178m.this.f96666b);
                }
                Surface c10 = c();
                if (c10 != null) {
                    C14178m.this.f96668d.a(c10);
                }
            }
        }

        @Override
        public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
        }
    }

    public C14178m() {
        this(a.CHECK);
    }

    public final boolean f(@NonNull Object obj) {
        Object obj2 = this.f96667c;
        if (obj2 != null) {
            if (obj2 == obj) {
                return false;
            }
            b bVar = this.f96670f;
            if (bVar != null) {
                bVar.a();
                this.f96670f = null;
            }
            k();
        }
        this.f96667c = obj;
        return true;
    }

    public void g(@NonNull SurfaceHolder surfaceHolder) {
        if (f(surfaceHolder)) {
            surfaceHolder.setFormat(r() ? -1 : -3);
            this.f96670f = new d(surfaceHolder);
        }
    }

    public void h(@NonNull SurfaceView surfaceView) {
        if (f(surfaceView)) {
            boolean z10 = !r();
            if (q()) {
                surfaceView.setZOrderMediaOverlay(z10);
            } else {
                surfaceView.setZOrderOnTop(z10);
            }
            surfaceView.getHolder().setFormat(r() ? -1 : -3);
            this.f96670f = new e(surfaceView);
        }
    }

    public void i(@NonNull TextureView textureView) {
        if (f(textureView)) {
            textureView.setOpaque(r());
            this.f96670f = new f(textureView);
        }
    }

    public final void j(@NonNull Surface surface) {
        c cVar = this.f96668d;
        if (cVar != null) {
            cVar.a(surface);
        }
        this.f96669e = true;
    }

    public final void k() {
        c cVar = this.f96668d;
        if (cVar != null) {
            cVar.c();
        }
        this.f96669e = false;
    }

    public void l() {
        b bVar = this.f96670f;
        if (bVar != null) {
            bVar.a();
        }
        k();
        this.f96667c = null;
        this.f96670f = null;
    }

    public int m() {
        return this.f96666b;
    }

    public int n() {
        return this.f96665a;
    }

    @Nullable
    public c o() {
        return this.f96668d;
    }

    public long p() {
        return r() ? 0L : 1L;
    }

    public boolean q() {
        return this.f96672h;
    }

    public boolean r() {
        return this.f96671g;
    }

    public boolean s() {
        return this.f96669e;
    }

    public void t(int i10, int i11) {
        this.f96665a = i10;
        this.f96666b = i11;
        b bVar = this.f96670f;
        if (bVar != null) {
            bVar.b(i10, i11);
        }
    }

    public void u(boolean z10) {
        this.f96672h = z10;
    }

    public void v(boolean z10) {
        this.f96671g = z10;
    }

    public void w(@Nullable c cVar) {
        this.f96668d = cVar;
    }

    public C14178m(a aVar) {
        this.f96671g = true;
        this.f96672h = false;
    }
}
