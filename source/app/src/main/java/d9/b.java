package D9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunkSpawner;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class b {

    public static final List<VoxelChunkSpawner> f4970a = new SteppedArrayList();

    public static void a(VoxelChunkSpawner spawner) {
        List<VoxelChunkSpawner> list = f4970a;
        synchronized (list) {
            try {
                if (!list.contains(spawner)) {
                    list.add(spawner);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(VoxelChunkSpawner spawner) {
        List<VoxelChunkSpawner> list = f4970a;
        synchronized (list) {
            list.remove(spawner);
        }
    }
}
