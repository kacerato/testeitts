package F9;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import vc.h;

public interface c {

    public static final int f6706a = 0;

    public static final int f6707b = 1;

    public static final int f6708c = 2;

    public static final int f6709d = 3;

    public static final int f6710e = 4;

    public static final int f6711f = 5;

    void beforeChunkBuild(GameObject gameObject, VoxelChunk voxelChunk);

    boolean drawFace(int blockType, int sideBlockType, int sideFace, Point3 internalCoords);

    int getBlockType(int x10, int y10, int z10, int groundHeight);

    int getGroundHeight(int x10, int z10);

    int getTextureIndex(int blockType, int face);

    h loadChunk(int x10, int z10);

    void onChunkBuilt(GameObject object, VoxelChunk chunk);

    void onChunkCreated(GameObject object, VoxelChunk chunk);

    void storeChunk(h chunk, int x10, int z10);
}
