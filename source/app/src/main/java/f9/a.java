package F9;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import vc.h;

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
        return 0;
    }

    @Override
    public int getGroundHeight(int x10, int z10) {
        return 0;
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
