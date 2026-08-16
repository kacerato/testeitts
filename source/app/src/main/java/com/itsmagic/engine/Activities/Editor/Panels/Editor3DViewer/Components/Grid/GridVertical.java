package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;

public class GridVertical extends Component {

    public static final String f71542H = "AxisCube";

    public static final float f71543I = 100.0f;

    public final Camera f71544E;

    public final Panel3DView f71545F;

    public final ModelRenderer f71546G;

    public GridVertical(Camera camera, Panel3DView editor3DViewer, ModelRenderer modelRenderer) {
        super("AxisCube");
        this.f71544E = camera;
        this.f71545F = editor3DViewer;
        this.f71546G = modelRenderer;
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        this.f79250n.transform.t3(this.f71544E.f79250n.transform.w0());
        this.f79250n.transform.u3(this.f71544E.f79250n.transform.x0());
        this.f79250n.transform.setScale(200.0f);
    }
}
