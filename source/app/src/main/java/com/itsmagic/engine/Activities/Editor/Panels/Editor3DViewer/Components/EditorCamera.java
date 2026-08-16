package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import f5.C13189d;
import o5.C14484b;

public class EditorCamera extends Camera {

    public static final ColorINT f71525Y8 = new ColorINT();

    public static final ColorINT f71526Z8 = new ColorINT(20, 20, 20);

    public C13189d f71527R8;

    public boolean f71528S8;

    public boolean f71529T8;

    public boolean f71530U8;

    public boolean f71531V8;

    public boolean f71532W8;

    public C14484b f71533X8;

    public EditorCamera() {
        this.f71528S8 = true;
        this.f71529T8 = false;
        this.f71530U8 = false;
        this.f71531V8 = false;
        this.f71532W8 = false;
        setSolidColor(new ColorINT(5, 5, 5));
    }

    @Override
    public boolean allowPostProcessing() {
        Boolean b10;
        C13189d c13189d = this.f71527R8;
        return (c13189d == null || (b10 = c13189d.b()) == null) ? !this.f71529T8 : b10.booleanValue();
    }

    @Override
    public void createGizmo() {
    }

    @Override
    public Camera.F getBackgroundType() {
        C13189d c13189d = this.f71527R8;
        if ((c13189d == null || c13189d.y() == null) && !this.f71529T8) {
            return super.getBackgroundType();
        }
        return Camera.F.SolidColor;
    }

    @Override
    public ColorINT getSolidColor() {
        ColorINT y10;
        C13189d c13189d = this.f71527R8;
        return (c13189d == null || (y10 = c13189d.y()) == null) ? this.f71529T8 ? f71526Z8 : super.getSolidColor() : y10;
    }

    @Override
    public void lowTaskUpdate(GameObject gameObject, boolean isEditor) {
        super.lowTaskUpdate(gameObject, isEditor);
        C14484b c14484b = this.f71533X8;
        if (c14484b != null) {
            c14484b.c();
        }
    }

    @Override
    public ColorINT overrideAmbientLight() {
        ColorINT w10;
        C13189d c13189d = this.f71527R8;
        return (c13189d == null || (w10 = c13189d.w()) == null) ? this.f71529T8 ? f71525Y8 : super.overrideAmbientLight() : w10;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        if (this.f71532W8) {
            if (this.f71533X8 == null) {
                this.f71533X8 = new C14484b(this);
            }
        } else if (this.f71533X8 != null) {
            this.f71533X8 = null;
            if (getImageBuffer() != null) {
                getImageBuffer().w(null);
            }
        }
        if (this.f71533X8 != null && getImageBuffer() != null) {
            this.f71533X8.j(getImageBuffer());
        }
        super.preUpdate(gameObject, isEditor);
    }

    @Override
    public boolean renderFog() {
        Boolean D10;
        C13189d c13189d = this.f71527R8;
        if (c13189d != null && (D10 = c13189d.D()) != null) {
            return D10.booleanValue();
        }
        if (this.f71530U8) {
            return false;
        }
        return super.renderFog();
    }

    @Override
    public boolean renderGizmos() {
        return true;
    }

    public EditorCamera(float renderDistance, float fov, float minimalDistance, boolean showGizmo, int layer) {
        super(renderDistance, fov, minimalDistance, showGizmo, layer);
        this.f71528S8 = true;
        this.f71529T8 = false;
        this.f71530U8 = false;
        this.f71531V8 = false;
        this.f71532W8 = false;
        setSolidColor(new ColorINT(5, 5, 5));
    }
}
