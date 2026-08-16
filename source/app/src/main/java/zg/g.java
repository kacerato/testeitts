package zg;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class g extends RandomAccessFile {

    public long f131318b;

    public File[] f131319c;

    public RandomAccessFile f131320d;

    public byte[] f131321e;

    public int f131322f;

    public String f131323g;

    public g(String str, String str2) throws IOException {
        this(new File(str), str2);
    }

    public final void a(File[] fileArr) throws IOException {
        int i10 = 1;
        for (File file : fileArr) {
            String l10 = Fg.c.l(file);
            try {
                if (i10 != Integer.parseInt(l10)) {
                    throw new IOException("Split file number " + i10 + " does not exist");
                }
                i10++;
            } catch (NumberFormatException unused) {
                throw new IOException("Split file extension not in expected format. Found: " + l10 + " expected of format: .001, .002, etc");
            }
        }
    }

    public void c() throws IOException {
        d(this.f131319c.length - 1);
    }

    @Override
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f131320d;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        super.close();
    }

    public final void d(int i10) throws IOException {
        if (this.f131322f == i10) {
            return;
        }
        if (i10 > this.f131319c.length - 1) {
            throw new IOException("split counter greater than number of split files");
        }
        RandomAccessFile randomAccessFile = this.f131320d;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
        this.f131320d = new RandomAccessFile(this.f131319c[i10], this.f131323g);
        this.f131322f = i10;
    }

    public void e(long j10) throws IOException {
        this.f131320d.seek(j10);
    }

    @Override
    public long getFilePointer() throws IOException {
        return this.f131320d.getFilePointer();
    }

    @Override
    public long length() throws IOException {
        return this.f131320d.length();
    }

    @Override
    public int read() throws IOException {
        if (read(this.f131321e) == -1) {
            return -1;
        }
        return this.f131321e[0] & 255;
    }

    @Override
    public void seek(long j10) throws IOException {
        int i10 = (int) (j10 / this.f131318b);
        if (i10 != this.f131322f) {
            d(i10);
        }
        this.f131320d.seek(j10 - (i10 * this.f131318b));
    }

    @Override
    public void write(int i10) throws IOException {
        throw new UnsupportedOperationException();
    }

    public g(File file, String str) throws IOException {
        this(file, str, Fg.c.h(file));
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public g(File file, String str, File[] fileArr) throws IOException {
        super(file, str);
        this.f131321e = new byte[1];
        this.f131322f = 0;
        super.close();
        if (!Cg.f.WRITE.a().equals(str)) {
            a(fileArr);
            this.f131320d = new RandomAccessFile(file, str);
            this.f131319c = fileArr;
            this.f131318b = file.length();
            this.f131323g = str;
            return;
        }
        throw new IllegalArgumentException("write mode is not allowed for NumberedSplitRandomAccessFile");
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int read = this.f131320d.read(bArr, i10, i11);
        if (read != -1) {
            return read;
        }
        int i12 = this.f131322f;
        if (i12 == this.f131319c.length - 1) {
            return -1;
        }
        d(i12 + 1);
        return read(bArr, i10, i11);
    }
}
