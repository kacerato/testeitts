package zg;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class f extends h {

    public RandomAccessFile f131317b;

    public f(File file) throws IOException {
        this.f131317b = new g(file, Cg.f.READ.a());
    }

    @Override
    public void a(Bg.j jVar) throws IOException {
        this.f131317b.seek(jVar.T());
    }

    @Override
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f131317b;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override
    public int read() throws IOException {
        return this.f131317b.read();
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f131317b.read(bArr, i10, i11);
    }
}
