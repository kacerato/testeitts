package JAVARuntime;

import F9.c;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;
import ob.b;
import vc.h;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VoxelGenerator.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VoxelGenerator.class
  classes.dex
 */
@ClassCategory(cat = {"Voxels", "Components"})
public final class VoxelGenerator extends Component {

    public class AnonymousClass1 implements c {
        final VoxelGeneratorListener val$finalVoxelGeneratorListener;

        public AnonymousClass1(final VoxelGeneratorListener val$finalVoxelGeneratorListener) {
            this.val$finalVoxelGeneratorListener = val$finalVoxelGeneratorListener;
        }

        @Override
        public void beforeChunkBuild(GameObject gameObject, com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk voxelChunk) {
            this.val$finalVoxelGeneratorListener.onChunkBuilt(gameObject.W1(), (VoxelChunk) voxelChunk.toJAVARuntime());
        }

        @Override
        public boolean drawFace(int blockType, int sideBlockType, int sideFace, Point3 internalCoords) {
            return this.val$finalVoxelGeneratorListener.drawFace(blockType, sideBlockType, G9.b.a(sideFace), internalCoords);
        }

        @Override
        public int getBlockType(int x10, int y10, int z10, int groundHeight) {
            return this.val$finalVoxelGeneratorListener.getBlockType(x10, y10, z10, groundHeight);
        }

        @Override
        public int getGroundHeight(int x10, int z10) {
            return this.val$finalVoxelGeneratorListener.getGroundHeight(x10, z10);
        }

        @Override
        public int getTextureIndex(int blockType, int face) {
            return this.val$finalVoxelGeneratorListener.getTextureIndex(blockType, G9.b.a(face), G9.b.a(face));
        }

        @Override
        public h loadChunk(int x10, int z10) {
            OH3LevelIntArray loadChunk = this.val$finalVoxelGeneratorListener.loadChunk(x10, z10);
            if (loadChunk != null) {
                return loadChunk.buffer;
            }
            return null;
        }

        @Override
        public void onChunkBuilt(GameObject object, com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk chunk) {
            this.val$finalVoxelGeneratorListener.onChunkBuilt(object.W1(), (VoxelChunk) chunk.toJAVARuntime());
        }

        @Override
        public void onChunkCreated(GameObject object, com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk chunk) {
            this.val$finalVoxelGeneratorListener.onChunkCreated(object.W1(), (VoxelChunk) chunk.toJAVARuntime());
        }

        @Override
        public void storeChunk(h chunk, int x10, int z10) {
            this.val$finalVoxelGeneratorListener.storeChunk(chunk.s(), x10, z10);
        }
    }

    public class AnonymousClass2 implements b.a {
        final c val$ll;
        final Component val$value;

        public AnonymousClass2(final c val$ll, final Component val$value) {
            this.val$ll = val$ll;
            this.val$value = val$value;
        }

        @Override
        public boolean run() {
            if (VoxelGenerator.this.component.getListener() != this.val$ll) {
                return false;
            }
            JavaComponent javaComponent = this.val$value.javaComponent;
            if (javaComponent != null && !C13317e.G(javaComponent.f79250n)) {
                return true;
            }
            VoxelGenerator.this.component.setListener(null);
            return false;
        }
    }

    public void setListener(Component component) {
    }

    public void removeListener() {
    }
}
