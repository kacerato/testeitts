package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class GridVertical2DFixedScaleAndPosition extends Component {

    public static final String f71556M = "AxisCube";

    public static final float f71557N = 100.0f;

    public final Camera f71558E;

    public final Panel3DView f71559F;

    public final Material f71560G;

    public final ModelRenderer f71561H;

    public float f71562I;

    public float f71563J;

    public float f71564K;

    public Vector2 f71565L;

    public GridVertical2DFixedScaleAndPosition(Camera camera, Panel3DView editor3DViewer, Material material, float gridScale, float clamp, float objectSize, ModelRenderer modelRenderer) {
        super("AxisCube");
        this.f71558E = camera;
        this.f71559F = editor3DViewer;
        this.f71560G = material;
        this.f71562I = gridScale;
        this.f71563J = clamp;
        this.f71564K = objectSize;
        this.f71561H = modelRenderer;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        try {
            Vector2 x10 = this.f71560G.x("GridOptions");
            this.f71565L = x10;
            if (x10 != null) {
                x10.f79838x = this.f71562I;
                x10.f79839y = -this.f71563J;
            } else {
                System.out.println(GridVertical2DFixedScaleAndPosition.class.getSimpleName() + " missing \"GridOptions\" entry at material");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f79250n.transform.setScale(this.f71564K);
    }
}
