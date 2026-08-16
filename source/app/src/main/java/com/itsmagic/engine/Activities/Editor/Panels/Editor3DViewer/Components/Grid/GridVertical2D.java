package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class GridVertical2D extends Component {

    public static final String f71547L = "AxisCube";

    public static final float f71548M = 100.0f;

    public final Camera f71549E;

    public final Panel3DView f71550F;

    public final Material f71551G;

    public final ModelRenderer f71552H;

    public float f71553I;

    public float f71554J;

    public Vector2 f71555K;

    public GridVertical2D(Camera camera, Panel3DView editor3DViewer, Material material, float scale, float clamp, ModelRenderer modelRenderer) {
        super("AxisCube");
        this.f71549E = camera;
        this.f71550F = editor3DViewer;
        this.f71551G = material;
        this.f71553I = scale;
        this.f71554J = clamp;
        this.f71552H = modelRenderer;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        try {
            Vector2 x10 = this.f71551G.x("GridOptions");
            this.f71555K = x10;
            x10.f79838x = this.f71553I * (this.f71549E.getOrtho_diameter() / 2.0f);
            this.f71555K.f79839y = -this.f71554J;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f79250n.transform.t3(this.f71549E.f79250n.transform.w0());
        this.f79250n.transform.u3(this.f71549E.f79250n.transform.x0());
        this.f79250n.transform.setScale(this.f71549E.getOrtho_diameter() * this.f71549E.getImageRatio() * 2.0f);
    }
}
