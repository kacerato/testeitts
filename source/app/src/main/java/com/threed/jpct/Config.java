package com.threed.jpct;

import java.lang.reflect.Field;
import java.util.ArrayList;

public final class Config {
    static final float ADD_Z_SORT = 1000000.0f;
    static final int BLACK_MASK = 15790320;
    static final float COLLIDE_CAMERA_RANGE = 3.0f;
    private static final String INT_VERSION = "1.26";
    public static int aaMode = 0;
    public static boolean aggressiveStripping = true;
    public static boolean autoMaintainAspectRatio = true;
    public static boolean cacheCompressedTextures = false;
    public static float collideEdgeMul = 1.0f;
    public static float collideEllipsoidThreshold = 0.1f;
    public static float collideOffset = 40.0f;
    public static float collideSectorOffset = 3.0f;
    public static float defaultCameraFOV = 1.25f;
    public static boolean disableNativeBufferCopies = false;
    static boolean fadeoutLight = false;
    public static float farPlane = 1000.0f;
    public static int flashSortThreshold = 150;
    public static int glBatchSize = 8000;
    public static int glDebugLevel = 0;
    public static boolean glDither = false;
    public static boolean glForceEnvMapToSecondStage = false;
    public static boolean glForceHighPrecision = false;
    static boolean glIgnoreAlphaBlendingFBO = false;
    public static boolean glIgnoreNearPlane = true;
    public static boolean glRevertADDtoMODULATE = false;
    static int glStageCount = 1;
    public static float glTransparencyMul = 0.06f;
    public static float glTransparencyOffset = 0.1f;
    public static boolean glTriangleStrips = true;
    public static boolean glTrilinear = false;
    public static boolean glUseIgnorantBlits = false;
    public static boolean internalMipmapCreation = false;
    static float lightDiscardDistance = -1.0f;
    static float linearDiv = 50.0f;
    static int loadMaxTrianglesASC = 66000;
    static int loadMaxVerticesASC = 66000;
    public static int maxAnimationSubSequences = 20;
    public static int maxLights = 8;
    public static int maxParentObjects = 1;
    public static int maxPolysVisible = 512;
    public static int maxTextureLayers = 2;
    public static int maxTextures = 64;
    public static float nearPlane = 1.0f;
    public static boolean oldStyle3DSLoader = false;
    public static int polygonIDLimit = 50;
    public static boolean renderTargetsAsSubImages = true;
    public static float specPow = 6.0f;
    public static float specTerm = 10.0f;
    public static boolean stateOrientedSorting = true;
    public static boolean unloadImmediately = false;
    static boolean useFBO = true;
    public static boolean useNormalsFromOBJ = false;
    public static boolean useRotationPivotFrom3DS = false;
    public static boolean useVBO = true;
    public static int vectorCacheSize = 100;
    public static int vertexBufferSize = 240;
    public static float viewportOffsetX;
    public static float viewportOffsetY;

    private Config() {
    }

    public static String[] getParameterNames() {
        Field[] fields = Config.class.getFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            String name = field.getName();
            if (!name.equals("VERSION")) {
                arrayList.add(name);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static Object getParameterValue(String str) {
        try {
            return Config.class.getField(str).get(Config.class);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getVersion() {
        return INT_VERSION;
    }

    public static void setParameterValue(String str, Object obj) {
        Field field = null;
        try {
            field = Config.class.getField(str);
            field.set(Config.class, obj);
        } catch (IllegalArgumentException unused) {
            Logger.log("Wrong parameter value type: " + ((Object) obj.getClass()) + " found, " + ((Object) field.getType()) + " expected!", 0);
        } catch (Exception unused2) {
            Logger.log("Unknown parameter: " + str, 0);
        }
    }
}
