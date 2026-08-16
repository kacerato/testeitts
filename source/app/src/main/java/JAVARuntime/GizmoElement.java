package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoElement.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoElement.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public class GizmoElement {
    private boolean drawInFront;
    private boolean additiveMode;
    private float visibleDistance = -1.0f;
    private float fadeOutRange = -1.0f;
    private float maxScaleBasedCameraSize = -1.0f;
    private boolean enableLight = false;
    private float lightIntensity = 1.0f;
    private boolean billboard = false;
    private boolean pooling = false;
    private transient Object userPointer = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoElement$RenderMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoElement$RenderMode.class
  classes.dex
 */
    public enum RenderMode {
        Triangles,
        WireFrame,
        Outline;

        public static RenderMode[] valuesCustom() {
            RenderMode[] valuesCustom = values();
            int length = valuesCustom.length;
            RenderMode[] renderModeArr = new RenderMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, renderModeArr, 0, length);
            return renderModeArr;
        }
    }

    public Object getUserPointer() {
        return this.userPointer;
    }

    public void setUserPointer(Object obj) {
        this.userPointer = obj;
    }

    public Vertex getVertex() {
        return null;
    }

    public Color getColor() {
        return null;
    }

    public Texture getTexture() {
        return null;
    }

    public RenderMode getRenderMode() {
        return RenderMode.Triangles;
    }

    public float[] getMatrix() {
        return null;
    }

    public int getWireFrameWidth() {
        return 0;
    }

    public float getOutlineScale() {
        return 0.1f;
    }

    public boolean isDualFaceRender() {
        return false;
    }

    public boolean isDeepDestroyVertexAfterCacheInvalidation() {
        return false;
    }

    public boolean isEnableTransparency() {
        return false;
    }

    public void setEnableTransparency(boolean z10) {
    }

    public boolean isBillboard() {
        return this.billboard;
    }

    public void setBillboard(boolean z10) {
        this.billboard = z10;
    }

    public boolean isDrawInFront() {
        return this.drawInFront;
    }

    public void setDrawInFront(boolean z10) {
        this.drawInFront = z10;
    }

    public boolean isAdditiveMode() {
        return this.additiveMode;
    }

    public void setAdditiveMode(boolean z10) {
        this.additiveMode = z10;
    }

    public boolean isEnableLight() {
        return this.enableLight;
    }

    public void setEnableLight(boolean z10) {
        this.enableLight = z10;
    }

    public float getMaxScaleBasedCameraSize() {
        return this.maxScaleBasedCameraSize;
    }

    public void setMaxScaleBasedCameraSize(float f10) {
        this.maxScaleBasedCameraSize = f10;
    }

    public float getLightIntensity() {
        return this.lightIntensity;
    }

    public void setLightIntensity(float f10) {
        this.lightIntensity = f10;
    }

    public float getVisibleDistance() {
        return this.visibleDistance;
    }

    public void setVisibleDistance(float f10) {
        this.visibleDistance = f10;
    }

    public float getFadeOutRange() {
        return this.fadeOutRange;
    }

    public void setFadeOutRange(float f10) {
        this.fadeOutRange = f10;
    }

    public boolean isPooling() {
        return this.pooling;
    }

    public void setPooling(boolean z10) {
        this.pooling = z10;
    }

    public boolean isScaleBasedCamera() {
        return false;
    }
}
