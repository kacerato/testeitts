package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid;

import Ic.A;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;

public class GridVertical2DThermalFlow extends Component {

    public static final String f71566J = "GridVertical2DThermalFlow";

    public static final float f71567K = 100.0f;

    public final Camera f71568E;

    public final Panel3DView f71569F;

    public final Material f71570G;

    public final ModelRenderer f71571H;

    public Vector2 f71572I;

    public GridVertical2DThermalFlow(Camera camera, Panel3DView editor3DViewer, Material material, ModelRenderer modelRenderer) {
        super(f71566J);
        this.f71568E = camera;
        this.f71569F = editor3DViewer;
        this.f71570G = material;
        this.f71571H = modelRenderer;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f79250n.transform.t3(this.f71568E.f79250n.transform.w0());
        this.f79250n.transform.u3(this.f71568E.f79250n.transform.x0());
        this.f79250n.transform.setScale(A.b(this.f71568E.getOrtho_diameter() * this.f71568E.getImageRatio() * 2.0f));
    }
}
