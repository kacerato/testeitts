package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelGeneratorListener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelGeneratorListener.class
  classes.dex
 */
public interface VoxelGeneratorListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelGeneratorListener$Direction.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelGeneratorListener$Direction.class
  classes.dex
 */
    public enum Direction {
        LEFT,
        RIGHT,
        UP,
        DOWN,
        FRONT,
        BACK;

        public static Direction[] valuesCustom() {
            Direction[] valuesCustom = values();
            int length = valuesCustom.length;
            Direction[] directionArr = new Direction[length];
            java.lang.System.arraycopy(valuesCustom, 0, directionArr, 0, length);
            return directionArr;
        }
    }

    int getGroundHeight(int i10, int i11);

    int getBlockType(int i10, int i11, int i12, int i13);

    default void storeChunk(OH3LevelIntArray oH3LevelIntArray, int i10, int i11) {
    }

    default OH3LevelIntArray loadChunk(int i10, int i11) {
        return null;
    }

    default void onChunkCreated(SpatialObject spatialObject, VoxelChunk voxelChunk) {
    }

    default void onChunkBuilt(SpatialObject spatialObject, VoxelChunk voxelChunk) {
    }

    default boolean drawFace(int i10, int i11, Direction direction, Point3 point3) {
        return i11 == 0;
    }

    default int getTextureIndex(int i10, Direction direction, Direction direction2) {
        return i10 - 1;
    }
}
