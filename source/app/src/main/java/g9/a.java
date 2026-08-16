package G9;

import JAVARuntime.Vector3;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import gb.C13317e;

public class a {

    public VoxelChunk[] f7704a;

    public int f7705b;

    public a(int count) {
        this.f7704a = new VoxelChunk[count];
        this.f7705b = count;
    }

    public int a(int x10, int y10, int z10) {
        VoxelChunk c10 = c(x10, y10, z10);
        if (c10 != null) {
            return c10.getBlock(x10, y10, z10);
        }
        return -1;
    }

    public int b(Vector3 pos) {
        return a((int) pos.getX(), (int) pos.getY(), (int) pos.getZ());
    }

    public VoxelChunk c(int x10, int y10, int z10) {
        for (int i10 = 0; i10 < this.f7705b; i10++) {
            VoxelChunk voxelChunk = this.f7704a[i10];
            if (voxelChunk != null) {
                if (!C13317e.J(voxelChunk.f79250n)) {
                    this.f7704a[i10] = null;
                } else if (voxelChunk.containsBlock(x10, y10, z10)) {
                    if (i10 > 0) {
                        VoxelChunk[] voxelChunkArr = this.f7704a;
                        VoxelChunk voxelChunk2 = voxelChunkArr[0];
                        voxelChunkArr[0] = voxelChunk;
                        voxelChunkArr[i10] = voxelChunk2;
                    }
                    return voxelChunk;
                }
            }
        }
        try {
            VoxelChunk l10 = D9.a.l(x10, y10, z10);
            if (l10 != null) {
                int i11 = 0;
                while (i11 < this.f7705b - 1) {
                    VoxelChunk[] voxelChunkArr2 = this.f7704a;
                    VoxelChunk voxelChunk3 = voxelChunkArr2[i11];
                    i11++;
                    voxelChunkArr2[i11] = voxelChunk3;
                }
                this.f7704a[0] = l10;
            }
            return l10;
        } catch (IndexOutOfBoundsException unused) {
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
