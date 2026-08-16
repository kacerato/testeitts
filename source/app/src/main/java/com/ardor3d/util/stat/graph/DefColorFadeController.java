package com.ardor3d.util.stat.graph;

import com.ardor3d.math.ColorRGBA;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.scenegraph.controller.SpatialController;
import com.ardor3d.scenegraph.hint.CullHint;

public class DefColorFadeController implements SpatialController<Spatial> {
    private static final long serialVersionUID = 1;
    private final boolean _dir;
    private final double _rate;
    private Mesh _target;
    private final float _targetAlpha;

    public DefColorFadeController(Mesh mesh, float f10, double d10) {
        this._target = mesh;
        this._targetAlpha = f10;
        boolean z10 = mesh.getDefaultColor().getAlpha() > f10;
        this._dir = z10;
        if ((z10 && d10 > 0.0d) || (!z10 && d10 < 0.0d)) {
            d10 *= -1.0d;
        }
        this._rate = d10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(double d10, Spatial spatial) {
        if (this._target == null) {
            return;
        }
        ColorRGBA colorRGBA = ColorRGBA.fetchTempInstance().set(this._target.getDefaultColor());
        float alpha = (float) (colorRGBA.getAlpha() + (this._rate * d10));
        boolean z10 = this._dir;
        if (z10) {
            float f10 = this._targetAlpha;
            if (alpha <= f10) {
                alpha = f10;
                if (alpha == 0.0f) {
                    this._target.getSceneHints().setCullHint(CullHint.Inherit);
                } else {
                    this._target.getSceneHints().setCullHint(CullHint.Always);
                }
                colorRGBA.setAlpha(alpha);
                this._target.setDefaultColor(colorRGBA);
                ColorRGBA.releaseTempInstance(colorRGBA);
                if (alpha != this._targetAlpha) {
                    this._target.removeController(this);
                    this._target = null;
                    return;
                }
                return;
            }
        }
        if (!z10) {
            float f11 = this._targetAlpha;
            if (alpha >= f11) {
                alpha = f11;
            }
        }
        if (alpha == 0.0f) {
        }
        colorRGBA.setAlpha(alpha);
        this._target.setDefaultColor(colorRGBA);
        ColorRGBA.releaseTempInstance(colorRGBA);
        if (alpha != this._targetAlpha) {
        }
    }
}
