package E9;

import JAVARuntime.Point3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import vc.h;

public class c {

    public final G9.a f5729a = new G9.a(6);

    public final VoxelChunk f5730b;

    public c(VoxelChunk voxelChunk) {
        this.f5730b = voxelChunk;
    }

    public int a(int x10, int y10, int z10, h blocks, int chunkX, int chunkZ, int width, int height) {
        int block;
        if (x10 >= 0 && x10 < width && z10 >= 0 && z10 < width && y10 >= 0 && y10 < height) {
            return blocks.u(x10, z10, y10);
        }
        int i10 = chunkX + x10;
        int i11 = chunkZ + z10;
        VoxelChunk c10 = this.f5729a.c(i10, y10, i11);
        if (c10 == null || (block = c10.getBlock(i10, y10, i11)) < 0) {
            return 0;
        }
        return block;
    }

    public void b(int width, int height, h blocks, b data, int chunkX, int chunkZ, F9.c generatorListener) {
        Point3 point3 = new Point3();
        int i10 = 0;
        while (i10 < width) {
            int i11 = 0;
            while (i11 < width) {
                int i12 = height;
                int i13 = 0;
                while (i13 < i12) {
                    c(i10, i13, i11, blocks.u(i10, i11, i13), data, blocks, chunkX, chunkZ, generatorListener, point3, width, height);
                    i13++;
                    i12 = height;
                    i11 = i11;
                    i10 = i10;
                }
                i11++;
            }
            i10++;
        }
    }

    public final void c(int x10, int y10, int z10, int blockType, b data, h blocks, int chunkX, int chunkZ, F9.c generatorListener, Point3 coords, int width, int height) {
        coords.set(x10, y10, z10);
        if (blockType > 0) {
            if (generatorListener.drawFace(blockType, a(x10, y10 + 1, z10, blocks, chunkX, chunkZ, width, height), 2, coords)) {
                H9.a.i(data);
            }
            if (generatorListener.drawFace(blockType, a(x10, y10 - 1, z10, blocks, chunkX, chunkZ, width, height), 3, coords)) {
                H9.a.i(data);
            }
            if (generatorListener.drawFace(blockType, a(x10, y10, z10 + 1, blocks, chunkX, chunkZ, width, height), 4, coords)) {
                H9.a.i(data);
            }
            if (generatorListener.drawFace(blockType, a(x10, y10, z10 - 1, blocks, chunkX, chunkZ, width, height), 5, coords)) {
                H9.a.i(data);
            }
            if (generatorListener.drawFace(blockType, a(x10 + 1, y10, z10, blocks, chunkX, chunkZ, width, height), 0, coords)) {
                H9.a.i(data);
            }
            if (generatorListener.drawFace(blockType, a(x10 - 1, y10, z10, blocks, chunkX, chunkZ, width, height), 1, coords)) {
                H9.a.i(data);
            }
        }
    }
}
