package org.tukaani.xz;

import java.io.IOException;
import java.io.OutputStream;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.common.EncoderUtil;
import org.tukaani.xz.common.StreamFlags;
import org.tukaani.xz.index.IndexEncoder;

public class XZOutputStream extends FinishableOutputStream {
    private final ArrayCache arrayCache;
    private BlockOutputStream blockEncoder;
    private final Check check;
    private IOException exception;
    private FilterEncoder[] filters;
    private boolean filtersSupportFlushing;
    private boolean finished;
    private final IndexEncoder index;
    private OutputStream out;
    private final StreamFlags streamFlags;
    private final byte[] tempBuf;

    public XZOutputStream(OutputStream outputStream, FilterOptions filterOptions) throws IOException {
        this(outputStream, filterOptions, 4);
    }

    private void encodeStreamFlags(byte[] bArr, int i10) {
        bArr[i10] = 0;
        bArr[i10 + 1] = (byte) this.streamFlags.checkType;
    }

    private void encodeStreamFooter() throws IOException {
        byte[] bArr = new byte[6];
        long indexSize = (this.index.getIndexSize() / 4) - 1;
        for (int i10 = 0; i10 < 4; i10++) {
            bArr[i10] = (byte) (indexSize >>> (i10 * 8));
        }
        encodeStreamFlags(bArr, 4);
        EncoderUtil.writeCRC32(this.out, bArr);
        this.out.write(bArr);
        this.out.write(XZ.FOOTER_MAGIC);
    }

    private void encodeStreamHeader() throws IOException {
        this.out.write(XZ.HEADER_MAGIC);
        byte[] bArr = new byte[2];
        encodeStreamFlags(bArr, 0);
        this.out.write(bArr);
        EncoderUtil.writeCRC32(this.out, bArr);
    }

    @Override
    public void close() throws IOException {
        if (this.out != null) {
            try {
                finish();
            } catch (IOException unused) {
            }
            try {
                this.out.close();
            } catch (IOException e10) {
                if (this.exception == null) {
                    this.exception = e10;
                }
            }
            this.out = null;
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
    }

    public void endBlock() throws IOException {
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        BlockOutputStream blockOutputStream = this.blockEncoder;
        if (blockOutputStream != null) {
            try {
                blockOutputStream.finish();
                this.index.add(this.blockEncoder.getUnpaddedSize(), this.blockEncoder.getUncompressedSize());
                this.blockEncoder = null;
            } catch (IOException e10) {
                this.exception = e10;
                throw e10;
            }
        }
    }

    @Override
    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        endBlock();
        try {
            this.index.encode(this.out);
            encodeStreamFooter();
            this.finished = true;
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public void flush() throws IOException {
        OutputStream outputStream;
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        try {
            BlockOutputStream blockOutputStream = this.blockEncoder;
            if (blockOutputStream == null) {
                outputStream = this.out;
            } else if (this.filtersSupportFlushing) {
                blockOutputStream.flush();
                return;
            } else {
                endBlock();
                outputStream = this.out;
            }
            outputStream.flush();
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    public void updateFilters(FilterOptions filterOptions) throws XZIOException {
        updateFilters(new FilterOptions[]{filterOptions});
    }

    @Override
    public void write(int i10) throws IOException {
        byte[] bArr = this.tempBuf;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions filterOptions, int i10) throws IOException {
        this(outputStream, new FilterOptions[]{filterOptions}, i10);
    }

    public void updateFilters(FilterOptions[] filterOptionsArr) throws XZIOException {
        if (this.blockEncoder != null) {
            throw new UnsupportedOptionsException("Changing filter options in the middle of a XZ Block not implemented");
        }
        if (filterOptionsArr.length < 1 || filterOptionsArr.length > 4) {
            throw new UnsupportedOptionsException("XZ filter chain must be 1-4 filters");
        }
        this.filtersSupportFlushing = true;
        FilterEncoder[] filterEncoderArr = new FilterEncoder[filterOptionsArr.length];
        for (int i10 = 0; i10 < filterOptionsArr.length; i10++) {
            FilterEncoder filterEncoder = filterOptionsArr[i10].getFilterEncoder();
            filterEncoderArr[i10] = filterEncoder;
            this.filtersSupportFlushing = filterEncoder.supportsFlushing() & this.filtersSupportFlushing;
        }
        RawCoder.validate(filterEncoderArr);
        this.filters = filterEncoderArr;
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.finished) {
            throw new XZIOException("Stream finished or closed");
        }
        try {
            if (this.blockEncoder == null) {
                this.blockEncoder = new BlockOutputStream(this.out, this.filters, this.check, this.arrayCache);
            }
            this.blockEncoder.write(bArr, i10, i11);
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions filterOptions, int i10, ArrayCache arrayCache) throws IOException {
        this(outputStream, new FilterOptions[]{filterOptions}, i10, arrayCache);
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions filterOptions, ArrayCache arrayCache) throws IOException {
        this(outputStream, filterOptions, 4, arrayCache);
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions[] filterOptionsArr) throws IOException {
        this(outputStream, filterOptionsArr, 4);
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions[] filterOptionsArr, int i10) throws IOException {
        this(outputStream, filterOptionsArr, i10, ArrayCache.getDefaultCache());
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions[] filterOptionsArr, int i10, ArrayCache arrayCache) throws IOException {
        StreamFlags streamFlags = new StreamFlags();
        this.streamFlags = streamFlags;
        this.index = new IndexEncoder();
        this.blockEncoder = null;
        this.exception = null;
        this.finished = false;
        this.tempBuf = new byte[1];
        this.arrayCache = arrayCache;
        this.out = outputStream;
        updateFilters(filterOptionsArr);
        streamFlags.checkType = i10;
        this.check = Check.getInstance(i10);
        encodeStreamHeader();
    }

    public XZOutputStream(OutputStream outputStream, FilterOptions[] filterOptionsArr, ArrayCache arrayCache) throws IOException {
        this(outputStream, filterOptionsArr, 4, arrayCache);
    }
}
