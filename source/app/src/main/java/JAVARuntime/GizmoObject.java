package JAVARuntime;

import JAVARuntime.GizmoElement;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoObject.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoObject.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public class GizmoObject extends GizmoTransform {
    private transient Vertex vertex;
    private transient Color color;
    private transient Texture texture;
    private transient boolean dualFaceRender;
    private transient GizmoElement.RenderMode renderMode;
    private transient boolean enableTransparency;
    private transient boolean scaleBasedCamera;
    private int wireFrameWidth;

    public GizmoObject() {
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
    }

    public GizmoObject(Vertex vertex) {
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
    }

    public GizmoObject(Vertex vertex, Vector3 vector3) {
        super(vector3);
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
    }

    public GizmoObject(Vertex vertex, Vector3 vector3, Quaternion quaternion) {
        super(vector3, quaternion);
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
    }

    public GizmoObject(Vertex vertex, Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
        super(vector3, quaternion, vector32);
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
    }

    @Deprecated
    public GizmoObject(Vertex vertex, Vector3 vector3, Quaternion quaternion, Vector3 vector32, boolean z10) {
        super(vector3, quaternion, vector32);
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
        if (z10) {
            this.renderMode = GizmoElement.RenderMode.WireFrame;
        }
    }

    @Deprecated
    public GizmoObject(Vertex vertex, Vector3 vector3, Quaternion quaternion, Vector3 vector32, boolean z10, Color color, Texture texture) {
        super(vector3, quaternion, vector32);
        this.color = new Color();
        this.dualFaceRender = false;
        this.renderMode = GizmoElement.RenderMode.Triangles;
        this.enableTransparency = false;
        this.wireFrameWidth = 0;
        setVertex(vertex);
        this.color = color;
        this.texture = texture;
        if (z10) {
            this.renderMode = GizmoElement.RenderMode.WireFrame;
        }
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
    @HideGetSet
    public boolean isEnableTransparency() {
        return this.enableTransparency;
    }

    @Override
    @HideGetSet
    public void setEnableTransparency(boolean z10) {
        this.enableTransparency = z10;
    }

    @Override
    @HideGetSet
    public boolean isScaleBasedCamera() {
        return this.scaleBasedCamera;
    }

    @HideGetSet
    public void setScaleBasedCamera(boolean z10) {
        this.scaleBasedCamera = z10;
    }

    public void randomizeColor() {
        this.color = new Color(Random.range(0.0f, 1.0f), Random.range(0.0f, 1.0f), Random.range(0.0f, 1.0f));
    }
}
