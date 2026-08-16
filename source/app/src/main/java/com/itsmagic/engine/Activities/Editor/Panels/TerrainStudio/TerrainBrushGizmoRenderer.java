package com.itsmagic.engine.Activities.Editor.Panels.TerrainStudio;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Pro.TerrainFalloffCurve;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.io.Serializable;

/**
 * 3D Brush Gizmo Renderer.
 * Projects circular ring gizmos, inner radius, outer falloff indicator,
 * and normal direction ray directly onto the terrain surface in the 3D Viewport.
 */
public class TerrainBrushGizmoRenderer implements Serializable {

    private boolean visible = true;
    private final Vector3 centerPos = new Vector3();
    private final Vector3 normal = new Vector3(0, 1, 0);
    private float radius = 25.0f;
    private float innerRadius = 5.0f;
    private ColorINT ringColor = new ColorINT(0, 200, 255, 220); // Cyan glow
    private ColorINT innerColor = new ColorINT(255, 200, 0, 180); // Gold center

    public TerrainBrushGizmoRenderer() {
    }

    public void updateGizmo(float x, float y, float z, float nx, float ny, float nz, float radius, TerrainFalloffCurve curve) {
        this.centerPos.set(x, y, z);
        this.normal.set(nx, ny, nz);
        this.radius = radius;
        if (curve != null) {
            this.innerRadius = radius * 0.3f;
        }
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public boolean isVisible() {
        return visible;
    }

    public Vector3 getCenterPos() {
        return centerPos;
    }

    public Vector3 getNormal() {
        return normal;
    }

    public float getRadius() {
        return radius;
    }

    public float getInnerRadius() {
        return innerRadius;
    }

    public ColorINT getRingColor() {
        return ringColor;
    }

    public void setRingColor(ColorINT ringColor) {
        this.ringColor = ringColor;
    }
}
