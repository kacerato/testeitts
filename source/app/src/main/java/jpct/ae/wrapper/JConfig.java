package jpct.ae.wrapper;

import anywheresoftware.b4a.AbsObjectWrapper;
import anywheresoftware.b4a.BA;
import com.threed.jpct.Config;

@BA.ShortName("JpctConfig")
public class JConfig extends AbsObjectWrapper<Config> {
    public static int aaMode() {
        return Config.aaMode;
    }

    public static boolean aggressiveStripping() {
        return Config.aggressiveStripping;
    }

    public static boolean autoMaintainAspectRatio() {
        return Config.autoMaintainAspectRatio;
    }

    public static boolean cacheCompressedTextures() {
        return Config.cacheCompressedTextures;
    }

    public static float collideEdgeMul() {
        return Config.collideEdgeMul;
    }

    public static float collideEllipsoidThreshold() {
        return Config.collideEllipsoidThreshold;
    }

    public static float collideOffset() {
        return Config.collideOffset;
    }

    public static float collideSectorOffset() {
        return Config.collideSectorOffset;
    }

    public static float defaultCameraFOV() {
        return Config.defaultCameraFOV;
    }

    public static boolean disableNativeBufferCopies() {
        return Config.disableNativeBufferCopies;
    }

    public static float farPlane() {
        return Config.farPlane;
    }

    public static int flashSortThreshold() {
        return Config.flashSortThreshold;
    }

    public static String[] getParameterNames() {
        return Config.getParameterNames();
    }

    public static Object getParameterValue(String str) {
        return Config.getParameterValue(str);
    }

    public static String getVersion() {
        return Config.getVersion();
    }

    public static int glBatchSize() {
        return Config.glBatchSize;
    }

    public static int glDebugLevel() {
        return Config.glDebugLevel;
    }

    public static boolean glDither() {
        return Config.glDither;
    }

    public static boolean glForceEnvMapToSecondStage() {
        return Config.glForceEnvMapToSecondStage;
    }

    public static boolean glForceHighPrecision() {
        return Config.glForceHighPrecision;
    }

    public static boolean glIgnoreNearPlane() {
        return Config.glIgnoreNearPlane;
    }

    public static boolean glRevertADDtoMODULATE() {
        return Config.glRevertADDtoMODULATE;
    }

    public static float glTransparencyMul() {
        return Config.glTransparencyMul;
    }

    public static float glTransparencyOffset() {
        return Config.glTransparencyOffset;
    }

    public static boolean glTriangleStrips() {
        return Config.glTriangleStrips;
    }

    public static boolean glTrilinear() {
        return Config.glTrilinear;
    }

    public static boolean glUseIgnorantBlits() {
        return Config.glUseIgnorantBlits;
    }

    public static boolean internalMipmapCreation() {
        return Config.internalMipmapCreation;
    }

    public static int maxAnimationSubSequences() {
        return Config.maxAnimationSubSequences;
    }

    public static int maxLights() {
        return Config.maxLights;
    }

    public static int maxParentObjects() {
        return Config.maxParentObjects;
    }

    public static int maxPolysVisible() {
        return Config.maxPolysVisible;
    }

    public static int maxTextureLayers() {
        return Config.maxTextureLayers;
    }

    public static int maxTextures() {
        return Config.maxTextures;
    }

    public static float nearPlane() {
        return Config.nearPlane;
    }

    public static boolean oldStyle3DSLoader() {
        return Config.oldStyle3DSLoader;
    }

    public static int polygonIDLimit() {
        return Config.polygonIDLimit;
    }

    public static boolean renderTargetsAsSubImages() {
        return Config.renderTargetsAsSubImages;
    }

    public static void setParameterValue(String str, Object obj) {
        Config.setParameterValue(str, obj);
    }

    public static float specPow() {
        return Config.specPow;
    }

    public static float specTerm() {
        return Config.specTerm;
    }

    public static boolean stateOrientedSorting() {
        return Config.stateOrientedSorting;
    }

    public static boolean unloadImmediately() {
        return Config.unloadImmediately;
    }

    public static boolean useNormalsFromOBJ() {
        return Config.useNormalsFromOBJ;
    }

    public static boolean useRotationPivotFrom3DS() {
        return Config.useRotationPivotFrom3DS;
    }

    public static boolean useVBO() {
        return Config.useVBO;
    }

    public static int vectorCacheSize() {
        return Config.vectorCacheSize;
    }

    public static int vertexBufferSize() {
        return Config.vertexBufferSize;
    }

    public static float viewportOffsetX() {
        return Config.viewportOffsetX;
    }

    public static float viewportOffsetY() {
        return Config.viewportOffsetY;
    }
}
