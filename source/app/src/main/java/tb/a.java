package Tb;

import Ic.C2633l;
import JAVARuntime.FrameBuffer;
import android.graphics.Bitmap;
import ca.c;
import com.google.android.filament.TextureSampler;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Engine.Texture.DepthTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.Exceptions.InvalidTextureSizeException;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Graphics.FrameBuffer.FBO;
import java.io.File;
import java.io.FileOutputStream;
import ub.p;

public class a {

    public FBO f24190a;

    public ColorTexture[] f24191b;

    public DepthTexture f24192c;

    public p f24193d;

    public int f24194e;

    public int f24195f;

    public int f24196g;

    public int f24197h;

    public int f24198i;

    public int f24199j;

    public boolean f24200k;

    public boolean f24201l;

    public TextureSampler.f f24202m;

    public boolean f24203n;

    public boolean f24204o;

    public boolean f24205p;

    public int[] f24206q;

    public boolean f24207r;

    public FrameBuffer f24208s;

    public class C0577a implements a.b {

        public final File f24209a;

        public final int f24210b;

        public final Runnable f24211c;

        public class RunnableC0578a implements Runnable {

            public final Bitmap f24213b;

            public RunnableC0578a(final Bitmap val$bitmap) {
                this.f24213b = val$bitmap;
            }

            @Override
            public void run() {
                Runnable runnable;
                try {
                    Bitmap bitmap = this.f24213b;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        File parentFile = C0577a.this.f24209a.getParentFile();
                        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                            if (runnable != null) {
                                return;
                            } else {
                                return;
                            }
                        }
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(C0577a.this.f24209a);
                            try {
                                if (C2633l.b(C0577a.this.f24209a.getName(), ".png")) {
                                    this.f24213b.compress(Bitmap.CompressFormat.PNG, C0577a.this.f24210b, fileOutputStream);
                                    fileOutputStream.flush();
                                } else {
                                    if (!C2633l.b(C0577a.this.f24209a.getName(), ".jpg")) {
                                        throw new RuntimeException("Invalid format: " + C0577a.this.f24209a.getName());
                                    }
                                    this.f24213b.compress(Bitmap.CompressFormat.JPEG, C0577a.this.f24210b, fileOutputStream);
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
                        Bitmap bitmap2 = this.f24213b;
                        if (bitmap2 != null && !bitmap2.isRecycled()) {
                            this.f24213b.recycle();
                        }
                        Runnable runnable2 = C0577a.this.f24211c;
                        if (runnable2 != null) {
                            runnable2.run();
                            return;
                        }
                        return;
                    }
                    Bitmap bitmap3 = this.f24213b;
                    if (bitmap3 != null && !bitmap3.isRecycled()) {
                        this.f24213b.recycle();
                    }
                    Runnable runnable3 = C0577a.this.f24211c;
                    if (runnable3 != null) {
                        runnable3.run();
                    }
                } finally {
                    Bitmap bitmap4 = this.f24213b;
                    if (bitmap4 != null && !bitmap4.isRecycled()) {
                        this.f24213b.recycle();
                    }
                    runnable = C0577a.this.f24211c;
                    if (runnable != null) {
                        runnable.run();
                    }
                }
            }
        }

        public C0577a(final File val$outputFile, final int val$q, final Runnable val$doneRunnable) {
            this.f24209a = val$outputFile;
            this.f24210b = val$q;
            this.f24211c = val$doneRunnable;
        }

        @Override
        public void on(Bitmap bitmap) {
            c.D(new RunnableC0578a(bitmap));
        }
    }

    public class b implements Runnable {

        public final p[] f24215b;

        public b(final p[] val$toDestroy) {
            this.f24215b = val$toDestroy;
        }

        @Override
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    p[] pVarArr = this.f24215b;
                    if (i10 >= pVarArr.length) {
                        return;
                    }
                    try {
                        pVarArr[i10].destroyImmediate();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    i10++;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            }
        }
    }

    public a(int width, int height) {
        this(width, height, 100, 1);
    }

    public void a(FilamentView view) {
        if (this.f24207r) {
            throw new RuntimeException();
        }
        if (this.f24204o) {
            throw new RuntimeException("FBO already binded");
        }
        this.f24204o = true;
        Qb.a.e();
        this.f24190a.b(view);
    }

    public int b() {
        return this.f24191b.length;
    }

    public void c() {
        if (this.f24207r) {
            throw new RuntimeException();
        }
        this.f24207r = true;
        Qb.a.d();
        this.f24190a.c();
        e();
    }

    public void d(boolean textures) {
        if (this.f24207r) {
            throw new RuntimeException();
        }
        Qb.a.d();
        this.f24190a.c();
        if (textures) {
            e();
        }
        this.f24207r = true;
    }

    public final void e() {
        ColorTexture[] colorTextureArr = this.f24191b;
        int i10 = 0;
        int length = colorTextureArr != null ? colorTextureArr.length : 0;
        if (this.f24192c != null) {
            length++;
        }
        p[] pVarArr = new p[length];
        if (colorTextureArr != null) {
            int i11 = 0;
            while (true) {
                ColorTexture[] colorTextureArr2 = this.f24191b;
                if (i10 >= colorTextureArr2.length) {
                    break;
                }
                ColorTexture colorTexture = colorTextureArr2[i10];
                if (colorTexture != null) {
                    pVarArr[i11] = colorTexture;
                    i11++;
                }
                i10++;
            }
            i10 = i11;
        }
        this.f24191b = null;
        DepthTexture depthTexture = this.f24192c;
        if (depthTexture != null) {
            pVarArr[i10] = depthTexture;
        }
        this.f24192c = null;
        K8.a.h(2, new b(pVarArr));
    }

    public void f(File outputFile, int q10) {
        g(outputFile, q10, null);
    }

    public void g(File outputFile, int q10, Runnable doneRunnable) {
        Qb.a.d();
        l().N0(new C0577a(outputFile, q10, doneRunnable));
    }

    public int h() {
        return this.f24195f;
    }

    public int i() {
        return this.f24194e;
    }

    public int j() {
        return this.f24199j;
    }

    public p k() {
        return this.f24193d;
    }

    public ColorTexture l() {
        return m(0);
    }

    public ColorTexture m(int x10) {
        return this.f24191b[x10];
    }

    public DepthTexture n() {
        return this.f24192c;
    }

    public int o() {
        return this.f24197h;
    }

    public int p() {
        return this.f24196g;
    }

    public int q() {
        return this.f24198i;
    }

    public FilamentRenderTarget r() {
        FBO fbo = this.f24190a;
        if (fbo == null) {
            return null;
        }
        return fbo.d();
    }

    public boolean s() {
        ColorTexture colorTexture;
        ColorTexture[] colorTextureArr = this.f24191b;
        return colorTextureArr != null && colorTextureArr.length > 0 && (colorTexture = colorTextureArr[0]) != null && colorTexture.J();
    }

    public boolean t() {
        return this.f24192c != null;
    }

    public boolean u(int width, int height) {
        return v(width, height, 100);
    }

    public boolean v(int width, int height, int cameraPercentage) {
        if (this.f24205p) {
            throw new RuntimeException("Can`t resize a static frame buffer");
        }
        if (this.f24207r) {
            throw new RuntimeException();
        }
        if (this.f24196g == width && this.f24197h == height && this.f24198i == cameraPercentage) {
            return false;
        }
        Qb.a.d();
        this.f24196g = width;
        this.f24197h = height;
        int N10 = Nc.b.N(1, cameraPercentage);
        this.f24198i = N10;
        int i10 = (int) (width * N10 * 0.01f);
        int i11 = (int) (height * N10 * 0.01f);
        if (!Nc.b.J0(i10)) {
            i10--;
        }
        if (!Nc.b.J0(i11)) {
            i11--;
        }
        int N11 = Nc.b.N(2, i10);
        int N12 = Nc.b.N(2, i11);
        if (N11 <= 0 || N12 <= 0) {
            throw new InvalidTextureSizeException("Resultant width and height from the width*resolution and height*resolution can't be <= 0");
        }
        if (this.f24203n) {
            N11 = Nc.b.K(N11, 4096);
            N12 = Nc.b.K(N12, 4096);
        } else if (N11 > 4096 || N12 > 4096) {
            throw new InvalidTextureSizeException("Resultant width and height from the width*resolution and height*resolution can't be > 4096");
        }
        if (this.f24194e == N11 && this.f24195f == N12) {
            return false;
        }
        this.f24194e = N11;
        this.f24195f = N12;
        FBO fbo = this.f24190a;
        if (fbo != null) {
            fbo.c();
        }
        e();
        int i12 = this.f24199j;
        if (i12 > 0) {
            this.f24191b = new ColorTexture[i12];
            for (int i13 = 0; i13 < this.f24199j; i13++) {
                this.f24191b[i13] = new ColorTexture(this.f24194e, this.f24195f, this.f24202m);
            }
        } else {
            this.f24191b = null;
        }
        if (this.f24200k) {
            this.f24192c = new DepthTexture(this.f24194e, this.f24195f, this.f24202m);
        } else {
            this.f24192c = null;
        }
        this.f24190a = new FBO(this.f24194e, this.f24195f, this.f24191b, this.f24192c);
        return true;
    }

    public void w(p colorBindOverride) {
        this.f24193d = colorBindOverride;
    }

    public void x(int renderPercentage) {
        this.f24198i = renderPercentage;
    }

    public FrameBuffer y() {
        FrameBuffer frameBuffer = this.f24208s;
        if (frameBuffer != null) {
            return frameBuffer;
        }
        FrameBuffer frameBuffer2 = new FrameBuffer(this);
        this.f24208s = frameBuffer2;
        return frameBuffer2;
    }

    public void z() {
        if (this.f24207r) {
            throw new RuntimeException();
        }
        this.f24204o = false;
        Qb.a.e();
        this.f24190a.e();
    }

    public a(int width, int height, int cameraPercentage) {
        this(width, height, cameraPercentage, 1);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments) {
        this(width, height, cameraPercentage, colorAttachments, (DepthTexture) null);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, TextureSampler.f colorClampMode) {
        this(width, height, cameraPercentage, colorAttachments, null, true, true, colorClampMode);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, boolean createDepth) {
        this(width, height, cameraPercentage, colorAttachments, null, createDepth);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, DepthTexture depthAttach) {
        this(width, height, cameraPercentage, colorAttachments, null, true);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, DepthTexture depthAttach, boolean createDepth) {
        this(width, height, cameraPercentage, colorAttachments, depthAttach, createDepth, true);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, DepthTexture depthAttach, boolean createDepth, boolean useLinearDepth) {
        this(width, height, cameraPercentage, colorAttachments, depthAttach, createDepth, useLinearDepth, TextureSampler.f.CLAMP_TO_EDGE);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, DepthTexture depthAttach, boolean createDepth, boolean useLinearDepth, TextureSampler.f colorClampMode) {
        this(width, height, cameraPercentage, colorAttachments, depthAttach, createDepth, useLinearDepth, colorClampMode, true);
    }

    public a(int width, int height, int cameraPercentage, int colorAttachments, DepthTexture depthAttach, boolean createDepth, boolean useLinearDepth, TextureSampler.f colorClampMode, boolean autoClampResolution) {
        this.f24198i = 100;
        this.f24199j = 1;
        this.f24204o = false;
        Qb.a.d();
        if (colorAttachments < 0) {
            throw new IllegalArgumentException("Framebuffer can't have more less than 0 color attachments");
        }
        if (colorAttachments != 1 && W7.b.f27306f.f2459b.a() < 3.0f) {
            throw new UnsupportedOperationException("Multi target render frame buffer on requires OpenGL 3 or upper.");
        }
        this.f24202m = colorClampMode;
        this.f24199j = colorAttachments;
        this.f24200k = createDepth;
        float f10 = cameraPercentage * 0.01f;
        int i10 = (int) (width * f10);
        int i11 = (int) (height * f10);
        i10 = Nc.b.J0(i10) ? i10 : i10 + 1;
        i11 = Nc.b.J0(i11) ? i11 : i11 + 1;
        if (i10 > 0 && i11 > 0) {
            if (autoClampResolution) {
                i10 = Nc.b.K(i10, 4096);
                i11 = Nc.b.K(i11, 4096);
            } else if (i10 > 4096 || i11 > 4096) {
                throw new InvalidTextureSizeException("Resultant width and height from the width*resolution and height*resolution can't be > 4096");
            }
            this.f24203n = autoClampResolution;
            this.f24194e = i10;
            this.f24195f = i11;
            this.f24196g = width;
            this.f24197h = height;
            this.f24198i = cameraPercentage;
            if (colorAttachments > 0) {
                this.f24191b = new ColorTexture[colorAttachments];
                for (int i12 = 0; i12 < colorAttachments; i12++) {
                    this.f24191b[i12] = new ColorTexture(this.f24194e, this.f24195f, colorClampMode);
                }
            } else {
                this.f24191b = null;
            }
            if (!createDepth) {
                this.f24192c = null;
            } else if (depthAttach == null) {
                this.f24192c = new DepthTexture(this.f24194e, this.f24195f, colorClampMode);
            } else {
                this.f24192c = depthAttach;
            }
            this.f24190a = new FBO(this.f24194e, this.f24195f, this.f24191b, this.f24192c);
            return;
        }
        throw new InvalidTextureSizeException("Resultant width and height from the width*resolution and height*resolution can't be <= 0");
    }

    public a(ColorTexture colorAttachment, DepthTexture depthAttach) {
        this.f24198i = 100;
        this.f24199j = 1;
        this.f24204o = false;
        Qb.a.d();
        if (colorAttachment != null) {
            this.f24199j = 1;
            this.f24205p = true;
            int width = colorAttachment.getWidth();
            int height = colorAttachment.getHeight();
            this.f24203n = false;
            this.f24194e = width;
            this.f24195f = height;
            this.f24196g = colorAttachment.getWidth();
            this.f24197h = colorAttachment.getHeight();
            this.f24198i = 100;
            ColorTexture[] colorTextureArr = {colorAttachment};
            this.f24191b = colorTextureArr;
            this.f24192c = depthAttach;
            this.f24190a = new FBO(this.f24194e, this.f24195f, colorTextureArr, depthAttach);
            return;
        }
        throw new IllegalArgumentException("Framebuffer needs colorAttachment");
    }
}
