package D9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class a {

    public static final Mc.b<VoxelChunk> f4964a;

    public static final Object f4965b;

    public static final AtomicBoolean f4966c;

    public static final AtomicInteger f4967d;

    public static final AtomicInteger f4968e;

    public static final Runnable f4969f;

    public class C0092a implements x8.b {
        @Override
        public void a() {
            a.f4964a.clear();
        }

        @Override
        public void b() {
            a.f4964a.clear();
        }
    }

    public class b implements Runnable {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0049, code lost:
        
            if (r1 != null) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        
            if (gb.C13317e.G(r1.f79250n) == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
        
            r1.parallelLowTaskUpdate();
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005a, code lost:
        
            r1.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:49:0x006c  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int andIncrement;
            while (true) {
                try {
                    andIncrement = a.f4968e.getAndIncrement();
                } catch (Throwable th2) {
                    if (a.f4967d.decrementAndGet() == 0) {
                    }
                    throw th2;
                }
                synchronized (a.f4964a) {
                    if (andIncrement >= a.f4964a.size()) {
                        break;
                    } else {
                        VoxelChunk voxelChunk = (VoxelChunk) a.f4964a.get(andIncrement);
                    }
                    if (a.f4967d.decrementAndGet() == 0) {
                        synchronized (a.f4965b) {
                            a.f4968e.set(0);
                            a.f4966c.set(false);
                        }
                    }
                    throw th2;
                }
            }
            if (a.f4967d.decrementAndGet() == 0) {
                synchronized (a.f4965b) {
                    a.f4968e.set(0);
                    a.f4966c.set(false);
                }
            }
        }
    }

    static {
        com.itsmagic.engine.Core.Components.ProjectController.a.h(new C0092a());
        f4964a = new Mc.b<>();
        f4965b = new Object();
        f4966c = new AtomicBoolean(false);
        f4967d = new AtomicInteger();
        f4968e = new AtomicInteger();
        f4969f = new b();
    }

    public static void f(VoxelChunk chunk) {
        K8.a.G();
        if (chunk == null) {
            throw new NullPointerException("chunk can't be null");
        }
        Mc.b<VoxelChunk> bVar = f4964a;
        synchronized (bVar) {
            bVar.add(chunk);
        }
    }

    public static VoxelChunk g(int x10) {
        return f4964a.get(x10);
    }

    public static int h() {
        return f4964a.size();
    }

    public static boolean i(VoxelChunk chunk) {
        return f4964a.contains(chunk);
    }

    public static int j(int x10, int y10, int z10) {
        VoxelChunk l10 = l(x10, y10, z10);
        if (l10 != null) {
            return l10.getBlock(x10, y10, z10);
        }
        return -1;
    }

    public static int k(Vector3 pos) {
        return j((int) pos.getX(), (int) pos.getY(), (int) pos.getZ());
    }

    public static VoxelChunk l(int x10, int y10, int z10) {
        int size = f4964a.size();
        for (int i10 = 0; i10 < size; i10++) {
            VoxelChunk voxelChunk = f4964a.get(i10);
            if (voxelChunk != null && C13317e.J(voxelChunk.f79250n) && voxelChunk.containsBlock(x10, y10, z10)) {
                return voxelChunk;
            }
        }
        return null;
    }

    public static void m() {
        synchronized (f4965b) {
            try {
                AtomicBoolean atomicBoolean = f4966c;
                if (atomicBoolean.get()) {
                    return;
                }
                Mc.b<VoxelChunk> bVar = f4964a;
                synchronized (bVar) {
                    if (bVar.isEmpty()) {
                        return;
                    }
                    int max = Math.max(1, (int) Nc.b.D(O9.b.a() / 3.0f));
                    f4968e.set(0);
                    f4967d.set(max);
                    atomicBoolean.set(true);
                    for (int i10 = 0; i10 < max; i10++) {
                        O9.b.d(f4969f);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void n(VoxelChunk chunk) {
        K8.a.G();
        if (chunk == null) {
            throw new NullPointerException("chunk can't be null");
        }
        Mc.b<VoxelChunk> bVar = f4964a;
        synchronized (bVar) {
            bVar.remove(chunk);
        }
    }
}
