package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class GridHorizontal extends Component {

    public static final String f71534K = "AxisCube";

    public static final float f71535L = 100.0f;

    public final Camera f71536E;

    public final Panel3DView f71537F;

    public final ModelRenderer f71538G;

    public final Vector3 f71539H;

    public Vector2 f71540I;

    public final ColorINT f71541J;

    public GridHorizontal(Camera camera, Panel3DView editor3DViewer, ModelRenderer modelRenderer) {
        super("AxisCube");
        this.f71539H = new Vector3();
        this.f71541J = new ColorINT(150, 150, 150, 150);
        this.f71536E = camera;
        this.f71537F = editor3DViewer;
        this.f71538G = modelRenderer;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        try {
            gameObject.transform.u3(0.0f);
            gameObject.transform.setScale(200.0f);
            this.f71536E.f79250n.transform.u0(this.f71539H);
            gameObject.transform.t3(this.f71539H.getX());
            gameObject.transform.w3(this.f71539H.getZ());
            this.f71538G.f73747F.b0("diffuse", this.f71541J);
            Vector2 vector2 = this.f71540I;
            if (vector2 == null) {
                try {
                    this.f71540I = this.f71538G.f73747F.x("options");
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            float f10 = this.f71537F.cameraZoom;
            if (f10 > 0.0f) {
                float f11 = f10 / 5.0f;
                int i10 = (int) (1.0f + f11);
                float f12 = (f11 * 100.0f) + 100.0f;
                vector2.B0(i10);
                this.f71540I.C0(f12);
                gameObject.transform.setScale(f12 * 2.0f);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
