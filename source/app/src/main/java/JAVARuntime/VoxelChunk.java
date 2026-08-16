package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelChunk.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelChunk.class
  classes.dex
 */
@ClassCategory(cat = {"Voxels", "Components"})
public final class VoxelChunk extends Component {
    @HideGetSet
    public int getWidth() {
        return 0;
    }

    @HideGetSet
    public void setWidth(int i10) {
    }

    @HideGetSet
    public int getHeight() {
        return 0;
    }

    @HideGetSet
    public void setHeight(int i10) {
    }

    @HideGetSet
    public boolean isUsePositionAsCoordinatesOffset() {
        return false;
    }

    @HideGetSet
    public void setUsePositionAsCoordinatesOffset(boolean z10) {
    }

    @HideGetSet
    public Vector2 getOffset() {
        return null;
    }

    @HideGetSet
    public void setOffset(Vector2 vector2) {
    }

    public void apply() {
    }

    public void invalidateBlocks() {
    }

    public int getMaxVerticesCount() {
        return 0;
    }

    public int getBlock(int i10, int i11, int i12) {
        return 0;
    }

    public int getBlockLocal(int i10, int i11, int i12) {
        return 0;
    }

    public void setBlock(int i10, int i11, int i12, int i13) {
    }

    public void setLocalBlock(int i10, int i11, int i12, int i13) {
    }

    public boolean containsBlock(int i10, int i11, int i12) {
        return false;
    }

    public boolean containsLocalBlock(int i10, int i11, int i12) {
        return false;
    }

    public boolean isReady() {
        return false;
    }

    @HideGetSet
    public OH3LevelIntArray getBlocksMatrixCritical() {
        return null;
    }

    @HideGetSet
    public void setBlocksMatrix(OH3LevelIntArray oH3LevelIntArray) {
    }
}
