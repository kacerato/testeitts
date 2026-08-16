package JAVARuntime;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.PlayerSystem.VoxelHand;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelHand.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelHand.class
  classes.dex
 */
@ClassCategory(cat = {"Voxels", "Components"})
public final class VoxelHand extends Component {

    public class AnonymousClass1 implements VoxelHand.o {
        final Listener val$value;

        public AnonymousClass1(final Listener val$value) {
            this.val$value = val$value;
        }

        @Override
        public void onBlockBroken(int blockType, int x10, int y10, int z10) {
            this.val$value.onBlockBroken(blockType, x10, y10, z10);
        }

        @Override
        public void onBlockPlaced(int blockType, int x10, int y10, int z10) {
            this.val$value.onBlockPlaced(blockType, x10, y10, z10);
        }

        @Override
        public void onBlockSelected(int blockType, int x10, int y10, int z10) {
            this.val$value.onBlockSelected(blockType, x10, y10, z10);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelHand$Listener.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelHand$Listener.class
  classes.dex
 */
    public interface Listener {
        void onBlockBroken(int i10, int i11, int i12, int i13);

        void onBlockPlaced(int i10, int i11, int i12, int i13);

        void onBlockSelected(int i10, int i11, int i12, int i13);
    }

    @HideGetSet
    public float getDistance() {
        return 0.0f;
    }

    @HideGetSet
    public void setDistance(float f10) {
    }

    @HideGetSet
    public int getCrossHairSize() {
        return 0;
    }

    @HideGetSet
    public void setCrossHairSize(int i10) {
    }

    @HideGetSet
    public Color getCrossHairColor() {
        return null;
    }

    @HideGetSet
    public void setCrossHairSize(Color color) {
    }

    @HideGetSet
    public Texture getCrossHairTexture() {
        return null;
    }

    @HideGetSet
    public void setCrossHairTexture(Texture texture) {
    }

    @HideGetSet
    public boolean isShowCrosshair() {
        return false;
    }

    @HideGetSet
    public void setShowCrosshair(boolean z10) {
    }

    @HideGetSet
    public int getSelectedBlockID() {
        return 0;
    }

    @HideGetSet
    public void setSelectedBlockID(int i10) {
    }

    @HideGetSet
    public int getLastHitBlockID() {
        return 0;
    }

    public void requestPut() {
    }

    public void requestBreak() {
    }

    @HideGetSet
    public boolean isBlockBroken() {
        return false;
    }

    @HideGetSet
    public boolean isBlockPlaced() {
        return false;
    }

    @HideGetSet
    public void setListener(Listener listener) {
    }
}
