package E9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import vc.h;

public class d {
    public static int a(int x10, int y10, int z10, h blocks) {
        try {
            return blocks.u(x10, z10, y10);
        } catch (IndexOutOfBoundsException unused) {
            return 0;
        }
    }

    public static void b(VoxelChunk chunk, int x10, int y10, int z10, int blockType) {
        VoxelChunk l10;
        VoxelChunk l11;
        if (!chunk.setBlock(x10, y10, z10, blockType)) {
            VoxelChunk l12 = D9.a.l(x10, y10, z10);
            if (l12 != null) {
                b(l12, x10, y10, z10, blockType);
                return;
            }
            return;
        }
        int internalBlockIndexX = chunk.internalBlockIndexX(x10);
        int internalBlockIndexZ = chunk.internalBlockIndexZ(z10);
        if (internalBlockIndexX >= chunk.getWidth() - 1) {
            VoxelChunk l13 = D9.a.l(x10 + 1, y10, z10);
            if (l13 != null) {
                l13.scheduleReconstruct();
            }
        } else if (internalBlockIndexX <= 0 && (l10 = D9.a.l(x10 - 1, y10, z10)) != null) {
            l10.scheduleReconstruct();
        }
        if (internalBlockIndexZ >= chunk.getWidth() - 1) {
            VoxelChunk l14 = D9.a.l(x10, y10, z10 + 1);
            if (l14 != null) {
                l14.scheduleReconstruct();
            }
        } else if (internalBlockIndexZ <= 0 && (l11 = D9.a.l(x10, y10, z10 - 1)) != null) {
            l11.scheduleReconstruct();
        }
        chunk.scheduleReconstruct();
    }
}
