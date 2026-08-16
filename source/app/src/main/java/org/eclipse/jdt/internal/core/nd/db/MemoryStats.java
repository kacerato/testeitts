package org.eclipse.jdt.internal.core.nd.db;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.NdNodeTypeRegistry;

public class MemoryStats {
    public static final int SIZE = PoolStats.RECORD_SIZE * 64;
    public static final int TOTAL_MALLOC_POOLS = 64;
    public final long address;

    private Chunk f102544db;
    private Map<Integer, PoolStats> stats = new HashMap();

    public static final class PoolStats {
        public static int NUM_ALLOCATIONS_OFFSET = 2;
        public static int POOL_ID_OFFSET;
        public static final int RECORD_SIZE;
        public static int TOTAL_SIZE_OFFSET;
        long address;
        long numAllocations;
        short poolId;
        long totalSize;

        static {
            int i10 = 2 + 8;
            TOTAL_SIZE_OFFSET = i10;
            RECORD_SIZE = i10 + 8;
        }

        public PoolStats(Chunk chunk, long j10) {
            this.address = j10;
            this.poolId = chunk.getShort(POOL_ID_OFFSET + j10);
            this.numAllocations = chunk.getLong(NUM_ALLOCATIONS_OFFSET + j10);
            this.totalSize = chunk.getLong(TOTAL_SIZE_OFFSET + j10);
        }

        public long getNumAllocations() {
            return this.numAllocations;
        }

        public short getPoolId() {
            return this.poolId;
        }

        public long getTotalSize() {
            return this.totalSize;
        }

        public void setAllocations(Chunk chunk, long j10) {
            this.numAllocations = j10;
            chunk.putLong(this.address + NUM_ALLOCATIONS_OFFSET, j10);
        }

        public void setPoolId(Chunk chunk, short s10) {
            this.poolId = s10;
            chunk.putShort(this.address + POOL_ID_OFFSET, s10);
        }

        public void setTotalSize(Chunk chunk, long j10) {
            this.totalSize = j10;
            chunk.putLong(this.address + TOTAL_SIZE_OFFSET, j10);
        }
    }

    public MemoryStats(Chunk chunk, long j10) {
        this.f102544db = chunk;
        this.address = j10;
    }

    private String getPoolName(NdNodeTypeRegistry<?> ndNodeTypeRegistry, int i10) {
        ITypeFactory<? extends Object> classForType;
        switch (i10) {
            case 0:
                return "Miscellaneous";
            case 1:
                return "B-Trees";
            case 2:
                return "DB Properties";
            case 3:
                return "Long Strings";
            case 4:
                return "Short Strings";
            case 5:
                return "Linked Lists";
            case 6:
                return "String Sets";
            case 7:
                return "Growable Arrays";
            default:
                if (i10 >= 256 && (classForType = ndNodeTypeRegistry.getClassForType((short) (i10 - 256))) != null) {
                    return classForType.getElementClass().getSimpleName();
                }
                return "Unknown memory pool " + i10;
        }
    }

    private PoolStats getPoolStats(short s10) {
        if (this.stats.isEmpty()) {
            refresh();
        }
        PoolStats poolStats = this.stats.get(Integer.valueOf(s10));
        if (poolStats != null) {
            return poolStats;
        }
        if (this.stats.size() >= 64) {
            throw new IndexException("Too many malloc pools. Please increase the size of TOTAL_MALLOC_POOLS.");
        }
        int i10 = 0;
        while (true) {
            PoolStats readPool = readPool(i10);
            if (i10 > 0 && readPool.poolId == 0) {
                break;
            }
            short s11 = readPool.poolId;
            if (s11 == s10) {
                throw new IllegalStateException("The stats were out of sync with the database.");
            }
            if (s11 > s10) {
                break;
            }
            i10++;
        }
        int i11 = i10;
        while (true) {
            PoolStats readPool2 = readPool(i11);
            if (i11 > 0 && readPool2.poolId == 0) {
                break;
            }
            i11++;
        }
        while (i11 > i10) {
            PoolStats readPool3 = readPool(i11);
            PoolStats readPool4 = readPool(i11 - 1);
            readPool3.setAllocations(this.f102544db, readPool4.numAllocations);
            readPool3.setTotalSize(this.f102544db, readPool4.totalSize);
            readPool3.setPoolId(this.f102544db, readPool4.poolId);
            i11--;
        }
        PoolStats readPool5 = readPool(i10);
        readPool5.setAllocations(this.f102544db, 0L);
        readPool5.setTotalSize(this.f102544db, 0L);
        readPool5.setPoolId(this.f102544db, s10);
        refresh();
        return this.stats.get(Integer.valueOf(s10));
    }

    private List<PoolStats> loadStats() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 64; i10++) {
            PoolStats readPool = readPool(i10);
            if (i10 > 0 && readPool.poolId == 0) {
                break;
            }
            arrayList.add(readPool);
        }
        return arrayList;
    }

    public Collection<PoolStats> getPools() {
        return this.stats.values();
    }

    public List<PoolStats> getSortedPools() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getPools());
        Collections.sort(arrayList, new Comparator<PoolStats>() {
            @Override
            public int compare(PoolStats poolStats, PoolStats poolStats2) {
                return Long.signum(poolStats2.totalSize - poolStats.totalSize);
            }
        });
        return arrayList;
    }

    public void printMemoryStats(NdNodeTypeRegistry<?> ndNodeTypeRegistry) {
        StringBuilder sb2 = new StringBuilder();
        for (PoolStats poolStats : getSortedPools()) {
            sb2.append(getPoolName(ndNodeTypeRegistry, poolStats.poolId));
            sb2.append(" ");
            sb2.append(poolStats.numAllocations);
            sb2.append(" allocations, ");
            sb2.append(Database.formatByteString(poolStats.totalSize));
            sb2.append("\n");
        }
        System.out.println(sb2.toString());
    }

    public PoolStats readPool(int i10) {
        return new PoolStats(this.f102544db, this.address + (i10 * PoolStats.RECORD_SIZE));
    }

    public void recordFree(short s10, long j10) {
        PoolStats poolStats = getPoolStats(s10);
        long j11 = poolStats.numAllocations;
        if (j11 > 0 && poolStats.totalSize >= j10) {
            poolStats.setAllocations(this.f102544db, j11 - 1);
            poolStats.setTotalSize(this.f102544db, poolStats.totalSize - j10);
        } else {
            throw new IndexException("Attempted to free more memory from pool " + ((int) s10) + " than was ever allocated");
        }
    }

    public void recordMalloc(short s10, long j10) {
        PoolStats poolStats = getPoolStats(s10);
        poolStats.setAllocations(this.f102544db, poolStats.numAllocations + 1);
        poolStats.setTotalSize(this.f102544db, poolStats.totalSize + j10);
    }

    public void refresh() {
        this.stats.clear();
        for (PoolStats poolStats : loadStats()) {
            this.stats.put(Integer.valueOf(poolStats.poolId), poolStats);
        }
    }
}
