package org.tukaani.xz;

import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public class SeekableFileInputStream extends SeekableInputStream {
    protected RandomAccessFile randomAccessFile;

    public SeekableFileInputStream(File file) throws FileNotFoundException {
        this.randomAccessFile = new RandomAccessFile(file, a.f72595c);
    }

    @Override
    public void close() throws IOException {
        this.randomAccessFile.close();
    }

    @Override
    public long length() throws IOException {
        return this.randomAccessFile.length();
    }

    @Override
    public long position() throws IOException {
        return this.randomAccessFile.getFilePointer();
    }

    @Override
    public int read() throws IOException {
        return this.randomAccessFile.read();
    }

    @Override
    public void seek(long j10) throws IOException {
        this.randomAccessFile.seek(j10);
    }

    public SeekableFileInputStream(RandomAccessFile randomAccessFile) {
        this.randomAccessFile = randomAccessFile;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return this.randomAccessFile.read(bArr);
    }

    public SeekableFileInputStream(String str) throws FileNotFoundException {
        this.randomAccessFile = new RandomAccessFile(str, a.f72595c);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.randomAccessFile.read(bArr, i10, i11);
    }
}
