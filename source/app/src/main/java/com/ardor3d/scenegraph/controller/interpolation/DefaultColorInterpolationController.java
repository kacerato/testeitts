package com.ardor3d.scenegraph.controller.interpolation;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.scenegraph.Mesh;

public class DefaultColorInterpolationController extends InterpolationController<ReadOnlyColorRGBA, Mesh> {
    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 1;

    @Override
    public void interpolate(ReadOnlyColorRGBA readOnlyColorRGBA, ReadOnlyColorRGBA readOnlyColorRGBA2, double d10, Mesh mesh) {
        ColorRGBA colorRGBA = ColorRGBA.fetchTempInstance().set(mesh.getDefaultColor());
        colorRGBA.lerpLocal(readOnlyColorRGBA, readOnlyColorRGBA2, (float) d10);
        mesh.setDefaultColor(colorRGBA);
        ColorRGBA.releaseTempInstance(colorRGBA);
    }
}
