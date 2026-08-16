package JAVARuntime;

import JAVARuntime.GizmoElement;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoObjectMatrix.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoObjectMatrix.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public final class GizmoObjectMatrix extends GizmoMatrix {
    private transient Vertex vertex;
    private transient Texture texture;
    private transient Color color = new Color();
    private transient boolean dualFaceRender = false;
    private transient GizmoElement.RenderMode renderMode = GizmoElement.RenderMode.Triangles;
    private transient Object userPointer = null;
    private transient boolean enableTransparency = false;
    private transient float outlineScale = 0.1f;
    private int wireFrameWidth = 0;

    public GizmoObjectMatrix() {
    }

    public GizmoObjectMatrix(Vertex vertex) {
        setVertex(vertex);
    }

    @Override
    @HideGetSet
    public Vertex getVertex() {
        return this.vertex;
    }

    @HideGetSet
    public void setVertex(Vertex vertex) {
    }

    @Override
    @HideGetSet
    public int getWireFrameWidth() {
        return this.wireFrameWidth;
    }

    @HideGetSet
    public void setWireFrameWidth(int i10) {
        this.wireFrameWidth = i10;
    }

    @Override
    @HideGetSet
    public float getOutlineScale() {
        return this.outlineScale;
    }

    @HideGetSet
    public void setOutlineScale(float f10) {
        this.outlineScale = f10;
    }

    @HideGetSet
    @Deprecated
    public boolean isWireFrame() {
        return this.renderMode == GizmoElement.RenderMode.WireFrame;
    }

    @HideGetSet
    @Deprecated
    public void setWireFrame(boolean z10) {
        if (z10) {
            this.renderMode = GizmoElement.RenderMode.WireFrame;
        } else {
            this.renderMode = GizmoElement.RenderMode.Triangles;
        }
    }

    @Override
    @HideGetSet
    public Color getColor() {
        return this.color;
    }

    @HideGetSet
    public void setColor(Color color) {
        this.color = color;
    }

    @Override
    @HideGetSet
    public Texture getTexture() {
        return this.texture;
    }

    @HideGetSet
    public void setTexture(Texture texture) {
        this.texture = texture;
    }

    @Override
    @HideGetSet
    public boolean isDualFaceRender() {
        return this.dualFaceRender;
    }

    @HideGetSet
    public void setDualFaceRender(boolean z10) {
        this.dualFaceRender = z10;
    }

    @Override
    @HideGetSet
    public GizmoElement.RenderMode getRenderMode() {
        return this.renderMode;
    }

    @HideGetSet
    public void setRenderMode(GizmoElement.RenderMode renderMode) {
        this.renderMode = renderMode;
    }

    @Override
    public Object getUserPointer() {
        return this.userPointer;
    }

    @Override
    public void setUserPointer(Object obj) {
        this.userPointer = obj;
    }
}
