package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import androidx.annotation.Keep;
import com.google.android.filament.Engine;
import com.google.android.filament.View;
import com.google.android.filament.w;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Graphics.FrameBuffer.FBO;
import ge.X;

public class FilamentView extends SGCListenerObject {

    @Keep
    private FilamentCamera activeCamera;

    @Keep
    private FBO activeFBO;

    @Keep
    private FilamentRenderTarget activeRenderTarget;

    @Keep
    private FilamentScene activeScene;

    public boolean f80133b;

    public w f80134c = new w(0, 0, 0, 0);

    @Keep
    private Rb.a colorGrading;

    @Keep
    private final View view;

    public static final M9.c f80132d = new a();

    @Keep
    private static final X<FBO> concreteFBOReferences = new X<>(100);

    @Keep
    private static final X<FilamentRenderTarget> concreteRenderTargetReferences = new X<>(100);

    @Keep
    private static final X<FilamentCamera> concreteCameraReferences = new X<>(100);

    @Keep
    private static final X<FilamentScene> concreteSceneReferences = new X<>(100);

    @Keep
    private static final X<Rb.a> concreteColorGradingReferences = new X<>(100);

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            Qb.c.q(pointer);
            FilamentView.concreteFBOReferences.e(pointer);
            FilamentView.concreteRenderTargetReferences.e(pointer);
            FilamentView.concreteCameraReferences.e(pointer);
            FilamentView.concreteSceneReferences.e(pointer);
            FilamentView.concreteColorGradingReferences.e(pointer);
        }
    }

    public class b extends M9.b {
        public b(Class cls) {
            super(cls);
        }

        @Override
        public void b(long pointer) {
            if (FilamentView.this.f80133b || FilamentView.this.activeRenderTarget == null || FilamentView.this.activeRenderTarget.f().m() != pointer) {
                return;
            }
            FilamentView.this.view.r0(null);
            FilamentView.this.activeRenderTarget = null;
            FilamentView.this.activeFBO = null;
            FilamentView.concreteFBOReferences.td(FilamentView.this.view.v(), null);
            FilamentView.concreteRenderTargetReferences.td(FilamentView.this.view.v(), null);
        }
    }

    public class c extends M9.b {
        public c(Class cls) {
            super(cls);
        }

        @Override
        public void b(long pointer) {
            if (FilamentView.this.f80133b || FilamentView.this.activeRenderTarget == null || FilamentView.this.activeRenderTarget.f().m() != pointer) {
                return;
            }
            FilamentView.this.view.r0(null);
            FilamentView.this.activeRenderTarget = null;
            FilamentView.this.activeFBO = null;
            FilamentView.concreteFBOReferences.td(FilamentView.this.view.v(), null);
            FilamentView.concreteRenderTargetReferences.td(FilamentView.this.view.v(), null);
        }
    }

    public FilamentView() {
        K8.a.G();
        Qb.a.d();
        View y10 = Qb.a.f().y();
        this.view = y10;
        y10.p0(false);
        super.setDestroyListeners(new M9.b[]{new b(FilamentRenderTarget.class)});
        SGC.put(this, y10.v(), f80132d, false);
    }

    public static boolean q(Rb.a colorGrading) {
        return concreteColorGradingReferences.containsValue(colorGrading);
    }

    public static boolean r(FilamentCamera camera) {
        return concreteCameraReferences.containsValue(camera);
    }

    public static boolean s(FilamentRenderTarget renderTarget) {
        return concreteRenderTargetReferences.containsValue(renderTarget);
    }

    public static boolean u(FilamentScene scene) {
        return concreteSceneReferences.containsValue(scene);
    }

    public static boolean v(FBO fbo) {
        return concreteFBOReferences.containsValue(fbo);
    }

    public void A(FilamentRenderTarget renderTarget) {
        K8.a.G();
        if (this.activeRenderTarget != null) {
            throw new FilamentContractViolationError("View already binded to another FBO");
        }
        if (renderTarget != null) {
            this.view.r0(renderTarget.f());
        } else {
            this.view.r0(null);
        }
        this.activeFBO = null;
        this.activeRenderTarget = renderTarget;
        concreteFBOReferences.td(this.view.v(), null);
        concreteRenderTargetReferences.td(this.view.v(), this.activeRenderTarget);
    }

    public void B(FBO fbo) {
        K8.a.G();
        if (this.activeRenderTarget != null) {
            throw new FilamentContractViolationError("View already binded to another FBO");
        }
        if (fbo != null) {
            this.view.r0(fbo.d().f());
            this.activeRenderTarget = fbo.d();
        } else {
            this.view.r0(null);
            this.activeRenderTarget = null;
        }
        this.activeFBO = fbo;
        concreteFBOReferences.td(this.view.v(), this.activeFBO);
        concreteRenderTargetReferences.td(this.view.v(), this.activeRenderTarget);
    }

    public void C(FilamentScene scene) {
        K8.a.G();
        if (scene != null) {
            this.view.t0(scene.o());
        } else {
            this.view.t0(null);
        }
        this.activeScene = scene;
        concreteSceneReferences.td(this.view.v(), scene);
    }

    public void D(int left, int bottom, int width, int height) {
        K8.a.G();
        w wVar = this.f80134c;
        wVar.f60456a = left;
        wVar.f60457b = bottom;
        wVar.f60458c = width;
        wVar.f60459d = height;
        this.view.E0(wVar);
    }

    public void E(w viewPort) {
        D(viewPort.f60456a, viewPort.f60457b, viewPort.f60458c, viewPort.f60459d);
    }

    public void F() {
        K8.a.G();
        this.view.r0(null);
        this.activeFBO = null;
        this.activeRenderTarget = null;
        concreteFBOReferences.td(this.view.v(), null);
        concreteRenderTargetReferences.td(this.view.v(), null);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        K8.a.G();
        Qb.a.d();
        if (this.f80133b) {
            throw new RuntimeException();
        }
        if (this.activeRenderTarget != null) {
            throw new FilamentContractViolationError("View still bound to a render target");
        }
        if (this.activeCamera != null) {
            throw new FilamentContractViolationError("View still bound to a camera");
        }
        if (this.activeScene != null) {
            throw new FilamentContractViolationError("View still bound to a scene");
        }
        if (this.colorGrading != null) {
            throw new FilamentContractViolationError("View still bound to a color grading");
        }
        this.f80133b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 0;
    }

    public View p() {
        return this.view;
    }

    public void w(View.d blendMode) {
        K8.a.G();
        this.view.X(blendMode);
    }

    public void x(FilamentCamera cam) {
        K8.a.G();
        if (cam != null) {
            this.view.Z(cam.e());
        } else {
            this.view.Z(null);
        }
        this.activeCamera = cam;
        concreteCameraReferences.td(this.view.v(), cam);
    }

    public void y(Rb.a colorGrading) {
        K8.a.G();
        if (colorGrading != null) {
            this.view.b0(colorGrading.e());
        } else {
            this.view.b0(null);
        }
        this.colorGrading = colorGrading;
        concreteColorGradingReferences.td(this.view.v(), colorGrading);
    }

    public void z(boolean b10) {
        K8.a.G();
        this.view.p0(b10);
    }

    public FilamentView(Engine engine) {
        K8.a.G();
        Qb.a.d();
        View y10 = engine.y();
        this.view = y10;
        y10.p0(false);
        super.setDestroyListeners(new M9.b[]{new c(FilamentRenderTarget.class)});
        SGC.put(this, y10.v(), f80132d, false);
    }
}
