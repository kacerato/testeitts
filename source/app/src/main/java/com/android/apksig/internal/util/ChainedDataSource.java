package com.android.apksig.internal.util;

import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class ChainedDataSource implements DataSource {
    private final DataSource[] mSources;
    private final long mTotalSize;

    public ChainedDataSource(DataSource... dataSourceArr) {
        this.mSources = dataSourceArr;
        long j10 = 0;
        for (DataSource dataSource : dataSourceArr) {
            j10 += dataSource.size();
        }
        this.mTotalSize = j10;
    }

    private Pair<Integer, Long> locateDataSource(long j10) {
        int i10 = 0;
        long j11 = j10;
        while (true) {
            DataSource[] dataSourceArr = this.mSources;
            if (i10 >= dataSourceArr.length) {
                throw new IndexOutOfBoundsException("Access is out of bound, offset: " + j10 + ", totalSize: " + this.mTotalSize);
            }
            if (j11 < dataSourceArr[i10].size()) {
                return Pair.of(Integer.valueOf(i10), Long.valueOf(j11));
            }
            j11 -= this.mSources[i10].size();
            i10++;
        }
    }

    @Override
    public void copyTo(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
        feed(j10, i10, new ByteBufferSink(byteBuffer));
    }

    @Override
    public void feed(long j10, long j11, DataSink dataSink) throws IOException {
        if (j10 + j11 > this.mTotalSize) {
            throw new IndexOutOfBoundsException("Requested more than available");
        }
        long j12 = j10;
        for (DataSource dataSource : this.mSources) {
            if (j12 >= dataSource.size()) {
                j12 -= dataSource.size();
            } else {
                long size = dataSource.size() - j12;
                if (size >= j11) {
                    dataSource.feed(j12, j11, dataSink);
                    return;
                } else {
                    dataSource.feed(j12, size, dataSink);
                    j11 -= size;
                    j12 = 0;
                }
            }
        }
    }

    @Override
    public ByteBuffer getByteBuffer(long j10, int i10) throws IOException {
        long j11 = i10;
        if (j10 + j11 > this.mTotalSize) {
            throw new IndexOutOfBoundsException("Requested more than available");
        }
        Pair<Integer, Long> locateDataSource = locateDataSource(j10);
        int intValue = locateDataSource.getFirst().intValue();
        long longValue = locateDataSource.getSecond().longValue();
        if (j11 + longValue <= this.mSources[intValue].size()) {
            return this.mSources[intValue].getByteBuffer(longValue, i10);
        }
        ByteBuffer allocate = ByteBuffer.allocate(i10);
        while (intValue < this.mSources.length && allocate.hasRemaining()) {
            this.mSources[intValue].copyTo(longValue, Math.toIntExact(Math.min(this.mSources[intValue].size() - longValue, allocate.remaining())), allocate);
            intValue++;
            longValue = 0;
        }
        allocate.rewind();
        return allocate;
    }

    @Override
    public long size() {
        return this.mTotalSize;
    }

    @Override
    public DataSource slice(long j10, long j11) {
        Pair<Integer, Long> locateDataSource = locateDataSource(j10);
        int intValue = locateDataSource.getFirst().intValue();
        long longValue = locateDataSource.getSecond().longValue();
        DataSource dataSource = this.mSources[intValue];
        if (longValue + j11 <= dataSource.size()) {
            return dataSource.slice(longValue, j11);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(dataSource.slice(longValue, dataSource.size() - longValue));
        Pair<Integer, Long> locateDataSource2 = locateDataSource((j10 + j11) - 1);
        int intValue2 = locateDataSource2.getFirst().intValue();
        long longValue2 = locateDataSource2.getSecond().longValue();
        while (true) {
            intValue++;
            if (intValue >= intValue2) {
                arrayList.add(this.mSources[intValue2].slice(0L, longValue2 + 1));
                return new ChainedDataSource((DataSource[]) arrayList.toArray(new DataSource[0]));
            }
            arrayList.add(this.mSources[intValue]);
        }
    }
}
