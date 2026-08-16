package com.github.luben.zstd;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ZstdDictTrainer {
    private final int allocatedSize;
    private final int dictSize;
    private long filledSize;
    private final List<Integer> sampleSizes = new ArrayList();
    private final ByteBuffer trainingSamples;

    public ZstdDictTrainer(int i10, int i11) {
        this.trainingSamples = ByteBuffer.allocateDirect(i10);
        this.allocatedSize = i10;
        this.dictSize = i11;
    }

    private int[] copyToIntArray(List<Integer> list) {
        int[] iArr = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        return iArr;
    }

    public synchronized boolean addSample(byte[] bArr) {
        if (this.filledSize + bArr.length > this.allocatedSize) {
            return false;
        }
        this.trainingSamples.put(bArr);
        this.sampleSizes.add(Integer.valueOf(bArr.length));
        this.filledSize += bArr.length;
        return true;
    }

    public byte[] trainSamples() throws ZstdException {
        return trainSamples(false);
    }

    public ByteBuffer trainSamplesDirect() throws ZstdException {
        return trainSamplesDirect(false);
    }

    public byte[] trainSamples(boolean z10) throws ZstdException {
        ByteBuffer trainSamplesDirect = trainSamplesDirect(z10);
        byte[] bArr = new byte[trainSamplesDirect.remaining()];
        trainSamplesDirect.get(bArr);
        return bArr;
    }

    public synchronized ByteBuffer trainSamplesDirect(boolean z10) throws ZstdException {
        ByteBuffer allocateDirect;
        allocateDirect = ByteBuffer.allocateDirect(this.dictSize);
        long trainFromBufferDirect = Zstd.trainFromBufferDirect(this.trainingSamples, copyToIntArray(this.sampleSizes), allocateDirect, z10);
        if (!Zstd.isError(trainFromBufferDirect)) {
            allocateDirect.limit(Long.valueOf(trainFromBufferDirect).intValue());
        } else {
            allocateDirect.limit(0);
            throw new ZstdException(trainFromBufferDirect);
        }
        return allocateDirect;
    }
}
