package hc;

import K8.c;
import Ob.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Manager.RenderEffectArea;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.jme3.math.Vector4f;
import gb.C13317e;
import java.util.List;
import p6.d;
import p6.g;

public abstract class AbstractC13441a {

    public static int f90483d;

    public static int f90484e;

    public static final double[] f90480a = {0.0d, 0.0d, 0.0d, 0.0d};

    public static final Vector4f f90481b = new Vector4f();

    public static final f f90482c = new f();

    public static final float[] f90485f = new float[16];

    public static List<Component> f90486g = null;

    public static List<Component> f90487h = null;

    public static void a() {
    }

    public static void b(Camera camera) {
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c != null && camera != null && camera.f73132Z && C13317e.J(camera.f79250n)) {
            g L12 = d.E1() ? d.L1("Camera (" + camera.f79250n.getName() + ")") : null;
            camera.getImageWidth();
            camera.getImageHeight();
            camera.determineImageResolutionPercentage();
            float[] viewMatrix = camera.getViewMatrix();
            camera.getInverseViewMatrix();
            camera.getFrustumMatrix();
            camera.getInverseFrustumMatrix();
            camera.getRenderCameraPosition();
            f90482c.x0(viewMatrix);
            FilamentCamera filamentCamera = camera.getFilamentCamera();
            Tb.a imageBuffer = camera.getImageBuffer();
            if (imageBuffer != null) {
                FilamentView view = camera.getView();
                if (view != null) {
                    camera.resetPostProcessingeBeforeRender();
                    g L13 = d.E1() ? d.L1("PP - before render") : null;
                    for (int i10 = 0; i10 < f90487h.size(); i10++) {
                        try {
                            RenderEffectArea renderEffectArea = (RenderEffectArea) f90487h.get(i10);
                            if (renderEffectArea.isHierarchyActive() && renderEffectArea.isAttached(camera)) {
                                renderEffectArea.beforeRender(camera);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                    for (int i11 = 0; i11 < camera.f79250n.N(); i11++) {
                        Component L10 = camera.f79250n.L(i11);
                        if ((L10 instanceof BasePostProcessing) && L10.isHierarchyActive()) {
                            BasePostProcessing basePostProcessing = (BasePostProcessing) L10;
                            basePostProcessing.preRender();
                            basePostProcessing.applyBeforeRender(camera, filamentCamera, view, imageBuffer);
                        }
                    }
                    d.J1(L13);
                    imageBuffer.a(view);
                    g L14 = d.E1() ? d.L1("Objects rendering") : null;
                    Qb.a.b(true, true);
                    Qb.a.o(view);
                    d.J1(L14);
                    imageBuffer.z();
                    g L15 = d.E1() ? d.L1("PP - after render") : null;
                    for (int i12 = 0; i12 < f90487h.size(); i12++) {
                        try {
                            RenderEffectArea renderEffectArea2 = (RenderEffectArea) f90487h.get(i12);
                            if (renderEffectArea2.isHierarchyActive() && renderEffectArea2.isAttached(camera)) {
                                renderEffectArea2.afterRender(camera);
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    for (int i13 = 0; i13 < camera.f79250n.N(); i13++) {
                        Component L11 = camera.f79250n.L(i13);
                        if ((L11 instanceof BasePostProcessing) && L11.isHierarchyActive()) {
                            ((BasePostProcessing) L11).applyAfterRender(camera, filamentCamera, view, imageBuffer, camera.getCacheBuffer());
                        }
                    }
                    d.J1(L15);
                }
                a.C0471a.a(imageBuffer);
            }
            d.J1(L12);
        }
    }

    public static void c(World inputWorld) {
        f90487h = R8.f.h(RenderEffectArea.class);
        f90486g = R8.f.h(Camera.class);
        f90483d = c.b();
        f90484e = c.a();
        g L12 = d.E1() ? d.L1("PP - pre render") : null;
        for (int i10 = 0; i10 < f90487h.size(); i10++) {
            try {
                RenderEffectArea renderEffectArea = (RenderEffectArea) f90487h.get(i10);
                if (renderEffectArea.isHierarchyActive()) {
                    renderEffectArea.preRender();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        d.J1(L12);
        g L13 = d.E1() ? d.L1("Cameras loop") : null;
        for (int i11 = 0; i11 < f90486g.size(); i11++) {
            Camera camera = (Camera) f90486g.get(i11);
            if (camera.isHierarchyActive()) {
                b(camera);
            }
        }
        d.J1(L13);
        f90487h = null;
        f90486g = null;
        a.C0471a.c();
    }
}
