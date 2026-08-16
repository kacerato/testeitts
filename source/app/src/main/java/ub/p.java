package ub;

import Ic.C2633l;
import JAVARuntime.Texture;
import JAVARuntime.Thread;
import android.graphics.Bitmap;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.UnsupportedTextureOperation;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import java.io.File;
import java.io.FileOutputStream;

public abstract class p extends K8.f {

    public static final M9.c f118774l = new M9.c() {
        @Override
        public final void a(long j10) {
            Qb.c.o(j10);
        }
    };

    public int f118776c;

    public int f118777d;

    public boolean f118778e;

    public Texture f118782k;

    public long f118775b = 0;

    public boolean f118779g = false;

    public boolean f118780i = false;

    public final Mc.a<Bb.e> f118781j = new Mc.a<>();

    public class a implements d {

        public final com.itsmagic.engine.Engines.Engine.Texture.Data.a f118783a;

        public a(final com.itsmagic.engine.Engines.Engine.Texture.Data.a val$texture) {
            this.f118783a = val$texture;
        }

        @Override
        public void a(int x10, int y10, ColorINT colorINT) {
            this.f118783a.H(x10, y10, colorINT);
        }

        @Override
        public void b(int x10, int y10, float v10) {
            this.f118783a.K(x10, y10, v10);
        }

        @Override
        public void c(int x10, int y10, float v10) {
            this.f118783a.I(x10, y10, v10);
        }

        @Override
        public void d(int x10, int y10, float r10, float g10, float b10, float a10) {
            this.f118783a.E(x10, y10, r10, g10, b10, a10);
        }

        @Override
        public float e(int x10, int y10) {
            return this.f118783a.l(x10, y10);
        }

        @Override
        public float f(int x10, int y10) {
            return this.f118783a.m(x10, y10);
        }

        @Override
        public void g(int x10, int y10, float v10) {
            this.f118783a.P(x10, y10, v10);
        }

        @Override
        public int getHeight() {
            return this.f118783a.getHeight();
        }

        @Override
        public int getWidth() {
            return this.f118783a.getWidth();
        }

        @Override
        public float h(int x10, int y10) {
            return this.f118783a.o(x10, y10);
        }

        @Override
        public float i(int x10, int y10) {
            return this.f118783a.n(x10, y10);
        }

        @Override
        public void j(int x10, int y10, float v10) {
            this.f118783a.M(x10, y10, v10);
        }

        @Override
        public void k(int x10, int y10, ColorINT out) {
            this.f118783a.j(x10, y10, out);
        }
    }

    public class b implements a.b {

        public final File f118784a;

        public final Runnable f118785b;

        public b(final File val$outputFile, final Runnable val$postExecute) {
            this.f118784a = val$outputFile;
            this.f118785b = val$postExecute;
        }

        @Override
        public void on(Bitmap bitmap) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        File parentFile = this.f118784a.getParentFile();
                        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                            if (!bitmap.isRecycled()) {
                                bitmap.recycle();
                            }
                            Runnable runnable = this.f118785b;
                            if (runnable != null) {
                                runnable.run();
                                return;
                            }
                            return;
                        }
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(this.f118784a);
                            try {
                                if (C2633l.b(this.f118784a.getName(), ".png")) {
                                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                    fileOutputStream.flush();
                                } else {
                                    if (!C2633l.b(this.f118784a.getName(), ".jpg")) {
                                        throw new RuntimeException("Invalid format: " + this.f118784a.getName());
                                    }
                                    bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                    fileOutputStream.flush();
                                }
                                fileOutputStream.close();
                            } catch (Throwable th2) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                        if (!bitmap.isRecycled()) {
                            bitmap.recycle();
                        }
                        Runnable runnable2 = this.f118785b;
                        if (runnable2 != null) {
                            runnable2.run();
                            return;
                        }
                        return;
                    }
                } finally {
                    if (!bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                    Runnable runnable3 = this.f118785b;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                }
            }
            if (bitmap != null) {
            }
        }
    }

    public static class c implements e {
        @Override
        public void a(d oldTexture, d newTexture) {
        }
    }

    public interface d {
        void a(int x10, int y10, ColorINT colorINT);

        void b(int x10, int y10, float v10);

        void c(int x10, int y10, float v10);

        void d(int x10, int y10, float r10, float g10, float b10, float a10);

        float e(int x10, int y10);

        float f(int x10, int y10);

        void g(int x10, int y10, float v10);

        int getHeight();

        int getWidth();

        float h(int x10, int y10);

        float i(int x10, int y10);

        void j(int x10, int y10, float v10);

        void k(int x10, int y10, ColorINT out);
    }

    public interface e {
        void a(d oldTexture, d newTexture);
    }

    public static boolean D(Texture textureInstance) {
        if (textureInstance == null) {
            return false;
        }
        return E(textureInstance.instance);
    }

    public static boolean E(p textureInstance) {
        if (textureInstance == null) {
            return false;
        }
        return textureInstance.C();
    }

    public static boolean K(Texture texture) {
        p pVar;
        return (texture == null || (pVar = texture.instance) == null || !pVar.J()) ? false : true;
    }

    public static boolean L(p texture) {
        return texture != null && texture.J();
    }

    public static boolean M(String file) {
        return C2633l.b(Tc.b.t(file), ".tif") || C2633l.b(Tc.b.t(file), ".tga");
    }

    public static d y(com.itsmagic.engine.Engines.Engine.Texture.Data.a texture) {
        return new a(texture);
    }

    public void A(int width, int height, long id2, boolean requireAutomaticCleaner) {
        this.f118776c = width;
        this.f118777d = height;
        this.f118775b = id2;
        if (requireAutomaticCleaner) {
            this.f118778e = true;
            SGC.put(this, id2, f118774l, false, M9.a.GPU, 50);
        }
    }

    public boolean B() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public boolean C() {
        return false;
    }

    public boolean F() {
        return this.f118779g;
    }

    public boolean G() {
        return false;
    }

    public boolean H() {
        return true;
    }

    public boolean I() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public boolean J() {
        return (this.f118780i || this.f118775b == 0) ? false : true;
    }

    public boolean N() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public long P() {
        return this.f118776c * this.f118777d * 4;
    }

    public void Q() {
        synchronized (this.f118781j) {
            for (int i10 = 0; i10 < this.f118781j.size(); i10++) {
                try {
                    this.f118781j.get(i10).b();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void S(p textureInstance, int startX, int startY, int width, int height) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void T(Bb.e listener) {
        listener.getClass();
        synchronized (this.f118781j) {
            this.f118781j.remove(listener);
        }
    }

    public void U(int w10, int h10) {
        V(w10, h10, null);
    }

    public void V(int w10, int h10, e resizeFilter) {
        throw new UnsupportedTextureOperation("Not supported at " + getClass().getSimpleName());
    }

    public void W(int ofx, int ofy, int w10, int h10, File outputFile) {
        X(ofx, ofy, w10, h10, outputFile, null);
    }

    public void X(int ofx, int ofy, int w10, int h10, File outputFile, Runnable postExecute) {
        z(ofx, ofy, w10, h10, new b(outputFile, postExecute));
    }

    public void Y(int x10, int y10, ColorINT color) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void Z(boolean editedInGame) {
        this.f118779g = editedInGame;
    }

    public void a0(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void apply() {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void b0(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void c0(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void d0(int x10, int y10, float v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void destroyImmediate() {
        if (this.f118780i) {
            throw new RuntimeException();
        }
        if (this.f118778e) {
            this.f118780i = true;
            SGC.destroyImmediate(this);
        }
    }

    public void e(Bb.e listener) {
        listener.getClass();
        synchronized (this.f118781j) {
            this.f118781j.add(listener);
        }
    }

    public void e0(int x10, int y10, float r10, float g10, float b10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void f(FilamentMaterial m10, String attributeName) {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public void f0(int x10, int y10, float r10, float g10, float b10, float a10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void g0(boolean garbage) {
        this.f118780i = garbage;
    }

    public int getHeight() {
        return this.f118777d;
    }

    public int getWidth() {
        return this.f118776c;
    }

    public void h(File file, int quality, a.EnumC1369a exportFormat) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void h0(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public ColorINT i(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void i0(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public boolean isGarbage() {
        return this.f118780i;
    }

    public ColorINT j(int x10, int y10, ColorINT out) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void j0(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public abstract FilamentTexture k();

    public void k0(int x10, int y10, int v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float l(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void l0(int x10, int y10, int r10, int g10, int b10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float m(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void m0(int x10, int y10, int r10, int g10, int b10, int a10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float n(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void n0(boolean v10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public float o(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void o0(boolean enabled) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public void p(p out) {
        if (!J()) {
            throw new UnsupportedTextureOperation("Texture is not renderable yet");
        }
        Thread.requestOpenglEngineThread();
    }

    public Texture p0() {
        Texture texture = this.f118782k;
        if (texture != null) {
            return texture;
        }
        Texture texture2 = new Texture(this);
        this.f118782k = texture2;
        return texture2;
    }

    public long q() {
        long j10 = this.f118775b;
        if (j10 != 0) {
            return j10;
        }
        throw new UnsupportedTextureOperation("Texture not renderable");
    }

    public int r(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int s(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int u(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public int v(int x10, int y10) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }

    public TextureConfig.d w() {
        throw new RuntimeException("Override ths method! [" + getClass().getSimpleName() + "]");
    }

    public com.itsmagic.engine.Engines.Engine.Texture.Data.a x() {
        throw new RuntimeException("Override this method!");
    }

    public void z(int ofx, int ofy, int w10, int h10, a.b extractCallback) {
        throw new UnsupportedTextureOperation("Unsupported at " + getClass().getSimpleName());
    }
}
