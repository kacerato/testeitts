package com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Manager;

import C5.b;
import JAVARuntime.Gizmo;
import Mc.i;
import R8.f;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Core.BasePostProcessing;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import gb.C13317e;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import p6.d;
import p6.g;

public class RenderEffectArea extends Component implements Serializable {

    public static final String f75893K = "RenderEffectArea";

    public static final Class f75894L = RenderEffectArea.class;

    public final i<Camera> f75895E;

    public final List<Camera> f75896F;

    public final Vector3 f75897G;

    public final Vector3 f75898H;

    public final ColorINT f75899I;

    public JAVARuntime.Component f75900J;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return RenderEffectArea.f75894L;
        }

        @Override
        public String c() {
            return RenderEffectArea.f75893K;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.RENDER);
        }

        @Override
        public String f() {
            return Lang.l(Lang.T.IGNORE_SAVE);
        }
    }

    static {
        C13201a.b(new a());
    }

    public RenderEffectArea() {
        super(f75893K);
        this.f75895E = new i<>();
        this.f75896F = new SteppedArrayList();
        this.f75897G = new Vector3();
        this.f75898H = new Vector3();
        this.f75899I = new ColorINT(100, 156, 120, 255);
    }

    private void applyAfterRender(GameObject gameObject, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        if (gameObject == null) {
            return;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && L10.f79250n != null && (L10 instanceof BasePostProcessing)) {
                BasePostProcessing basePostProcessing = (BasePostProcessing) L10;
                g L12 = d.E1() ? d.L1("After render of PP [" + basePostProcessing.getTitle() + "]") : null;
                basePostProcessing.applyAfterRender(camera, filamentCamera, view, frameBuffer, cacheBuffer);
                d.J1(L12);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                applyAfterRender(C10, camera, filamentCamera, view, frameBuffer, cacheBuffer);
            }
        }
    }

    private void applyInBeforeRender(GameObject gameObject, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer) {
        if (gameObject == null) {
            return;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && L10.f79250n != null && (L10 instanceof BasePostProcessing)) {
                BasePostProcessing basePostProcessing = (BasePostProcessing) L10;
                g L12 = d.E1() ? d.L1("Before-Render of PP [" + basePostProcessing.getTitle() + "]") : null;
                basePostProcessing.applyBeforeRender(camera, filamentCamera, view, frameBuffer);
                d.J1(L12);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                applyInBeforeRender(C10, camera, filamentCamera, view, frameBuffer);
            }
        }
    }

    private void applyInPreRender(GameObject gameObject) {
        if (gameObject == null) {
            return;
        }
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && L10.f79250n != null && (L10 instanceof BasePostProcessing)) {
                g L12 = d.E1() ? d.L1(L10.getTitle() + " - pre render") : null;
                ((BasePostProcessing) L10).preRender();
                d.J1(L12);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                applyInPreRender(C10);
            }
        }
    }

    private void applyInPreUpdate(GameObject gameObject, Camera camera, FilamentCamera filamentCamera, FilamentView view, Tb.a frameBuffer, Tb.a cacheBuffer) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof BasePostProcessing) {
                BasePostProcessing basePostProcessing = (BasePostProcessing) L10;
                g L12 = d.E1() ? d.L1("Pre-Update of PP [" + basePostProcessing.getTitle() + "]") : null;
                if (L10.isEnabled()) {
                    basePostProcessing.applyInPreUpdate(camera, filamentCamera, view, frameBuffer, cacheBuffer);
                } else {
                    basePostProcessing.disableFor(camera, filamentCamera, view);
                }
                d.J1(L12);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                applyInPreUpdate(C10, camera, filamentCamera, view, frameBuffer, cacheBuffer);
            }
        }
    }

    private void disableFor(GameObject gameObject, Camera camera, FilamentCamera filamentCamera, FilamentView view) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof BasePostProcessing) {
                BasePostProcessing basePostProcessing = (BasePostProcessing) L10;
                g L12 = d.E1() ? d.L1("Disable of PP [" + basePostProcessing.getTitle() + "]") : null;
                basePostProcessing.disableFor(camera, filamentCamera, view);
                d.J1(L12);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                disableFor(C10, camera, filamentCamera, view);
            }
        }
    }

    private boolean isInside(Camera camera) {
        float x10 = this.f75897G.getX();
        float y10 = this.f75897G.getY();
        float z10 = this.f75897G.getZ();
        float x11 = this.f75898H.getX() * 0.5f;
        float y11 = this.f75898H.getY() * 0.5f;
        float z11 = this.f75898H.getZ() * 0.5f;
        float f10 = x10 - x11;
        float f11 = x10 + x11;
        float f12 = y10 - y11;
        float f13 = y10 + y11;
        float f14 = z10 - z11;
        float f15 = z10 + z11;
        float w02 = camera.f79250n.transform.w0();
        float x02 = camera.f79250n.transform.x0();
        float y02 = camera.f79250n.transform.y0();
        return w02 >= f10 && w02 <= f11 && x02 >= f12 && x02 <= f13 && y02 >= f14 && y02 <= f15;
    }

    private void notifyActiveCamera(GameObject gameObject, Camera camera) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof BasePostProcessing) {
                ((BasePostProcessing) L10).notifyActiveCamera(camera);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                notifyActiveCamera(C10, camera);
            }
        }
    }

    private void notifyDeadCamera(GameObject gameObject, Camera camera) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 instanceof BasePostProcessing) {
                ((BasePostProcessing) L10).notifyDeadCamera(camera);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                notifyDeadCamera(C10, camera);
            }
        }
    }

    private void updateCameras() {
        FilamentCamera filamentCamera;
        try {
            List<Component> h10 = f.h(Camera.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                Camera camera = (Camera) h10.get(i10);
                if (!this.f75895E.contains(camera) && isInside(camera)) {
                    this.f75895E.add(camera);
                    notifyActiveCamera(this.f79250n, camera);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        for (int i11 = 0; i11 < this.f75895E.size(); i11++) {
            Camera camera2 = this.f75895E.get(i11);
            if (C13317e.G(camera2.f79250n) || !isInside(camera2)) {
                this.f75896F.add(camera2);
            }
        }
        if (this.f75896F.isEmpty()) {
            return;
        }
        for (int i12 = 0; i12 < this.f75896F.size(); i12++) {
            Camera camera3 = this.f75896F.get(i12);
            this.f75895E.remove(camera3);
            FilamentView view = camera3.getView();
            if (view != null && (filamentCamera = camera3.getFilamentCamera()) != null) {
                disableFor(this.f79250n, camera3, filamentCamera, view);
            }
            notifyDeadCamera(this.f79250n, camera3);
        }
        this.f75896F.clear();
    }

    public void afterRender(Camera camera) {
        FilamentCamera filamentCamera;
        Tb.a imageBuffer;
        FilamentView view = camera.getView();
        if (view == null || (filamentCamera = camera.getFilamentCamera()) == null || (imageBuffer = camera.getImageBuffer()) == null) {
            return;
        }
        applyAfterRender(this.f79250n, camera, filamentCamera, view, imageBuffer, camera.getCacheBuffer());
    }

    public void beforeRender(Camera camera) {
        FilamentCamera filamentCamera;
        Tb.a imageBuffer;
        FilamentView view = camera.getView();
        if (view == null || (filamentCamera = camera.getFilamentCamera()) == null || (imageBuffer = camera.getImageBuffer()) == null) {
            return;
        }
        applyInBeforeRender(this.f79250n, camera, filamentCamera, view, imageBuffer);
    }

    @Override
    public String getDisplayableTitle() {
        return f75893K;
    }

    @Override
    public int getIconResource() {
        return R.drawable.vulkan_icon;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public float getRenderBounding() {
        return 1.0f;
    }

    @Override
    public Vector3 getRenderCenter() {
        return new Vector3();
    }

    @Override
    public String getTitle() {
        return f75893K;
    }

    @Override
    public boolean hasRenderBounding() {
        return true;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    public boolean isAttached(Camera camera) {
        return this.f75895E.contains(camera);
    }

    public void preRender() {
        applyInPreRender(this.f79250n);
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        FilamentCamera filamentCamera;
        Tb.a imageBuffer;
        super.preUpdate(gameObject, isEditor);
        gameObject.transform.u0(this.f75897G);
        gameObject.transform.K0(this.f75898H);
        if (((Camera) gameObject.d0(Camera.class)) != null) {
            return;
        }
        updateCameras();
        for (int i10 = 0; i10 < this.f75895E.size(); i10++) {
            Camera camera = this.f75895E.get(i10);
            FilamentView view = camera.getView();
            if (view != null && (filamentCamera = camera.getFilamentCamera()) != null && (imageBuffer = camera.getImageBuffer()) != null) {
                applyInPreUpdate(gameObject, camera, filamentCamera, view, imageBuffer, camera.getCacheBuffer());
            }
        }
        Gizmo.drawTransparentCube(this.f75897G.toJAVARuntime(), this.f75898H.toJAVARuntime(), this.f75899I.e0());
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f75900J = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f75900J;
        if (component != null) {
            return component;
        }
        JAVARuntime.RenderEffectArea renderEffectArea = new JAVARuntime.RenderEffectArea(this);
        this.f75900J = renderEffectArea;
        return renderEffectArea;
    }

    @Override
    public Component mo1248clone() {
        return new RenderEffectArea();
    }
}
