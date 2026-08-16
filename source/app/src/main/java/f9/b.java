package F9;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import vc.h;

public class b {

    public static final c f6704a = new a();

    public static float f6705b = 50.0f;

    public class a implements c {
        @Override
        public void beforeChunkBuild(GameObject gameObject, VoxelChunk voxelChunk) {
        }

        @Override
        public boolean drawFace(int blockType, int sideBlockType, int sideFace, Point3 internalCoords) {
            return sideBlockType == 0;
        }

        @Override
        public int getBlockType(int x10, int y10, int z10, int groundHeight) {
            return b.a(x10, y10, z10, groundHeight);
        }

        @Override
        public int getGroundHeight(int x10, int z10) {
            return b.b(x10, z10);
        }

        @Override
        public int getTextureIndex(int blockType, int face) {
            return blockType;
        }

        @Override
        public h loadChunk(int x10, int z10) {
            return null;
        }

        @Override
        public void onChunkBuilt(GameObject object, VoxelChunk chunk) {
        }

        @Override
        public void onChunkCreated(GameObject object, VoxelChunk chunk) {
        }

        @Override
        public void storeChunk(h chunk, int x10, int z10) {
        }
    }

    public static int a(int x10, int y10, int z10, int height) {
        if (y10 > height) {
            return 0;
        }
        return y10 < height + (-3) ? 2 : 1;
    }

    public static int b(int x10, int z10) {
        float f10 = f6705b;
        return ((int) (((((float) Rc.a.e(x10 / f10, z10 / f10)) + 1.0f) / 2.0f) * 15.0f)) + 30;
    }
}
