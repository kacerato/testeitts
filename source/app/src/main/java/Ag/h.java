package Ag;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;
import yg.EnumC16187c;

public class h extends OutputStream implements g {

    public RandomAccessFile f551b;

    public long f552c;

    public File f553d;

    public int f554e;

    public long f555f;

    public Fg.f f556g;

    public h(File file) throws FileNotFoundException, ZipException {
        this(file, -1L);
    }

    public boolean a(int i10) throws ZipException {
        if (i10 < 0) {
            throw new ZipException("negative buffersize for checkBufferSizeAndStartNextSplitFile");
        }
        if (f(i10)) {
            return false;
        }
        try {
            l();
            this.f555f = 0L;
            return true;
        } catch (IOException e10) {
            throw new ZipException(e10);
        }
    }

    @Override
    public long c() throws IOException {
        return this.f551b.getFilePointer();
    }

    @Override
    public void close() throws IOException {
        this.f551b.close();
    }

    @Override
    public int d() {
        return this.f554e;
    }

    public long e() {
        return this.f552c;
    }

    public final boolean f(int i10) {
        long j10 = this.f552c;
        return j10 < 65536 || this.f555f + ((long) i10) <= j10;
    }

    public final boolean g(byte[] bArr) {
        int d10 = this.f556g.d(bArr);
        for (EnumC16187c enumC16187c : EnumC16187c.values()) {
            if (enumC16187c != EnumC16187c.SPLIT_ZIP && enumC16187c.a() == d10) {
                return true;
            }
        }
        return false;
    }

    public boolean h() {
        return this.f552c != -1;
    }

    public void j(long j10) throws IOException {
        this.f551b.seek(j10);
    }

    public int k(int i10) throws IOException {
        return this.f551b.skipBytes(i10);
    }

    public final void l() throws IOException {
        String str;
        String u10 = Fg.c.u(this.f553d.getName());
        String absolutePath = this.f553d.getAbsolutePath();
        if (this.f553d.getParent() == null) {
            str = "";
        } else {
            str = this.f553d.getParent() + System.getProperty("file.separator");
        }
        String str2 = ".z0" + (this.f554e + 1);
        if (this.f554e >= 9) {
            str2 = ".z" + (this.f554e + 1);
        }
        File file = new File(str + u10 + str2);
        this.f551b.close();
        if (file.exists()) {
            throw new IOException("split file: " + file.getName() + " already exists in the current directory, cannot rename this file");
        }
        if (!this.f553d.renameTo(file)) {
            throw new IOException("cannot rename newly created split file");
        }
        this.f553d = new File(absolutePath);
        this.f551b = new RandomAccessFile(this.f553d, Cg.f.WRITE.a());
        this.f554e++;
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    public h(File file, long j10) throws FileNotFoundException, ZipException {
        this.f556g = new Fg.f();
        if (j10 >= 0 && j10 < 65536) {
            throw new ZipException("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f551b = new RandomAccessFile(file, Cg.f.WRITE.a());
        this.f552c = j10;
        this.f553d = file;
        this.f554e = 0;
        this.f555f = 0L;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 <= 0) {
            return;
        }
        long j10 = this.f552c;
        if (j10 == -1) {
            this.f551b.write(bArr, i10, i11);
            this.f555f += i11;
            return;
        }
        long j11 = this.f555f;
        if (j11 >= j10) {
            l();
            this.f551b.write(bArr, i10, i11);
            this.f555f = i11;
            return;
        }
        long j12 = i11;
        if (j11 + j12 > j10) {
            if (g(bArr)) {
                l();
                this.f551b.write(bArr, i10, i11);
                this.f555f = j12;
                return;
            }
            this.f551b.write(bArr, i10, (int) (this.f552c - this.f555f));
            l();
            RandomAccessFile randomAccessFile = this.f551b;
            long j13 = this.f552c;
            long j14 = this.f555f;
            randomAccessFile.write(bArr, i10 + ((int) (j13 - j14)), (int) (j12 - (j13 - j14)));
            this.f555f = j12 - (this.f552c - this.f555f);
            return;
        }
        this.f551b.write(bArr, i10, i11);
        this.f555f += j12;
    }
}
