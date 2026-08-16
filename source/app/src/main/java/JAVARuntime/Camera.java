package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Camera.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Camera.class
  classes.dex
 */
@ClassCategory(cat = {"Rendering", "Components"})
public final class Camera extends Component {
    public static final int PROJECTION_3D = 0;
    public static final int PROJECTION_2D = 1;
    public static final int BACKGROUND_SKYBOX = 0;
    public static final int BACKGROUND_ALPHA = 1;
    private final InternalFiltering internalFiltering = new InternalFiltering();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Camera$ResolutionMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Camera$ResolutionMode.class
  classes.dex
 */
    public enum ResolutionMode {
        Percentage,
        FixedResolution,
        FreeAspectResolution;

        public static ResolutionMode[] valuesCustom() {
            ResolutionMode[] valuesCustom = values();
            int length = valuesCustom.length;
            ResolutionMode[] resolutionModeArr = new ResolutionMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, resolutionModeArr, 0, length);
            return resolutionModeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Camera$InternalFiltering.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Camera$InternalFiltering.class
  classes.dex
 */
    public class InternalFiltering {
        public InternalFiltering() {
        }

        public boolean renderPostProcessing() {
            return false;
        }

        public boolean renderFog() {
            return false;
        }

        public boolean renderGizmos() {
            return false;
        }

        public Color overrideAmbientLight() {
            return null;
        }
    }

    public InternalFiltering getInternalFiltering() {
        return this.internalFiltering;
    }

    @HideGetSet
    public float getRenderDistance() {
        return 0.0f;
    }

    @HideGetSet
    public void setRenderDistance(float f10) {
    }

    @HideGetSet
    public float getMinimalDistance() {
        return 0.0f;
    }

    @HideGetSet
    public void setMinimalDistance(float f10) {
    }

    @HideGetSet
    public float getFov() {
        return 0.0f;
    }

    @HideGetSet
    public void setFov(float f10) {
    }

    @HideGetSet
    public float getRenderPercentage() {
        return 0.0f;
    }

    @HideGetSet
    public void setRenderPercentage(float f10) {
    }

    @HideGetSet
    public int getLayer() {
        return 0;
    }

    @HideGetSet
    public void setLayer(int i10) {
    }

    @HideGetSet
    public float getOrthoDiameter() {
        return 0.0f;
    }

    @HideGetSet
    public void setOrthoDiameter(float f10) {
    }

    @HideGetSet
    public int getProjection() {
        return 0;
    }

    @HideGetSet
    public void setProjection(int i10) {
    }

    @HideGetSet
    public int getBackground() {
        return 0;
    }

    @HideGetSet
    public void setBackground(int i10) {
    }

    @HideGetSet
    public CameraObjectFilter getObjectFilter() {
        return null;
    }

    @HideGetSet
    public void setObjectFilter(CameraObjectFilter cameraObjectFilter) {
    }

    public Point2 worldToScreenCoordinates(Vector3 vector3) {
        return null;
    }

    public RayDirection screenPointRay(Touch touch) {
        return null;
    }

    public RayDirection screenPointRay(int i10, int i11) {
        return null;
    }

    public RayDirection screenPointRay(Point2 point2) {
        return null;
    }

    public RayDirection screenPointRay(float f10, float f11) {
        return null;
    }

    public RayDirection screenPointRay(Vector2 vector2) {
        return null;
    }

    public Vector3 screenPointNormal(int i10, int i11) {
        return null;
    }

    public Vector3 screenPointNormal(Point2 point2) {
        return null;
    }

    public Vector3 screenPointNormal(float f10, float f11) {
        return null;
    }

    public Vector3 screenPointNormal(Vector2 vector2) {
        return null;
    }

    public void takeScreenShot(String str, String str2) {
        takeScreenShot(str, str2, false);
    }

    public void takeScreenShot(String str, String str2, boolean z10) {
    }

    public void takeScreenShot(java.io.File file, String str) {
    }

    @UnimplementedDoc
    public boolean isVisible(ModelRenderer modelRenderer) {
        return false;
    }

    @UnimplementedDoc
    public boolean isVisible(Vertex vertex, SpatialObject spatialObject) {
        return false;
    }

    @UnimplementedDoc
    public boolean isVisible(Vertex vertex, Transform transform) {
        return false;
    }

    @UnimplementedDoc
    public boolean isVisible(Vertex vertex, float[] fArr) {
        return false;
    }

    @UnimplementedDoc
    public boolean isSphereVisible(Vector3 vector3, float f10) {
        return false;
    }

    @UnimplementedDoc
    public boolean isSphereVisible(float f10, float f11, float f12, float f13) {
        return false;
    }

    @UnimplementedDoc
    public boolean isSphereVisible(Transform transform, float f10) {
        return false;
    }

    @UnimplementedDoc
    public boolean isCubeVisible(Vector3 vector3, float f10) {
        return false;
    }

    @UnimplementedDoc
    public boolean isCubeVisible(float f10, float f11, float f12, float f13) {
        return false;
    }

    @UnimplementedDoc
    public boolean isPointVisible(SpatialObject spatialObject) {
        return false;
    }

    @UnimplementedDoc
    public boolean isPointVisible(Transform transform) {
        return false;
    }

    @UnimplementedDoc
    public boolean isPointVisible(Vector3 vector3) {
        return false;
    }

    @UnimplementedDoc
    public boolean isPointVisible(float f10, float f11, float f12) {
        return false;
    }

    public float[] getViewMatrix() {
        return null;
    }

    public float[] getProjectionMatrix() {
        return null;
    }

    public void recalculateMatrices() {
    }

    public int determineImageResolutionPercentage() {
        return 0;
    }

    @HideGetSet
    public int getFixedResolutionPixelsHeight() {
        return 0;
    }

    @HideGetSet
    public void setFixedResolutionPixelsHeight(int i10) {
    }

    @HideGetSet
    public int getFixedResolutionPixelsWidth() {
        return 0;
    }

    @HideGetSet
    public void setFixedResolutionPixelsWidth(int i10) {
    }

    @HideGetSet
    public int getFreeResolutionPixels() {
        return 0;
    }

    @HideGetSet
    public void setFreeResolutionPixels(int i10) {
    }

    @HideGetSet
    public float[] getFrustumMatrix() {
        return null;
    }

    @HideGetSet
    public float[] getHierarchyCameraMatrix() {
        return null;
    }

    @HideGetSet
    public int getImageHeight() {
        return 0;
    }

    @HideGetSet
    public float getImageRatio() {
        return 0.0f;
    }

    @HideGetSet
    public int getImageWidth() {
        return 0;
    }

    @HideGetSet
    public float[] getInverseFrustumMatrix() {
        return null;
    }

    @HideGetSet
    public float[] getInverseViewMatrix() {
        return null;
    }

    @HideGetSet
    public float getNearPlane() {
        return 0.0f;
    }

    @HideGetSet
    public float getFarPlane() {
        return 0.0f;
    }

    @HideGetSet
    public float getRectHeight() {
        return 0.0f;
    }

    @HideGetSet
    public float getScaledRectHeight() {
        return 0.0f;
    }

    @HideGetSet
    public void setRectHeight(float f10) {
    }

    @HideGetSet
    public float getRectPosX() {
        return 0.0f;
    }

    @HideGetSet
    public float getScaledRectPosX() {
        return 0.0f;
    }

    @HideGetSet
    public void setRectPosX(float f10) {
    }

    @HideGetSet
    public float getRectPosY() {
        return 0.0f;
    }

    @HideGetSet
    public float getScaledRectPosY() {
        return 0.0f;
    }

    @HideGetSet
    public void setRectPosY(float f10) {
    }

    @HideGetSet
    public float getRectWidth() {
        return 0.0f;
    }

    @HideGetSet
    public float getScaledRectWidth() {
        return 0.0f;
    }

    @HideGetSet
    public void setRectWidth(float f10) {
    }

    @HideGetSet
    public Vector3 getRenderCameraDirection() {
        return null;
    }

    @HideGetSet
    public Vector3 getRenderCameraPosition() {
        return null;
    }

    @HideGetSet
    public ResolutionMode getResolutionMode() {
        return null;
    }

    @HideGetSet
    public void setResolutionMode(ResolutionMode resolutionMode) {
    }

    @HideGetSet
    public FrameBuffer getFrameBuffer() {
        return null;
    }
}
